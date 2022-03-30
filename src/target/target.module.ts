import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Target } from '../target/target.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { TargetService } from '../target/target.service';
import { TargetResolver } from '../target/target.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 目標モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Target]),
    AuthModule,
    UserModule,
    MeasureModule,
    UserDepartmentModule,
  ],
  providers: [TargetService, TargetResolver, AuthService],
  exports: [TargetService],
})
export class TargetModule {}
