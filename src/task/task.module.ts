import { Module } from '@nestjs/common';
import { TaskService } from './task.service';
import { Task } from './task.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TaskResolver } from './task.resolver';
import { AuthService } from '../auth/auth.service';
import { SequenceModule } from '../sequence/sequence.module';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { IssueModule } from '../issue/issue.module';
import { ProjectModule } from 'src/project/project.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { TenancyModule } from 'src/tenancy/tenancy.module'; // P2FW-443

/**
 * 課題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Task]),
    SequenceModule,
    AuthModule,
    UserModule,
    MeasureModule,
    IssueModule,
    ProjectModule,
    UserDepartmentModule,
    TenancyModule,
  ],
  providers: [TaskService, TaskResolver, AuthService],
  exports: [TaskService],
})
export class TaskModule {}
