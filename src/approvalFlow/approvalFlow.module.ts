import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { ApprovalFlow } from './approvalFlow.entity';
import { ApprovalFlowService } from './approvalFlow.service';
import { ApprovalFlowResolver } from './approvalFlow.resolver';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 承認経路モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([ApprovalFlow]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [ApprovalFlowService, ApprovalFlowResolver, AuthService],
  exports: [ApprovalFlowService],
})
export class ApprovalFlowModule {}
