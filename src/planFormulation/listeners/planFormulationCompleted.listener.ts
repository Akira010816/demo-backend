import { Injectable } from '@nestjs/common';
import { PlanFormulationCompletedEvent } from '../events/planFormulationCompleted.event';

export const PLAN_FORMULATION_COMPLETED_EVENT_NAME =
  'planFormulation.completed';

@Injectable()
export class PlanFormulationCompletedListener {
  handlePlanFormulationRequestCompletedEvent(
    event: PlanFormulationCompletedEvent,
  ) {
    event.planFormulationEmailService.sendPlanFormulationCompletedEmail(
      event.tenant,
      event.user,
      event.planFormulationRequest,
    );
    event.notificationService.createPlanFormulationCompletionNotification(
      event.tenant,
      event.user,
      event.planFormulationRequest,
    );
  }
}
