import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { BusinessYear } from './businessYear.entity';
import { BusinessYearService } from './businessYear.service';
import { BusinessYearResolver } from './businessYear.resolver';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([BusinessYear]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [BusinessYearService, BusinessYearResolver, AuthService],
  exports: [BusinessYearService],
})
export class BusinessYearModule {}
