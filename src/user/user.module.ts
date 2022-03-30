import { forwardRef, Module } from '@nestjs/common';
import { UserService } from './user.service';
import { User } from './user.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserResolver } from './user.resolver';
import { UserCommand } from './user.command';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { Client } from '../client/client.entity';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { ClientModule } from '../client/client.module';

/**
 * 利用者モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([User, Client]),
    forwardRef(() => AuthModule),
    forwardRef(() => UserDepartmentModule),
    ClientModule,
  ],
  providers: [UserService, UserResolver, UserCommand, AuthService],
  exports: [UserService, UserCommand],
})
export class UserModule {}
