import { Injectable } from '@nestjs/common';
import { createTransport } from 'nodemailer';
import { SmtpOptions } from 'nodemailer-smtp-transport';
import { SendMailResult } from './mail.input';

export interface MailRequest {
  readonly mailTo: string;
  readonly subject: string;
  readonly message: string;
}

/**
 * mail service
 */
@Injectable()
export class MailService {
  /**
   * メール送信
   * @returns メッセージID
   */
  async sendMail(req: MailRequest): Promise<SendMailResult> {
    const smtpEndpoint = process.env.SMTP_HOST;
    const port = process.env.SMTP_PORT;
    const smtpUsername = process.env.SMTP_USER;
    const smtpPassword = process.env.SMTP_PASSWORD;
    const useTls = process.env.USE_TLS == 'true';
    const mailFrom = process.env.MAIL_FROM;

    // SMTPサーバの設定
    const smtpOption: SmtpOptions = {
      host: smtpEndpoint,
      port: Number(port),
      secure: useTls,
      ignoreTLS: !useTls,
      auth: {
        user: smtpUsername,
        pass: smtpPassword,
      },
    };
    const smtp = createTransport(smtpOption);

    const message = {
      from: mailFrom,
      to: req.mailTo,
      subject: req.subject,
      text: req.message,
    };

    const info = await smtp.sendMail(message);
    console.log('Message sent! Message ID: ', info.messageId);

    return new SendMailResult(info.messageId);
  }
}
