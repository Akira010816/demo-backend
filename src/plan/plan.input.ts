import { Field, Float, InputType, Int } from '@nestjs/graphql';
import { Department } from '../department/department.entity';
import { Plan, PlanStatus } from './plan.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { DepartmentLevel } from '../departmentLevel/departmentLevel.entity';

@InputType()
export class FindPlansByOrganizationLevelInput {
  @Field(() => Int, { nullable: false })
  level: DepartmentLevel['order'];
}

@InputType()
export class FindPlanByDepartmentIdAndBusinessYearInput {
  @Field(() => Int, { nullable: false })
  departmentId: Department['id'];

  @Field(() => Int, { nullable: false })
  businessYear: BusinessYear['year'];
}

@InputType()
export class UpdatePlanInput {
  @Field(() => Int, { nullable: false })
  id: Plan['id'];

  @Field(() => String, { nullable: true })
  status?: PlanStatus;

  @Field(() => Float, { nullable: true })
  targetSales?: Plan['targetSales'];

  @Field(() => Float, { nullable: true })
  deemedSales?: Plan['deemedSales'];

  @Field(() => Float, { nullable: true })
  targetSalesCost?: Plan['targetSalesCost'];

  @Field(() => Float, { nullable: true })
  targetSellingExpense?: Plan['targetSellingExpense'];

  @Field(() => Float, { nullable: true })
  targetGeneralAdministrativeExpense?: Plan['targetGeneralAdministrativeExpense'];

  @Field({ nullable: true })
  version?: number;
}

@InputType()
export class UpdatePlansInput {
  @Field(() => [UpdatePlanInput], { nullable: false })
  plans: Array<UpdatePlanInput>;
}

@InputType()
export class ConfirmPlanInput {
  @Field(() => Int, { nullable: false })
  id: Plan['id'];
}

@InputType()
export class ConfirmPlansInput {
  @Field(() => [ConfirmPlanInput], { nullable: false })
  plans: Array<ConfirmPlanInput>;
}
@InputType()
export class CreatePlanInput {
  @Field(() => Int, { nullable: false })
  departmentId: Department['id'];

  @Field(() => String, { nullable: true })
  status?: PlanStatus;

  @Field(() => Float, { nullable: true })
  targetSales?: Plan['targetSales'];

  @Field(() => Float, { nullable: true })
  deemedSales?: Plan['deemedSales'];

  @Field(() => Float, { nullable: true })
  targetSalesCost?: Plan['targetSalesCost'];

  @Field(() => Float, { nullable: true })
  targetSellingExpense?: Plan['targetSellingExpense'];

  @Field(() => Float, { nullable: true })
  targetGeneralAdministrativeExpense?: Plan['targetGeneralAdministrativeExpense'];

  @Field(() => Int, { nullable: false })
  annualPlanId: AnnualPlan['id'];
}

@InputType()
export class CreatePlansInput {
  @Field(() => [CreatePlanInput], { nullable: false })
  plans: Array<CreatePlanInput>;
}
