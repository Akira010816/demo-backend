import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Todo } from './todo.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { TodoService } from './todo.service';
import { TodoResolver } from './todo.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 目標モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Todo]),
    AuthModule,
    UserModule,
    MeasureModule,
    UserDepartmentModule,
  ],
  providers: [TodoService, TodoResolver, AuthService],
  exports: [TodoService],
})
export class TodoModule {}
