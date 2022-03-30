import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { PlanMeasureTaskService } from './planMeasureTask.service';
import { PlanMeasureTask } from './planMeasureTask.entity';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([PlanMeasureTask]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [PlanMeasureTaskService, AuthService],
  exports: [PlanMeasureTaskService],
})
export class PlanMeasureTaskModule {}
