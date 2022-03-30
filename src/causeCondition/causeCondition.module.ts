import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { CauseCondition } from './causeCondition.entity';
import { CauseConditionService } from './causeCondition.service';
import { CauseConditionResolver } from './causeCondition.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([CauseCondition]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [CauseConditionService, CauseConditionResolver, AuthService],
  exports: [CauseConditionService],
})
export class CauseConditionModule {}
