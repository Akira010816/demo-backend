import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlanMeasure } from './planMeasure.entity';
import { PlanMeasureService } from './planMeasure.service';
import { PlanMeasureResolver } from './planMeasure.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { SystemModule } from '../system/system.module';
import { ItAssetTypeModule } from '../itAssetType/itAssetType.module';
import { CauseConditionModule } from '../causeCondition/causeCondition.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { PlanMeasureEffectSaleModule } from '../planMeasureEffectSale/planMeasureEffectSale.module';
import { PlanMeasureCostModule } from '../planMeasureCost/planMeasureCost.module';
import { PlanMeasureRiskModule } from '../planMeasureRisk/planMeasureRisk.module';
import { PlanMeasureTaskModule } from '../planMeasureTask/planMeasureTask.module';
import { BusinessYearModule } from '../businessYear/businessYear.module';
import { PlanFormulationRequest } from '../planFormulationRequest/planFormulationRequest.entity';
import { PlanFormulationEmailModule } from '../planFormulationEmail/planFormulationEmail.module';
import { NotificationModule } from '../notification/notification.module';
import { PlanFormulationCompletedListener } from '../planFormulation/listeners/planFormulationCompleted.listener';
import { PlanMeasureRegistrationCompletedListener } from '../planMeasureRegistration/listeners/planMeasureRegistrationCompleted.listener';
import { PlanMeasureRegistrationRequest } from '../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';
import { TenancyModule } from '../tenancy/tenancy.module';

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([
      PlanMeasure,
      PlanFormulationRequest,
      PlanMeasureRegistrationRequest,
    ]),
    AuthModule,
    UserModule,
    SequenceModule,
    SystemModule,
    ItAssetTypeModule,
    CauseConditionModule,
    UserDepartmentModule,
    PlanMeasureEffectSaleModule,
    PlanMeasureCostModule,
    PlanMeasureRiskModule,
    PlanMeasureTaskModule,
    BusinessYearModule,
    TenancyModule,
    forwardRef(() => PlanFormulationEmailModule),
    forwardRef(() => NotificationModule),
  ],
  providers: [
    PlanMeasureService,
    PlanMeasureResolver,
    AuthService,
    PlanFormulationCompletedListener,
    PlanMeasureRegistrationCompletedListener,
  ],
  exports: [PlanMeasureService],
})
export class PlanMeasureModule {}
