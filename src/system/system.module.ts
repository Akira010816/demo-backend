import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { System } from './system.entity';
import { SystemService } from './system.service';
import { SystemResolver } from './system.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * システムモジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([System]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [SystemService, SystemResolver, AuthService],
  exports: [SystemService],
})
export class SystemModule {}
