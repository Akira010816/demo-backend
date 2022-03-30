import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { DepartmentResolver } from './department.resolver';
import { DepartmentService } from './department.service';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { Department } from '../department/department.entity';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 組織モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Department]),
    forwardRef(() => AuthModule),
    forwardRef(() => UserModule),
    forwardRef(() => UserDepartmentModule),
  ],
  providers: [AuthService, DepartmentResolver, DepartmentService],
  exports: [DepartmentService],
})
export class DepartmentModule {}
