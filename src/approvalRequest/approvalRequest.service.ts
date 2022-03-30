import {
  BadRequestException,
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { EventEmitter2 } from '@nestjs/event-emitter';
import { SequenceService } from '../sequence/sequence.service';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  CancelApprovalRequestInput,
  CreateApprovalRequestInput,
  DeleteApprovalRequestInput,
  FindApprovalRequestsRequestedByMeInput,
  UpdateApprovalRequestInput,
} from './approvalRequest.input';
import { ApprovalRequest } from './approvalRequest.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { Sequence } from '../sequence/sequence.entity';
import { ApprovalRequestedEvent } from '../approval/events/approvalRequested.event';
import { APPROVAL_REQUESTED_EVENT_NAME } from '../approval/listeners/approvalRequested.listener';
import { APPROVAL_CANCELLED_EVENT_NAME } from '../approval/listeners/approvalCancelled.listener';
import { ApprovalCancelledEvent } from '../approval/events/approvalCancelled.event';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { TenancyService } from '../tenancy/tenancy.service';

@Injectable()
export class ApprovalRequestService {
  constructor(
    private readonly sequenceService: SequenceService,
    @InjectRepository(ApprovalRequest)
    private readonly approvalRequestRepository: Repository<ApprovalRequest>,
    private readonly eventEmitter: EventEmitter2,
    private readonly userDepartmentService: UserDepartmentService,
    private readonly tenancyService: TenancyService,
  ) {
    this.sequenceService = sequenceService;
    this.approvalRequestRepository = approvalRequestRepository;
    this.eventEmitter = eventEmitter;
    this.userDepartmentService = userDepartmentService;
  }

  async findApprovalRequestsRequestedByMe(
    user: JWTPayload,
    input: FindApprovalRequestsRequestedByMeInput,
  ): Promise<Array<ApprovalRequest>> {
    const userDepartments = await this.userDepartmentService.findMyUserDepartments(
      user,
    );

    if (!userDepartments.length) {
      return [];
    }

    return this.approvalRequestRepository.find({
      join: {
        alias: 'approvalRequest',
        innerJoin: {
          approvalCategory: 'approvalRequest.approvalCategory',
        },
      },
      where: (qb: SelectQueryBuilder<ApprovalRequest>) => {
        qb.where({
          client: { id: user.clientId },
          requestedBy: userDepartments[0].id,
        });

        if (input.approvalCategorySlug) {
          qb.andWhere('approvalCategory.slug = :approvalCategorySlug', {
            approvalCategorySlug: input.approvalCategorySlug,
          });
        }
      },
      order: { id: 'DESC' },
      relations: [
        'approvalCategory',
        'approvalCategory.approvalEmailTemplate',
        'approvalCategory.approvalRequestMessageTemplate',
        'requestedBy',
        'approvalFlow',
        'approvalFlow.approvalSteps',
        'approvalFlow.approvalSteps.department',
        'approvalFlow.approvalSteps.approvalStepAssignees',
        'approvalFlow.approvalSteps.approvalStepAssignees.userDepartment',
      ],
    });
  }

  findApprovalRequestsAssignedToMe(
    user: JWTPayload,
  ): Promise<Array<ApprovalRequest>> {
    return this.approvalRequestRepository.find({
      relations: [
        'approvalCategory',
        'requestedBy',
        'approvalFlow',
        'approvalFlow.approvalSteps',
        'approvalFlow.approvalSteps.department',
        'approvalFlow.approvalSteps.approvalStepAssignees',
        'approvalFlow.approvalSteps.approvalStepAssignees.userDepartment',
      ],
      join: {
        alias: 'approvalRequest',
        innerJoin: {
          approvalFlow: 'approvalRequest.approvalFlow',
          approvalSteps: 'approvalFlow.approvalSteps',
          approvalStepAssignees: 'approvalSteps.approvalStepAssignees',
          userDepartment: 'approvalStepAssignees.userDepartment',
        },
      },
      where: (qb: SelectQueryBuilder<ApprovalRequest>) => {
        qb.where({
          client: { id: user.clientId },
        }).andWhere('userDepartment.user.id = :userId', {
          userId: user.userId,
        });
      },
      order: { id: 'DESC' },
    });
  }

