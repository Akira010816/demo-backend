import { Injectable } from '@nestjs/common';
import { OnEvent } from '@nestjs/event-emitter';
import { ApprovalEmailService } from '../../approvalEmail/approvalEmail.service';
import { ApprovalRequestedEvent } from '../events/approvalRequested.event';
import { NotificationService } from '../../notification/notification.service';

export const APPROVAL_REQUESTED_EVENT_NAME = 'approval.requested';

@Injectable()
export class ApprovalRequestedListener {
  constructor(
    private readonly approvalEmailService: ApprovalEmailService,
    private readonly notificationService: NotificationService,
  ) {
    this.approvalEmailService = approvalEmailService;
    this.notificationService = notificationService;
  }

  @OnEvent(APPROVAL_REQUESTED_EVENT_NAME)
  handleApprovalRequestCreatedEvent(event: ApprovalRequestedEvent) {
    this.approvalEmailService.sendApprovalRequestedEmail(
      event.user,
      event.assigneeDepartmentId,
      event.approvalCategoryId,
    );
    this.notificationService.createApprovalRequestNotification(
      event.user,
      event.assigneeDepartmentId,
      event.approvalRequest,
    );
  }
}
