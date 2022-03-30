import { Injectable } from '@nestjs/common';
import { OnEvent } from '@nestjs/event-emitter';
import { ApprovalEmailService } from '../../approvalEmail/approvalEmail.service';
import { ApprovalAssigneeApprovedEvent } from '../events/approvalAssigneeApproved.event';

export const APPROVAL_ASSIGNEE_APPROVED_EVENT_NAME =
  'approval.assignee.approved';

@Injectable()
export class ApprovalAssigneeApprovedListener {
  constructor(private readonly approvalEmailService: ApprovalEmailService) {
    this.approvalEmailService = approvalEmailService;
  }

  @OnEvent(APPROVAL_ASSIGNEE_APPROVED_EVENT_NAME)
  handleApprovalStepApprovedEvent(event: ApprovalAssigneeApprovedEvent) {
    this.approvalEmailService.sendAssigneeApprovalEmail(
      event.user,
      event.approvalRequestId,
    );
  }
}
