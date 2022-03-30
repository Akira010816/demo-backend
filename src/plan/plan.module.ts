import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { AuthService } from '../auth/auth.service';
import { Plan } from './plan.entity';
import { PlanService } from './plan.service';
import { PlanResolver } from './plan.resolver';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { Department } from '../department/department.entity';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { TenancyModule } from '../tenancy/tenancy.module';

@Module({
  imports: [
    TypeOrmModule.forFeature([Plan, Department, AnnualPlan]),
    AuthModule,
    UserModule,
    SequenceModule,
    UserDepartmentModule,
    TenancyModule,
  ],
  providers: [PlanService, PlanResolver, AuthService],
  exports: [PlanService],
})
export class PlanModule {}
