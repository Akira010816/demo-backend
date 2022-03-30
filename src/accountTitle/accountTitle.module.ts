import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { AuthService } from '../auth/auth.service';
import { AccountTitle } from './accountTitle.entity';
import { AccountTitleService } from './accountTitle.service';
import { AccountTitleResolver } from './accountTitle.resolver';
import { UserService } from '../user/user.service';
import { User } from '../user/user.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { Department } from '../department/department.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([AccountTitle, User, UserDepartment, Department]),
    AuthModule,
    UserModule,
  ],
  providers: [
    AccountTitleService,
    AccountTitleResolver,
    UserService,
    UserDepartmentService,
    AuthService,
  ],
  exports: [AccountTitleService],
})
export class AccountTitleModule {}
