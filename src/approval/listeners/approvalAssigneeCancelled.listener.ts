import { Injectable, Logger } from '@nestjs/common';
import { OnEvent } from '@nestjs/event-emitter';
import { ApprovalEmailService } from '../../approvalEmail/approvalEmail.service';
import { ApprovalAssigneeCancelledEvent } from '../events/approvalAssigneeCancelled.event';

export const APPROVAL_ASSIGNEE_CANCELLED_EVENT_NAME =
  'approval.assignee.cancelled';

@Injectable()
export class ApprovalAssigneeCancelledListener {
  constructor(private readonly approvalEmailService: ApprovalEmailService) {
    this.approvalEmailService = approvalEmailService;
  }

  @OnEvent(APPROVAL_ASSIGNEE_CANCELLED_EVENT_NAME)
  // eslint-disable-next-line @typescript-eslint/no-empty-function
  handleApprovalStepCancelledEvent(event: ApprovalAssigneeCancelledEvent) {
    Logger.log(event);
  }
}
