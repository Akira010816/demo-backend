import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { EventEmitter2 } from '@nestjs/event-emitter';
import { SequenceService } from '../sequence/sequence.service';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ApproveApprovalStepAssigneeInput,
  CancelApprovalStepAssigneeInput,
  RejectApprovalStepAssigneeInput,
  UpdateApprovalStepAssigneeInput,
} from './approvalStepAssignee.input';
import { ApprovalStepAssignee } from './approvalStepAssignee.entity';
import { APPROVAL_ASSIGNEE_APPROVED_EVENT_NAME } from '../approval/listeners/approvalAssigneeApproved.listener';
import { ApprovalAssigneeApprovedEvent } from '../approval/events/approvalAssigneeApproved.event';
import { APPROVAL_ASSIGNEE_REJECTED_EVENT_NAME } from '../approval/listeners/approvalAssigneeRejected.listener';
import { ApprovalAssigneeRejectedEvent } from '../approval/events/approvalAssigneeRejected.event';
import { APPROVAL_ASSIGNEE_CANCELLED_EVENT_NAME } from '../approval/listeners/approvalAssigneeCancelled.listener';
import { ApprovalAssigneeCancelledEvent } from '../approval/events/approvalAssigneeCancelled.event';

@Injectable()
export class ApprovalStepAssigneeService {
  constructor(
    private readonly sequenceService: SequenceService,
    @InjectRepository(ApprovalStepAssignee)
    private readonly approvalStepAssigneeRepository: Repository<ApprovalStepAssignee>,
    private readonly eventEmitter: EventEmitter2,
  ) {
    this.sequenceService = sequenceService;
    this.approvalStepAssigneeRepository = approvalStepAssigneeRepository;
    this.eventEmitter = eventEmitter;
  }

  async reject(
    user: JWTPayload,
    input: RejectApprovalStepAssigneeInput,
  ): Promise<ApprovalStepAssignee> {
    const { approvalRequestId, ...inputs } = input;

    const approvalStepAssignee = await this.update(user, {
      ...inputs,
      approvalStatus: 'rejected',
    });

    this.eventEmitter.emit(
      APPROVAL_ASSIGNEE_REJECTED_EVENT_NAME,
      new ApprovalAssigneeRejectedEvent(user, approvalRequestId),
    );

    return approvalStepAssignee;
  }

  async approve(
    user: JWTPayload,
    input: ApproveApprovalStepAssigneeInput,
  ): Promise<ApprovalStepAssignee> {
    const { approvalRequestId, ...inputs } = input;

    const approvalStepAssignee = await this.update(user, {
      ...inputs,
      approvalStatus: 'approved',
    });

    this.eventEmitter.emit(
      APPROVAL_ASSIGNEE_APPROVED_EVENT_NAME,
      new ApprovalAssigneeApprovedEvent(user, approvalRequestId),
    );

    return approvalStepAssignee;
  }

  async cancel(
    user: JWTPayload,
    input: CancelApprovalStepAssigneeInput,
  ): Promise<ApprovalStepAssignee> {
    const { approvalRequestId, ...inputs } = input;

    const approvalStepAssignee = await this.update(user, {
      ...inputs,
      approvalStatus: 'canceled',
    });

    this.eventEmitter.emit(
      APPROVAL_ASSIGNEE_CANCELLED_EVENT_NAME,
      new ApprovalAssigneeCancelledEvent(user, approvalRequestId),
    );

    return approvalStepAssignee;
  }

  async update(
    user: JWTPayload,
    input: UpdateApprovalStepAssigneeInput,
  ): Promise<ApprovalStepAssignee> {
    if (!input.id) {
      throw new BadRequestException();
    }

    const client = { id: Number(user.clientId) };
    const approvalStepAssignee = await this.approvalStepAssigneeRepository.findOne(
      input.id,
      {
        where: { client },
      },
    );

    if (!approvalStepAssignee) {
      throw new NotFoundException(input.id);
    }

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    const columns = {
      updatedUserId: user.userId,
      createdUserId: approvalStepAssignee.createdUserId ?? user.userId,
    };

    await this.approvalStepAssigneeRepository.merge(approvalStepAssignee, {
      ...(updateSet.approvalStatus
        ? { ...updateSet, statusChangedAt: new Date() }
        : updateSet),
      ...columns,
      client,
    });

    return await this.approvalStepAssigneeRepository.save(approvalStepAssignee);
  }
}
