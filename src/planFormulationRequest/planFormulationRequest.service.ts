import { BadRequestException, Injectable } from '@nestjs/common';
import { EventEmitter2 } from '@nestjs/event-emitter';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { SequenceService } from '../sequence/sequence.service';
import { Plan } from '../plan/plan.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { PlanFormulationRequestedEvent } from '../planFormulation/events/planFormulationRequested.event';
import { PLAN_FORMULATION_REQUESTED_EVENT_NAME } from '../planFormulation/listeners/planFormulationRequested.listener';
import { PlanFormulationRequest } from './planFormulationRequest.entity';
import { CreatePlanFormulationRequestInput } from './planFormulationRequest.input';
import { TenancyService } from '../tenancy/tenancy.service';
import { PlanFormulationRequestedListener } from '../planFormulation/listeners/planFormulationRequested.listener';
import { PlanFormulationEmailService } from '../planFormulationEmail/planFormulationEmail.service';
import { NotificationService } from '../notification/notification.service';

@Injectable()
export class PlanFormulationRequestService {
  constructor(
    private readonly sequenceService: SequenceService,
    @InjectRepository(Plan)
    private readonly planRepository: Repository<Plan>,
    private readonly userDepartmentService: UserDepartmentService,
    private readonly eventEmitter: EventEmitter2,
    private readonly tenancyService: TenancyService,
    private readonly listener: PlanFormulationRequestedListener,
    private readonly planFormulationEmailService: PlanFormulationEmailService,
    private readonly notificationService: NotificationService,
  ) {}

  async create(
    user: JWTPayload,
    input: CreatePlanFormulationRequestInput,
  ): Promise<PlanFormulationRequest> {
    const sequence = await this.sequenceService.getCode(
      'planFormulationReq',
      user.clientId || 0,
    );

    const plan = await this.planRepository.find({
      where: { id: input.planId },
      relations: ['annualPlan'],
    });

    if (plan == undefined || !plan.length) {
      throw new BadRequestException('invalid plan ID');
    }

    const requestedBy = await this.userDepartmentService.findMyUserDepartments(
      user,
    );

    if (!requestedBy.length) {
      throw new BadRequestException('invalid user department ID');
    }

    const requestedTo = await this.userDepartmentService.findByIds(
      input.requestedTo,
    );

    if (requestedTo == undefined || !requestedTo.length) {
      throw new BadRequestException('invalid user department ID');
    }

    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
    };

    const connection = await this.tenancyService.getCurrentConnection();
    const planFormulationRequest = await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        const planFormulationRequests = new PlanFormulationRequest();
        transactionalEntityManager.merge(
          PlanFormulationRequest,
          planFormulationRequests,
          {
            ...columns,
            plan: plan[0],
            requestedBy: requestedBy[0],
            until: input.until,
            requestedTo: requestedTo,
            code: `PLFR-${sequence.nextNumber.toString()}`,
            client,
          },
        );
        return await transactionalEntityManager.save(planFormulationRequests);
      },
    );

    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }

    await this.sequenceService.saveCode(sequence, user.userId || 0);

    // マルチテナント対応に伴いrequest-scopedになってOnEventデコレーターでの
    // 自動リスナー登録が行われなくなった為手動でリスナーを登録。
    // 併せてリスナー側のconstructor()でのDIが効かなくなっており、リスナーが
    // 必要とするサービスクラスはイベントに詰めて渡す。
    this.eventEmitter.addListener(
      PLAN_FORMULATION_REQUESTED_EVENT_NAME,
      this.listener.handlePlanFormulationRequestCreatedEvent,
    );
    this.eventEmitter.emit(
      PLAN_FORMULATION_REQUESTED_EVENT_NAME,
      new PlanFormulationRequestedEvent(
        this.planFormulationEmailService,
        this.notificationService,
        this.tenancyService.getTenantNameFromSubdomain(),
        user,
        planFormulationRequest,
      ),
    );
    this.eventEmitter.removeListener(
      PLAN_FORMULATION_REQUESTED_EVENT_NAME,
      this.listener.handlePlanFormulationRequestCreatedEvent,
    );

    return planFormulationRequest;
  }
}