  async create(
    user: JWTPayload,
    input: CreateApprovalRequestInput,
    approvalRequestRepository?: Repository<ApprovalRequest>,
    sequenceRepository?: Repository<Sequence>,
  ): Promise<ApprovalRequest> {
    if (!approvalRequestRepository || !sequenceRepository) {
      throw new BadRequestException('no transaction');
    }

    const userDepartments = await this.userDepartmentService.findMyUserDepartments(
      user,
    );

    if (!userDepartments.length) {
      throw new BadRequestException('invalid user department ID');
    }

    const sequence = await this.sequenceService.getCode(
      'approval_request',
      user.clientId || 0,
      sequenceRepository,
    );
    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
      updatedUserId: user.userId,
    };

    const targetProperties = {
      ...input,
      ...columns,
      requestedBy: { id: userDepartments[0].id },
      code: `APPR-${sequence.nextNumber.toString()}`,
      approvalFlow: {
        ...input.approvalFlow,
        ...columns,
        client,
        approvalSteps: input.approvalFlow.approvalSteps?.map((step) => ({
          ...step,
          ...columns,
          client,
          approvalStepAssignees: step.approvalStepAssignees?.map(
            (assignee) => ({
              ...assignee,
              ...columns,
              client,
            }),
          ),
        })),
      },
      client,
    };

    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }

    const updateSequence = this.sequenceService.setupCode(
      sequence,
      user.userId || 0,
    );

    const connection = await this.tenancyService.getCurrentConnection();
    const approvalRequest = await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        await transactionalEntityManager.save(updateSequence);
        const approvalRequest = new ApprovalRequest();
        transactionalEntityManager.merge(
          ApprovalRequest,
          approvalRequest,
          targetProperties,
        );
        return await transactionalEntityManager.save(approvalRequest);
      },
    );

    this.eventEmitter.emit(
      APPROVAL_REQUESTED_EVENT_NAME,
      new ApprovalRequestedEvent(
        user,
        input.approvalFlow?.approvalSteps?.[0]?.approvalStepAssignees?.[0].userDepartment?.id,
        input?.approvalCategory?.id,
        approvalRequest,
      ),
    );

    return approvalRequest;
  }

  /**
   * 承認取消
   *
   * @param user
   * @param input
   */
  async cancel(
    user: JWTPayload,
    input: CancelApprovalRequestInput,
  ): Promise<ApprovalRequest> {
    const approvalRequest = await this.update(user, {
      ...input,
      status: 'canceled',
    });

    this.eventEmitter.emit(
      APPROVAL_CANCELLED_EVENT_NAME,
      new ApprovalCancelledEvent(user, approvalRequest.id),
    );

    return approvalRequest;
  }

  async update(
    user: JWTPayload,
    input: UpdateApprovalRequestInput,
  ): Promise<ApprovalRequest> {
    if (!input.id) {
      throw new BadRequestException();
    }

    const client = { id: Number(user.clientId) };
    const approvalRequest = await this.approvalRequestRepository.findOne(
      input.id,
      {
        where: { client },
      },
    );

    if (!approvalRequest) {
      throw new NotFoundException(input.id);
    }

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    const columns = {
      updatedUserId: user.userId,
      createdUserId: approvalRequest.createdUserId ?? user.userId,
    };

    await this.approvalRequestRepository.merge(approvalRequest, {
      ...updateSet,
      ...columns,
      client,
    });

    return await this.approvalRequestRepository.save(approvalRequest);
  }

  async delete(
    user: JWTPayload,
    input: DeleteApprovalRequestInput,
  ): Promise<ApprovalRequest> {
    if (!input.id) {
      throw new BadRequestException();
    }

    const audit = { deletedUserId: user.userId, deletedAt: new Date() };
    const client = { id: user.userId };
    const approvalRequest = await this.approvalRequestRepository.findOne({
      where: { id: input.id, client },
    });

    if (!approvalRequest) {
      throw new HttpException('承認依頼がありません', HttpStatus.NOT_FOUND);
    }

    return this.approvalRequestRepository.save({
      ...approvalRequest,
      ...audit,
      client,
    });
  }

  /**
   * 承認依頼が承認されているかどうか
   *
   * @param approvalRequest
   * @private
   */
  public static isApproved(approvalRequest: ApprovalRequest): boolean {
    return (
      approvalRequest?.approvalFlow?.approvalSteps
        ?.map((step) => {
          switch (step.type) {
            case 'atLeastOne': {
              return !!step.approvalStepAssignees?.some(
                (assignee) => assignee.approvalStatus === 'approved',
              );
            }
            case 'everyone': {
              return !!step.approvalStepAssignees?.every(
                (assignee) => assignee.approvalStatus === 'approved',
              );
            }
          }
        })
        .every((isApproved) => isApproved) ?? false
    );
  }
}
