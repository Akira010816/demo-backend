import { JWTPayload } from '../../auth/jwt.strategy';
import { ApprovalCategory } from '../../approvalCategory/approvalCategory.entity';
import { UserDepartment } from '../../userDepartment/userDepartment.entity';
import { ApprovalRequest } from '../../approvalRequest/approvalRequest.entity';

export class ApprovalRequestedEvent {
  constructor(
    public readonly user: JWTPayload,
    public readonly assigneeDepartmentId?: UserDepartment['id'],
    public readonly approvalCategoryId?: ApprovalCategory['id'],
    public readonly approvalRequest?: ApprovalRequest,
  ) {
    this.user = user;
    this.assigneeDepartmentId = assigneeDepartmentId;
    this.approvalCategoryId = approvalCategoryId;
    this.approvalRequest = approvalRequest;
  }
}
