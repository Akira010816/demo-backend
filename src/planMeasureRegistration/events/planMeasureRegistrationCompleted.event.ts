import { JWTPayload } from '../../auth/jwt.strategy';
import { PlanMeasureRegistrationRequest } from '../../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';
import { PlanFormulationEmailService } from '../../planFormulationEmail/planFormulationEmail.service';
import { NotificationService } from '../../notification/notification.service';

export class PlanMeasureRegistrationCompletedEvent {
  constructor(
    public readonly planFormulationEmailService: PlanFormulationEmailService,
    public readonly notificationService: NotificationService,
    public readonly tenant: string,
    public readonly user: JWTPayload,
    public readonly planMeasureRegistrationRequest: PlanMeasureRegistrationRequest,
    public readonly comment?: string,
  ) {}
}
