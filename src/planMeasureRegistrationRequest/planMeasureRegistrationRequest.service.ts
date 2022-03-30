import { BadRequestException, Injectable } from '@nestjs/common';
import { EventEmitter2 } from '@nestjs/event-emitter';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { SequenceService } from '../sequence/sequence.service';
import { Plan } from '../plan/plan.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { PlanMeasureRegistrationRequestedEvent } from '../planMeasureRegistration/events/planMeasureRegistrationRequested.event';
import { PLAN_MEASURE_REGISTRATION_REQUESTED_EVENT_NAME } from '../planMeasureRegistration/listeners/planMeasureRegistrationRequested.listener';
import { PlanMeasureRegistrationRequest } from './planMeasureRegistrationRequest.entity';
import { CreatePlanMeasureRegistrationRequestInput } from './planMeasureRegistrationRequest.input';
import { TenancyService } from '../tenancy/tenancy.service';
import { PlanMeasureRegistrationRequestedListener } from '../planMeasureRegistration/listeners/planMeasureRegistrationRequested.listener';
import { PlanFormulationEmailService } from '../planFormulationEmail/planFormulationEmail.service';
import { NotificationService } from '../notification/notification.service';

@Injectable()
export class PlanMeasureRegistrationRequestService {
  constructor(
    private readonly sequenceService: SequenceService,
    @InjectRepository(Plan)
    private readonly planRepository: Repository<Plan>,
    private readonly userDepartmentService: UserDepartmentService,
    private readonly eventEmitter: EventEmitter2,
    private readonly tenancyService: TenancyService,
    private readonly listener: PlanMeasureRegistrationRequestedListener,
    private readonly planFormulationEmailService: PlanFormulationEmailService,
    private readonly notificationService: NotificationService,
  ) {}

  async create(
    user: JWTPayload,
    input: CreatePlanMeasureRegistrationRequestInput,
  ): Promise<PlanMeasureRegistrationRequest> {
    const sequence = await this.sequenceService.getCode(
      'planMeasureRegReq',
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

    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }

    const updateSequence = this.sequenceService.setupCode(
      sequence,
      user.userId || 0,
    );

    const connection = await this.tenancyService.getCurrentConnection();
    const planMeasureRegistrationRequest = await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        transactionalEntityManager.save(updateSequence);
        const planMeasureRegistrationRequest = new PlanMeasureRegistrationRequest();
        transactionalEntityManager.merge(
          PlanMeasureRegistrationRequest,
          planMeasureRegistrationRequest,
          {
            ...columns,
            plan: plan[0],
            requestedBy: requestedBy[0],
            until: input.until,
            requestedTo: requestedTo,
            code: `PMRR-${sequence.nextNumber.toString()}`,
            client,
          },
        );
        return await transactionalEntityManager.save(
          planMeasureRegistrationRequest,
        );
      },
    );

    // マルチテナント対応に伴いrequest-scopedになってOnEventデコレーターでの
    // 自動リスナー登録が行われなくなった為手動でリスナーを登録。
    // 併せてリスナー側のconstructor()でのDIが効かなくなっており、リスナーが
    // 必要とするサービスクラスはイベントに詰めて渡す。
    this.eventEmitter.addListener(
      PLAN_MEASURE_REGISTRATION_REQUESTED_EVENT_NAME,
      this.listener.handlePlanMeasureRegistrationRequestCreatedEvent,
    );
    this.eventEmitter.emit(
      PLAN_MEASURE_REGISTRATION_REQUESTED_EVENT_NAME,
      new PlanMeasureRegistrationRequestedEvent(
        this.planFormulationEmailService,
        this.notificationService,
        this.tenancyService.getTenantNameFromSubdomain(),
        user,
        planMeasureRegistrationRequest,
      ),
    );
    this.eventEmitter.removeListener(
      PLAN_MEASURE_REGISTRATION_REQUESTED_EVENT_NAME,
      this.listener.handlePlanMeasureRegistrationRequestCreatedEvent,
    );

    return planMeasureRegistrationRequest;
  }
}
