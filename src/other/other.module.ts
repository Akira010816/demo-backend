import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Other } from './other.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { OtherService } from './other.service';
import { OtherResolver } from './other.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * その他モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Other]),
    AuthModule,
    UserModule,
    MeasureModule,
    UserDepartmentModule,
  ],
  providers: [OtherService, OtherResolver, AuthService],
  exports: [OtherService],
})
export class OtherModule {}
