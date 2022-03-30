import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlanMeasureRegistrationRequestService } from './planMeasureRegistrationRequest.service';
import { PlanMeasureRegistrationRequestResolver } from './planMeasureRegistrationRequest.resolver';
import { PlanMeasureRegistrationRequest } from './planMeasureRegistrationRequest.entity';
import { Plan } from '../plan/plan.entity';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { PlanFormulationEmailModule } from '../planFormulationEmail/planFormulationEmail.module';
import { NotificationModule } from '../notification/notification.module';
import { PlanMeasureRegistrationRequestedListener } from '../planMeasureRegistration/listeners/planMeasureRegistrationRequested.listener';
import { TenancyModule } from '../tenancy/tenancy.module';

/**
 * 施策登録依頼モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([PlanMeasureRegistrationRequest, Plan]),
    forwardRef(() => AuthModule),
    forwardRef(() => UserModule),
    forwardRef(() => SequenceModule),
    forwardRef(() => UserDepartmentModule),
    forwardRef(() => PlanFormulationEmailModule),
    forwardRef(() => NotificationModule),
    TenancyModule,
  ],
  providers: [
    PlanMeasureRegistrationRequestService,
    PlanMeasureRegistrationRequestResolver,
    AuthService,
    PlanMeasureRegistrationRequestedListener,
  ],
  exports: [PlanMeasureRegistrationRequestService],
})
export class PlanMeasureRegistrationRequestModule {}
