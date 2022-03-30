import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Investigation } from './investigation.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { InvestigationService } from './investigation.service';
import { InvestigationResolver } from './investigation.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 調査モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Investigation]),
    AuthModule,
    UserModule,
    MeasureModule,
    UserDepartmentModule,
  ],
  providers: [InvestigationService, InvestigationResolver, AuthService],
  exports: [InvestigationService],
})
export class InvestigationModule {}
