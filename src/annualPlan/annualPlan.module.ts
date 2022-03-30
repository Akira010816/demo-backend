import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { AuthService } from '../auth/auth.service';
import { AnnualPlan } from './annualPlan.entity';
import { AnnualPlanService } from './annualPlan.service';
import { AnnualPlanResolver } from './annualPlan.resolver';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { User } from '../user/user.entity';
import { Department } from '../department/department.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { TenancyModule } from '../tenancy/tenancy.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([AnnualPlan, User, Department, BusinessYear]),
    AuthModule,
    UserModule,
    SequenceModule,
    UserDepartmentModule,
    TenancyModule,
  ],
  providers: [AnnualPlanService, AnnualPlanResolver, AuthService],
  exports: [AnnualPlanService],
})
export class AnnualPlanModule {}
