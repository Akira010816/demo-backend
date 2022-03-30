import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserDepartmentResolver } from './userDepartment.resolver';
import { UserDepartmentService } from './userDepartment.service';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserDepartment } from './userDepartment.entity';
import { UserModule } from '../user/user.module';
import { Department } from '../department/department.entity';

/**
 * 利用者部署モジュール
 */
@Module({
  imports: [
    forwardRef(() => AuthModule),
    forwardRef(() => UserModule),
    TypeOrmModule.forFeature([UserDepartment, Department]),
  ],
  providers: [AuthService, UserDepartmentResolver, UserDepartmentService],
  exports: [UserDepartmentService],
})
export class UserDepartmentModule {}
