import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { Injectable } from '@nestjs/common';
import { MailService } from '../mail/mail.service';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import { ApprovalCategory } from '../approvalCategory/approvalCategory.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { ApprovalStepAssignee } from '../approvalStepAssignee/approvalStepAssignee.entity';
import { ApprovalStep } from '../approvalStep/approvalStep.entity';
import { ApprovalRequestService } from '../approvalRequest/approvalRequest.service';

@Injectable()
export class ApprovalEmailService {
  constructor(
    private readonly mailService: MailService,
    @InjectRepository(UserDepartment)
    private readonly userDepartmentRepository: Repository<UserDepartment>,
    @InjectRepository(ApprovalCategory)
    private readonly approvalCategoryRepository: Repository<ApprovalCategory>,
    @InjectRepository(ApprovalRequest)
    private readonly approvalRequestRepository: Repository<ApprovalRequest>,
  ) {
    this.mailService = mailService;
    this.userDepartmentRepository = userDepartmentRepository;
    this.approvalCategoryRepository = approvalCategoryRepository;
    this.approvalRequestRepository = approvalRequestRepository;
  }

  /**
   * 承認依頼時に、承認フローの最初の承認依頼者にメールで通知
   */
  async sendApprovalRequestedEmail(
    user: JWTPayload,
    assigneeDepartmentId?: UserDepartment['id'],
    approvalCategoryId?: ApprovalCategory['id'],
  ) {
    if (!assigneeDepartmentId || !approvalCategoryId) {
      return;
    }

    const [category, userToEmail] = await Promise.all([
      this.approvalCategoryRepository.findOne(approvalCategoryId, {
        where: { client: { id: user.clientId } },
        relations: ['approvalEmailTemplate'],
      }),
      this.userDepartmentRepository.findOne(assigneeDepartmentId, {
        where: { client: { id: user.clientId } },
      }),
    ]);

    if (
      !(category && category?.approvalEmailTemplate) ||
      !(userToEmail && userToEmail.user.mailAddress)
    ) {
      return;
    }

    this.mailService.sendMail({
      mailTo: userToEmail.user.mailAddress,
      subject: category.approvalEmailTemplate.requestMessageSubject ?? '',
      message: category.approvalEmailTemplate.requestMessage,
    });
  }

  /**
   * 依頼取消時に、処理中および完了している承認ステップの人達にメールで取消連絡
   * まだ処理していない承認ステップの人への連絡は不要
   */
  async sendApprovalRequestCancellationEmail(
    user: JWTPayload,
    approvalRequestId: ApprovalRequest['id'],
  ) {
    const approvalRequest = await this.approvalRequestRepository.findOne(
      approvalRequestId,
      {
        relations: [
          'approvalCategory',
          'approvalCategory.approvalEmailTemplate',
          'approvalFlow',
          'approvalFlow.approvalSteps',
          'approvalFlow.approvalSteps.approvalStepAssignees',
          'approvalFlow.approvalSteps.approvalStepAssignees.userDepartment',
        ],
        where: {
          client: { id: user.clientId },
        },
      },
    );

    const assigneeEmailAddresses = approvalRequest?.approvalFlow?.approvalSteps
      ?.flatMap((step) =>
        step.approvalStepAssignees
          ?.filter((assignee) => assignee.approvalStatus !== 'processing')
          .map((assignee) => assignee.userDepartment?.user.mailAddress),
      )
      .filter((mailAddress) => !!mailAddress)
      .filter((v, i, a) => a.indexOf(v) === i);

    if (
      !(
        assigneeEmailAddresses?.length &&
        approvalRequest?.approvalCategory?.approvalEmailTemplate
      )
    ) {
      return;
    }

    this.mailService.sendMail({
      mailTo: assigneeEmailAddresses.join(','),
      subject:
        approvalRequest.approvalCategory.approvalEmailTemplate
          .cancelMessageSubject ?? '',
      message:
        approvalRequest.approvalCategory.approvalEmailTemplate.cancelMessage,
    });
  }

