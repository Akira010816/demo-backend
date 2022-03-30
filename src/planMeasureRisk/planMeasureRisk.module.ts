import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlanMeasureRisk } from './planMeasureRisk.entity';
import { PlanMeasureRiskService } from './planMeasureRisk.service';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { SystemModule } from '../system/system.module';
import { ItAssetTypeModule } from '../itAssetType/itAssetType.module';
import { CauseConditionModule } from '../causeCondition/causeCondition.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([PlanMeasureRisk]),
    AuthModule,
    UserModule,
    SequenceModule,
    SystemModule,
    ItAssetTypeModule,
    CauseConditionModule,
    UserDepartmentModule,
  ],
  providers: [PlanMeasureRiskService, AuthService],
  exports: [PlanMeasureRiskService],
})
export class PlanMeasureRiskModule {}
