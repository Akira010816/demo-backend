import { JWTPayload } from '../../auth/jwt.strategy';
import { ApprovalRequest } from '../../approvalRequest/approvalRequest.entity';

export class ApprovalAssigneeCancelledEvent {
  constructor(
    public readonly user: JWTPayload,
    public readonly approvalRequestId: ApprovalRequest['id'],
  ) {
    this.user = user;
    this.approvalRequestId = approvalRequestId;
  }
}
