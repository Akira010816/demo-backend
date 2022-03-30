import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ApprovalCategory } from './approvalCategory.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { ApprovalCategoryService } from './approvalCategory.service';
import { SequenceModule } from '../sequence/sequence.module';
import { ApprovalCategoryResolver } from './approvalCategory.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([ApprovalCategory]),
    AuthModule,
    UserModule,
    SequenceModule,
    UserDepartmentModule,
  ],
  providers: [ApprovalCategoryService, ApprovalCategoryResolver, AuthService],
  exports: [ApprovalCategoryService],
})
export class ApprovalCategoryModule {}
