import { Module } from '@nestjs/common';
import { ApprovalEmailService } from './approvalEmail.service';
import { MailService } from '../mail/mail.service';
import { MailModule } from '../mail/mail.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { ApprovalCategory } from '../approvalCategory/approvalCategory.entity';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';

@Module({
  imports: [
    MailModule,
    TypeOrmModule.forFeature([
      UserDepartment,
      ApprovalCategory,
      ApprovalRequest,
    ]),
  ],
  providers: [ApprovalEmailService, MailService],
  exports: [ApprovalEmailService, MailService],
})
export class ApprovalEmailModule {}
