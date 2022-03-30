import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PositionService } from './position.service';
import { PositionResolver } from './position.resolver';
import { Position } from './position.entity';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 役職モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Position]),
    forwardRef(() => AuthModule),
    forwardRef(() => UserModule),
    forwardRef(() => UserDepartmentModule),
  ],
  providers: [PositionService, PositionResolver, AuthService],
  exports: [PositionService],
})
export class PositionModule {}
