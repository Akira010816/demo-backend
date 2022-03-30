import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { AuthService } from '../auth/auth.service';
import { ApprovedAnnualPlanSnapshotService } from './approvedAnnualPlanSnapshot.service';
import { ApprovedAnnualPlanSnapshotResolver } from './approvedAnnualPlanSnapshot.resolver';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { ApprovedAnnualPlanSnapshot } from './approvedAnnualPlanSnapshot.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([ApprovedAnnualPlanSnapshot, AnnualPlan]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [
    ApprovedAnnualPlanSnapshotService,
    ApprovedAnnualPlanSnapshotResolver,
    AuthService,
  ],
  exports: [ApprovedAnnualPlanSnapshotService],
})
export class ApprovedAnnualPlanSnapshotModule {}
