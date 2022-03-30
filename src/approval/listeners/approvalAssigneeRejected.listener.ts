import { Injectable } from '@nestjs/common';
import { OnEvent } from '@nestjs/event-emitter';
import { ApprovalEmailService } from '../../approvalEmail/approvalEmail.service';
import { ApprovalAssigneeRejectedEvent } from '../events/approvalAssigneeRejected.event';

export const APPROVAL_ASSIGNEE_REJECTED_EVENT_NAME =
  'approval.assignee.rejected';

@Injectable()
export class ApprovalAssigneeRejectedListener {
  constructor(private readonly approvalEmailService: ApprovalEmailService) {
    this.approvalEmailService = approvalEmailService;
  }

  @OnEvent(APPROVAL_ASSIGNEE_REJECTED_EVENT_NAME)
  handleApprovalStepRejectedEvent(event: ApprovalAssigneeRejectedEvent) {
    this.approvalEmailService.sendAssigneeRejectionEmail(
      event.user,
      event.approvalRequestId,
    );
  }
}
