import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlanFormulationEmailService } from './planFormulationEmail.service';
import { MailModule } from '../mail/mail.module';
import { MailService } from '../mail/mail.service';
import { User } from '../user/user.entity';
import { PlanFormulationEmailTemplate } from '../planFormulationEmailTemplate/planFormulationEmailTemplate.entity';

@Module({
  imports: [
    MailModule,
    TypeOrmModule.forFeature([User, PlanFormulationEmailTemplate]),
  ],
  providers: [PlanFormulationEmailService, MailService],
  exports: [PlanFormulationEmailService, MailService],
})
export class PlanFormulationEmailModule {}
