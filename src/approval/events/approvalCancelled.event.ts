import { ApprovalRequest } from 'src/approvalRequest/approvalRequest.entity';
import { JWTPayload } from '../../auth/jwt.strategy';

export class ApprovalCancelledEvent {
  constructor(
    public readonly user: JWTPayload,
    public readonly approvalRequestId: ApprovalRequest['id'],
  ) {
    this.user = user;
    this.approvalRequestId = approvalRequestId;
  }
}
