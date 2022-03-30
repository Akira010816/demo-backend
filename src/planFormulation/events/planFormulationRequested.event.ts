import { JWTPayload } from '../../auth/jwt.strategy';
import { PlanFormulationRequest } from '../../planFormulationRequest/planFormulationRequest.entity';
import { PlanFormulationEmailService } from '../../planFormulationEmail/planFormulationEmail.service';
import { NotificationService } from '../../notification/notification.service';

export class PlanFormulationRequestedEvent {
  constructor(
    public readonly planFormulationEmailService: PlanFormulationEmailService,
    public readonly notificationService: NotificationService,
    public readonly tenant: string,
    public readonly user: JWTPayload,
    public readonly planFormulationRequest?: PlanFormulationRequest,
  ) {}
}
