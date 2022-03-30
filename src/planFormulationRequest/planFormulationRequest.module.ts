import { forwardRef, Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PlanFormulationRequestService } from './planFormulationRequest.service';
import { PlanFormulationRequestResolver } from './planFormulationRequest.resolver';
import { PlanFormulationRequest } from './planFormulationRequest.entity';
import { Plan } from '../plan/plan.entity';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { PlanFormulationEmailModule } from '../planFormulationEmail/planFormulationEmail.module';
import { NotificationModule } from '../notification/notification.module';
import { PlanFormulationRequestedListener } from '../planFormulation/listeners/planFormulationRequested.listener';
import { TenancyModule } from '../tenancy/tenancy.module';

/**
 * 事業計画策定依頼モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([PlanFormulationRequest, Plan]),
    forwardRef(() => AuthModule),
    forwardRef(() => UserModule),
    forwardRef(() => SequenceModule),
    forwardRef(() => UserDepartmentModule),
    forwardRef(() => PlanFormulationEmailModule),
    forwardRef(() => NotificationModule),
    TenancyModule,
  ],
  providers: [
    PlanFormulationRequestService,
    PlanFormulationRequestResolver,
    AuthService,
    PlanFormulationRequestedListener,
  ],
  exports: [PlanFormulationRequestService],
})
export class PlanFormulationRequestModule {}