  /**
   * 次にメールを送信する担当者を取得
   *
   * @param steps
   * @private
   */
  private getNextAssigneeToEmail(
    steps: Array<ApprovalStep>,
  ): ApprovalStepAssignee | null {
    let targetAssignee = null;

    steps?.forEach((step) => {
      switch (step.type) {
        case 'atLeastOne': {
          const hasSomeoneWithApprovedStatus = step.approvalStepAssignees?.some(
            (assignee) => assignee.approvalStatus === 'approved',
          );
          if (!hasSomeoneWithApprovedStatus) {
            const assigneesWithProcessingStatus = step.approvalStepAssignees?.filter(
              (assignee) =>
                assignee.approvalStatus === 'processing' ||
                assignee.approvalStatus === 'canceled',
            );
            targetAssignee = assigneesWithProcessingStatus?.length
              ? assigneesWithProcessingStatus[0]
              : null;
          }
          break;
        }
        case 'everyone': {
          const assigneesWithRejectedStatus =
            step.approvalStepAssignees?.filter(
              (assignee) => assignee.approvalStatus === 'rejected',
            ) ?? [];
          if (!assigneesWithRejectedStatus.length) {
            const assigneesWithProcessingStatus = step.approvalStepAssignees?.filter(
              (assignee) =>
                assignee.approvalStatus === 'processing' ||
                assignee.approvalStatus === 'canceled',
            );
            targetAssignee = assigneesWithProcessingStatus?.length
              ? assigneesWithProcessingStatus[0]
              : null;
          }
          break;
        }
      }
    });

    return targetAssignee;
  }

  /**
   * 承認時に、承認フローの次の人にメールで通知
   * 承認フローの最後の人が承認した時、承認依頼者にメールで通知
   */
  async sendAssigneeApprovalEmail(
    user: JWTPayload,
    approvalRequestId: ApprovalRequest['id'],
  ) {
    const approvalRequest = await this.approvalRequestRepository.findOne(
      approvalRequestId,
      {
        relations: [
          'requestedBy',
          'approvalCategory',
          'approvalCategory.approvalEmailTemplate',
          'approvalFlow',
          'approvalFlow.approvalSteps',
          'approvalFlow.approvalSteps.approvalStepAssignees',
          'approvalFlow.approvalSteps.approvalStepAssignees.userDepartment',
        ],
        where: {
          client: { id: user.clientId },
        },
      },
    );

    if (!approvalRequest) {
      return;
    }

    const nextAssigneeToEmail = this.getNextAssigneeToEmail(
      approvalRequest.approvalFlow?.approvalSteps ?? [],
    );

    // 次にメールを送信する担当者が存在する場合は、メールを送信
    if (
      nextAssigneeToEmail?.userDepartment?.user.mailAddress &&
      approvalRequest.approvalCategory?.approvalEmailTemplate
    ) {
      this.mailService.sendMail({
        mailTo: nextAssigneeToEmail.userDepartment?.user.mailAddress,
        subject:
          approvalRequest.approvalCategory.approvalEmailTemplate
            .approvalNextMessageSubject ?? '',
        message:
          approvalRequest.approvalCategory.approvalEmailTemplate
            .approvalNextMessage,
      });
    }

    // 承認依頼が承認されている場合は、承認依頼者にメールを送信
    else if (
      ApprovalRequestService.isApproved(approvalRequest) &&
      approvalRequest.requestedBy?.user?.mailAddress &&
      approvalRequest.approvalCategory?.approvalEmailTemplate
    ) {
      this.mailService.sendMail({
        mailTo: approvalRequest.requestedBy?.user.mailAddress,
        subject:
          approvalRequest.approvalCategory.approvalEmailTemplate
            .approvalRequesterMessageSubject ?? '',
        message:
          approvalRequest.approvalCategory.approvalEmailTemplate
            .approvalRequesterMessage,
      });
    }
  }

  /**
   * 却下時に、承認依頼者にメールで通知
   */
  async sendAssigneeRejectionEmail(
    user: JWTPayload,
    approvalRequestId: ApprovalRequest['id'],
  ) {
    const approvalRequest = await this.approvalRequestRepository.findOne(
      approvalRequestId,
      {
        relations: [
          'requestedBy',
          'approvalCategory',
          'approvalCategory.approvalEmailTemplate',
        ],
        where: {
          client: { id: user.clientId },
        },
      },
    );

    if (
      !(
        approvalRequest?.requestedBy?.user?.mailAddress &&
        approvalRequest.approvalCategory?.approvalEmailTemplate
      )
    ) {
      return;
    }

    await this.mailService.sendMail({
      mailTo: approvalRequest.requestedBy.user.mailAddress,
      subject:
        approvalRequest.approvalCategory.approvalEmailTemplate
          .rejectMessageSubject ?? '',
      message:
        approvalRequest.approvalCategory.approvalEmailTemplate.rejectMessage,
    });
  }
}
