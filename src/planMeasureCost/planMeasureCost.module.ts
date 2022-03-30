import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlanMeasureCost } from './planMeasureCost.entity';
import { PlanMeasureCostService } from './planMeasureCost.service';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SystemModule } from '../system/system.module';
import { ItAssetTypeModule } from '../itAssetType/itAssetType.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([PlanMeasureCost]),
    AuthModule,
    UserModule,
    SystemModule,
    ItAssetTypeModule,
    UserDepartmentModule,
  ],
  providers: [PlanMeasureCostService, AuthService],
  exports: [PlanMeasureCostService],
})
export class PlanMeasureCostModule {}
