import { Injectable } from '@nestjs/common';
import { PlanFormulationRequestedEvent } from '../events/planFormulationRequested.event';

export const PLAN_FORMULATION_REQUESTED_EVENT_NAME =
  'planFormulation.requested';

@Injectable()
export class PlanFormulationRequestedListener {
  handlePlanFormulationRequestCreatedEvent(
    event: PlanFormulationRequestedEvent,
  ) {
    event.planFormulationEmailService.sendPlanFormulationRequestedEmail(
      event.tenant,
      event.user,
      event.planFormulationRequest,
    );
    event.notificationService.createPlanFormulationRequestNotifications(
      event.tenant,
      event.user,
      event.planFormulationRequest,
    );
  }
}
