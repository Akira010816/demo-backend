import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ApprovalStepAssignee } from './approvalStepAssignee.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { ApprovalStepAssigneeService } from './approvalStepAssignee.service';
import { SequenceModule } from '../sequence/sequence.module';
import { ApprovalStepAssigneeResolver } from './approvalStepAssignee.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([ApprovalStepAssignee]),
    AuthModule,
    UserModule,
    SequenceModule,
    UserDepartmentModule,
  ],
  providers: [
    ApprovalStepAssigneeService,
    ApprovalStepAssigneeResolver,
    AuthService,
  ],
  exports: [ApprovalStepAssigneeService],
})
export class ApprovalStepAssigneeModule {}
