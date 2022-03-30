import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Issue } from './issue.entity';
import { IssueService } from './issue.service';
import { IssueResolver } from './issue.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Issue]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [IssueService, IssueResolver, AuthService],
  exports: [IssueService],
})
export class IssueModule {}
