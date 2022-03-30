import { Injectable } from '@nestjs/common';
import { PlanMeasureRegistrationCompletedEvent } from '../events/planMeasureRegistrationCompleted.event';

export const PLAN_MEASURE_REGISTRATION_COMPLETED_EVENT_NAME =
  'planMeasureRegistration.completed';

@Injectable()
export class PlanMeasureRegistrationCompletedListener {
  async handlePlanMeasureRegistrationCompletedEvent(
    event: PlanMeasureRegistrationCompletedEvent,
  ) {
    event.planFormulationEmailService.sendPlanMeasureRegistrationCompletedEmail(
      event.tenant,
      event.user,
      event.planMeasureRegistrationRequest,
      event.comment,
    );

    event.notificationService.createPlanMeasureRegistrationCompletedNotification(
      event.tenant,
      event.user,
      event.planMeasureRegistrationRequest,
    );
  }
}
