import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { Notification } from './notification.entity';
import { SeeNotificationInput } from './notification.input';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';
import dayjs from 'dayjs';
import { NotificationTemplate } from '../notificationTemplate/notificationTemplate.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { PlanFormulationRequest } from '../planFormulationRequest/planFormulationRequest.entity';
import { PlanMeasureRegistrationRequest } from '../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';
import { createConnection, getConnection } from 'typeorm';

@Injectable()
export class NotificationService {
  constructor(
    @InjectRepository(Notification)
    private readonly notificationRepository: Repository<Notification>,
    @InjectRepository(NotificationTemplate)
    private readonly notificationTemplateRepository: Repository<NotificationTemplate>,
    private readonly userDepartmentService: UserDepartmentService,
  ) {}

  async findNotificationsToMe(user: JWTPayload): Promise<Array<Notification>> {
    return this.notificationRepository.find({
      where: {
        notifyTo: { id: user.userDepartmentId },
      },
      relations: ['notifyTo', 'raisedBy', 'template'],
      order: {
        notifyDate: 'DESC',
      },
    });
  }

  async findUnreadNotificationNumber(user: JWTPayload): Promise<number> {
    const result = await this.notificationRepository.findAndCount({
      where: {
        notifyTo: { id: user.userDepartmentId },
        isSeen: false,
      },
    });
    return result[1];
  }

  async see(input: SeeNotificationInput): Promise<Notification> {
    return this.notificationRepository.save({ id: input.id, isSeen: true });
  }

  async createApprovalRequestNotification(
    user: JWTPayload,
    notifyToId?: UserDepartment['id'],
    approvalRequest?: ApprovalRequest,
  ) {
    if (!notifyToId || !approvalRequest)
      throw new BadRequestException('Invalid args to notify AR');
    const userDepartments = await this.userDepartmentService.findMyUserDepartments(
      user,
    );
    const template = await this.notificationTemplateRepository.findOne({
      type: 'approvalRequest',
      client: { id: user.clientId },
    });
    return this.notificationRepository.create({
      raisedBy: userDepartments[0],
      notifyTo: { id: notifyToId },
      notifyDate: dayjs().format('YYYY-MM-DD HH:mm:ss.SSS'),
      template: template,
      message: template?.body?.replace(
        '${raisedBy}',
        userDepartments[0].user.name ?? '',
      ),
      link: `/approvals?code=${approvalRequest?.code}`,
      client: { id: user.clientId },
    });
  }

  async createPlanFormulationRequestNotifications(
    tenant: string,
    user: JWTPayload,
    planFormulationRequest?: PlanFormulationRequest,
  ) {
    if (!planFormulationRequest)
      throw new BadRequestException('Invalid args to notify PLFR');
    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const template = await connection
      .getRepository(NotificationTemplate)
      .findOne({
        type: 'planFormulationRequest',
        client: { id: user.clientId },
      });
    const notifications: Notification[] = [];
    for (let i = 0; i < planFormulationRequest.requestedTo.length; i++) {
      const notification = await connection.getRepository(Notification).save({
        raisedBy: planFormulationRequest.requestedBy,
        notifyTo: planFormulationRequest.requestedTo[i],
        notifyDate: dayjs().format('YYYY-MM-DD HH:mm:ss.SSS'),
        template: template,
        message: template?.body
          ?.replace(
            '${raisedBy}',
            planFormulationRequest.requestedBy.user.name ?? '',
          )
          .replace(
            '${year}',
            planFormulationRequest.plan.annualPlan?.businessYear.year.toString() ??
              '',
          ),
        client: { id: user.clientId },
      });
      notifications.push(notification);
    }
    return notifications;
  }

  async createPlanMeasureRegistrationRequestNotifications(
    tenant: string,
    user: JWTPayload,
    planMeasureRegistrationRequest?: PlanMeasureRegistrationRequest,
  ) {
    if (!planMeasureRegistrationRequest)
      throw new BadRequestException('Invalid args to notify PMRR');
    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const template = await connection
      .getRepository(NotificationTemplate)
      .findOne({
        type: 'planMeasureRegistrationRequest',
        client: { id: user.clientId },
      });
    const notifications: Notification[] = [];
    for (
      let i = 0;
      i < planMeasureRegistrationRequest.requestedTo.length;
      i++
    ) {
      const notification = await connection.getRepository(Notification).save({
        raisedBy: planMeasureRegistrationRequest.requestedBy,
        notifyTo: planMeasureRegistrationRequest.requestedTo[i],
        notifyDate: dayjs().format('YYYY-MM-DD HH:mm:ss.SSS'),
        template: template,
        message: template?.body
          ?.replace(
            '${raisedBy}',
            planMeasureRegistrationRequest.requestedBy.user.name ?? '',
          )
          .replace(
            '${year}',
            planMeasureRegistrationRequest.plan.annualPlan?.businessYear.year.toString() ??
              '',
          ),
        client: { id: user.clientId },
      });
      notifications.push(notification);
    }
    return notifications;
  }

  async createPlanMeasureRegistrationCompletedNotification(
    tenant: string,
    user: JWTPayload,
    planMeasureRegistrationRequest: PlanMeasureRegistrationRequest,
  ): Promise<Notification> {
    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);

    const myUserDepartment = await connection
      .getRepository(UserDepartment)
      .findOne(user.userDepartmentId, {
        where: { client: { id: user.clientId } },
      });

    const template = await connection
      .getRepository(NotificationTemplate)
      .findOne({
        type: 'planMeasureRegistrationCompleted',
        client: { id: user.clientId },
      });

    return await connection.getRepository(Notification).save({
      raisedBy: myUserDepartment,
      notifyTo: planMeasureRegistrationRequest.requestedBy,
      notifyDate: dayjs().format('YYYY-MM-DD HH:mm:ss.SSS'),
      template: template,
      message: template?.body
        ?.replace('${raisedBy}', myUserDepartment?.user.name ?? '')
        .replace(
          '${year}',
          planMeasureRegistrationRequest.plan.annualPlan?.businessYear.year.toString() ??
            '',
        ),
      client: { id: user.clientId },
    });
  }

  async createPlanFormulationCompletionNotification(
    tenant: string,
    user: JWTPayload,
    planFormulationRequest?: PlanFormulationRequest,
  ) {
    if (!planFormulationRequest)
      throw new BadRequestException('Invalid args to notify PLFR');
    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const myUserDepartment = await connection
      .getRepository(UserDepartment)
      .findOne(user.userDepartmentId, {
        where: { client: { id: user.clientId } },
      });
    const template = await connection
      .getRepository(NotificationTemplate)
      .findOne({
        type: 'planFormulationCompleted',
        client: { id: user.clientId },
      });
    const notification = await connection.getRepository(Notification).save({
      raisedBy: myUserDepartment,
      notifyTo: planFormulationRequest.requestedBy,
      notifyDate: dayjs().format('YYYY-MM-DD HH:mm:ss.SSS'),
      template: template,
      message: template?.body
        ?.replace('${raisedBy}', myUserDepartment?.user.name ?? '')
        .replace(
          '${year}',
          planFormulationRequest.plan.annualPlan?.businessYear.year.toString() ??
            '',
        ),
      client: { id: user.clientId },
    });
    return notification;
  }
}
