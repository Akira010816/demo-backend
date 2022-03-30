import { Injectable } from '@nestjs/common';
import { PlanMeasureRegistrationRequestedEvent } from '../events/planMeasureRegistrationRequested.event';

export const PLAN_MEASURE_REGISTRATION_REQUESTED_EVENT_NAME =
  'planMeasureRegistration.requested';

@Injectable()
export class PlanMeasureRegistrationRequestedListener {
  handlePlanMeasureRegistrationRequestCreatedEvent(
    event: PlanMeasureRegistrationRequestedEvent,
  ) {
    event.planFormulationEmailService.sendPlanMeasureRegistrationRequestedEmail(
      event.tenant,
      event.user,
      event.planMeasureRegistrationRequest,
    );
    event.notificationService.createPlanMeasureRegistrationRequestNotifications(
      event.tenant,
      event.user,
      event.planMeasureRegistrationRequest,
    );
  }
}
