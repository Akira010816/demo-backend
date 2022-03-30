import { Injectable } from '@nestjs/common';
import { OnEvent } from '@nestjs/event-emitter';
import { ApprovalEmailService } from '../../approvalEmail/approvalEmail.service';
import { ApprovalCancelledEvent } from '../events/approvalCancelled.event';

export const APPROVAL_CANCELLED_EVENT_NAME = 'approval.cancelled';

@Injectable()
export class ApprovalCancelledListener {
  constructor(private readonly approvalEmailService: ApprovalEmailService) {
    this.approvalEmailService = approvalEmailService;
  }

  @OnEvent(APPROVAL_CANCELLED_EVENT_NAME)
  handleApprovalCancelledEvent(event: ApprovalCancelledEvent) {
    this.approvalEmailService.sendApprovalRequestCancellationEmail(
      event.user,
      event.approvalRequestId,
    );
  }
}
