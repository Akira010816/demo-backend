import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Cause } from './cause.entity';
import { CauseService } from './cause.service';
import { CauseResolver } from './cause.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Cause]),
    AuthModule,
    UserModule,
    MeasureModule,
    UserDepartmentModule,
  ],
  providers: [CauseService, CauseResolver, AuthService],
  exports: [CauseService],
})
export class CauseModule {}
