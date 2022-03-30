import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ApprovalRequest } from './approvalRequest.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { ApprovalRequestService } from './approvalRequest.service';
import { SequenceModule } from '../sequence/sequence.module';
import { ApprovalRequestResolver } from './approvalRequest.resolver';
import { AuthService } from '../auth/auth.service';
import { ApprovalRequestedListener } from '../approval/listeners/approvalRequested.listener';
import { ApprovalEmailModule } from '../approvalEmail/approvalEmail.module';
import { ApprovalCancelledListener } from '../approval/listeners/approvalCancelled.listener';
import { ApprovalAssigneeCancelledListener } from '../approval/listeners/approvalAssigneeCancelled.listener';
import { ApprovalAssigneeRejectedListener } from '../approval/listeners/approvalAssigneeRejected.listener';
import { ApprovalAssigneeApprovedListener } from '../approval/listeners/approvalAssigneeApproved.listener';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { NotificationModule } from '../notification/notification.module';
import { TenancyModule } from '../tenancy/tenancy.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([ApprovalRequest]),
    AuthModule,
    UserModule,
    SequenceModule,
    ApprovalEmailModule,
    UserDepartmentModule,
    NotificationModule,
    TenancyModule,
  ],
  providers: [
    ApprovalRequestService,
    ApprovalRequestResolver,
    AuthService,
    ApprovalRequestedListener,
    ApprovalCancelledListener,
    ApprovalAssigneeCancelledListener,
    ApprovalAssigneeRejectedListener,
    ApprovalAssigneeApprovedListener,
  ],
  exports: [ApprovalRequestService],
})
export class ApprovalRequestModule {}
