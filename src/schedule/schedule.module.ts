import { Module } from '@nestjs/common';
import { ScheduleService } from './schedule.service';
import { ScheduleResolver } from './schedule.resolver';

import { TypeOrmModule } from '@nestjs/typeorm';
import { User } from '../user/user.entity';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { Department } from '../department/department.entity';
import { TaskModule } from '../task/task.module';
import { ProjectModule } from '../project/project.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * スケジュールモジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([User, Department]),
    AuthModule,
    UserModule,
    ProjectModule,
    TaskModule,
    UserDepartmentModule,
  ],
  providers: [AuthService, ScheduleService, ScheduleResolver],
})
export class ScheduleModule {}
