import { Resolver, Args, Mutation } from '@nestjs/graphql';
import { MailService, MailRequest } from './mail.service';
import { SendMailInput, SendMailResult } from './mail.input';

@Resolver('Mail')
export class MailResolver {
  constructor(private readonly mailService: MailService) {}
  @Mutation(() => SendMailResult)
  async sendMail(
    @Args('sendMailInput') sendMailInput: SendMailInput,
  ): Promise<SendMailResult> {
    const req: MailRequest = {
      mailTo: 'no-reply-demo@YYY.jp',
      subject: '送信テスト',
      message: 'これはテストメールです:' + sendMailInput.loginId,
    };
    const mid = this.mailService.sendMail(req);
    return mid;
  }
}
