import { Injectable } from '@nestjs/common';
import { JWTPayload } from '../auth/jwt.strategy';
import { MailService } from '../mail/mail.service';
import { User } from '../user/user.entity';
import { PlanFormulationEmailTemplate } from '../planFormulationEmailTemplate/planFormulationEmailTemplate.entity';
import { PlanFormulationRequest } from '../planFormulationRequest/planFormulationRequest.entity';
import { PlanMeasureRegistrationRequest } from '../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';
import { createConnection, getConnection } from 'typeorm';

@Injectable()
export class PlanFormulationEmailService {
  constructor(private readonly mailService: MailService) {}

  getTemplateId(rawId: number, tenant: string, clientId?: number) {
    if (tenant == 'demo' && clientId != undefined) {
      switch (clientId) {
        case 1:
          return rawId;
        case 100:
          return 1000 + rawId;
        case 101:
          return 1100 + rawId;
        case 102:
          return 1200 + rawId;
        case 103:
          return 1300 + rawId;
        default:
          return rawId;
      }
    } else {
      return rawId;
    }
  }

  async sendPlanFormulationRequestedEmail(
    tenant: string,
    user: JWTPayload,
    planFormulationRequest?: PlanFormulationRequest,
  ) {
    if (!planFormulationRequest) {
      return;
    }

    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const template = await connection
      .getRepository(PlanFormulationEmailTemplate)
      .findOne(this.getTemplateId(1, tenant, user.clientId), {
        where: { client: { id: user.clientId } },
      });

    if (!template) {
      return;
    }

    this.mailService.sendMail({
      mailTo: planFormulationRequest.requestedTo
        .map((value) => value.user.mailAddress)
        .filter((value) => !!value)
        .join(','),
      subject: template.subject ?? '',
      message: template.message
        .replace(
          '${requestedBy}',
          planFormulationRequest.requestedBy.user.name ?? '',
        )
        .replace(
          '${year}',
          planFormulationRequest.plan.annualPlan?.businessYear.year.toString() ??
            '',
        )
        .replace('${host}', process.env.FRONTEND_HOST ?? 'localhost'),
    });
  }

  async sendPlanMeasureRegistrationRequestedEmail(
    tenant: string,
    user: JWTPayload,
    planMeasureRegistrationRequest?: PlanMeasureRegistrationRequest,
  ) {
    if (!planMeasureRegistrationRequest) {
      return;
    }

    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const template = await connection
      .getRepository(PlanFormulationEmailTemplate)
      .findOne(this.getTemplateId(2, tenant, user.clientId), {
        where: { client: { id: user.clientId } },
      });

    if (!template) {
      return;
    }

    this.mailService.sendMail({
      mailTo: planMeasureRegistrationRequest.requestedTo
        .map((value) => value.user.mailAddress)
        .filter((value) => !!value)
        .join(','),
      subject: template.subject ?? '',
      message: template.message
        .replace(
          '${requestedBy}',
          planMeasureRegistrationRequest.requestedBy.user.name ?? '',
        )
        .replace(
          '${year}',
          planMeasureRegistrationRequest.plan.annualPlan?.businessYear.year.toString() ??
            '',
        )
        .replace('${host}', process.env.FRONTEND_HOST ?? 'localhost'),
    });
  }

  async sendPlanMeasureRegistrationCompletedEmail(
    tenant: string,
    user: JWTPayload,
    planMeasureRegistrationRequest?: PlanMeasureRegistrationRequest,
    comment?: string,
  ) {
    if (
      !planMeasureRegistrationRequest ||
      !planMeasureRegistrationRequest.requestedBy.user.mailAddress
    ) {
      return;
    }

    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const planFormulationEmailTemplateRepository = connection.getRepository(
      PlanFormulationEmailTemplate,
    );
    const userRepository = connection.getRepository(User);

    const [template, requestedBy] = await Promise.all([
      planFormulationEmailTemplateRepository.findOne(
        this.getTemplateId(3, tenant, user.clientId),
        {
          where: { client: { id: user.clientId } },
        },
      ),
      userRepository.findOne(user.userId, {
        where: { client: { id: user.clientId } },
      }),
    ]);

    if (
      !template ||
      !requestedBy ||
      !planMeasureRegistrationRequest.requestedBy.user.mailAddress
    ) {
      return;
    }

    this.mailService.sendMail({
      mailTo: planMeasureRegistrationRequest.requestedBy.user.mailAddress,
      subject: template.subject ?? '',
      message: `${template.message
        .replace('${requestedBy}', requestedBy.name ?? '')
        .replace(
          '${year}',
          planMeasureRegistrationRequest.plan.annualPlan?.businessYear.year.toString() ??
            '',
        )
        .replace('${host}', process.env.FRONTEND_HOST ?? 'localhost')}${
        comment ? `\n\n[コメント]\n${comment}` : ''
      }`,
    });
  }

  async sendPlanFormulationCompletedEmail(
    tenant: string,
    user: JWTPayload,
    planFormulationRequest?: PlanFormulationRequest,
  ) {
    if (
      !planFormulationRequest ||
      !planFormulationRequest.requestedBy.user.mailAddress
    ) {
      return;
    }

    const connection = getConnection(tenant).isConnected
      ? getConnection(tenant)
      : await createConnection(tenant);
    const planFormulationEmailTemplateRepository = connection.getRepository(
      PlanFormulationEmailTemplate,
    );
    const userRepository = connection.getRepository(User);

    const [template, requestedBy] = await Promise.all([
      planFormulationEmailTemplateRepository.findOne(
        this.getTemplateId(4, tenant, user.clientId),
        {
          where: { client: { id: user.clientId } },
        },
      ),
      userRepository.findOne(user.userId, {
        where: { client: { id: user.clientId } },
      }),
    ]);

    if (
      !template ||
      !requestedBy ||
      !planFormulationRequest.requestedBy.user.mailAddress
    ) {
      return;
    }

    this.mailService.sendMail({
      mailTo: planFormulationRequest.requestedBy.user.mailAddress,
      subject: template.subject ?? '',
      message: template.message
        .replace('${requestedBy}', requestedBy.name ?? '')
        .replace(
          '${year}',
          planFormulationRequest.plan.annualPlan?.businessYear.year.toString() ??
            '',
        )
        .replace('${host}', process.env.FRONTEND_HOST ?? 'localhost'),
    });
  }
}
