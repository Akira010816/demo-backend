import { Field, InputType, Int } from '@nestjs/graphql';
import { AnnualPlan } from './annualPlan.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { DepartmentLevel } from '../departmentLevel/departmentLevel.entity';

@InputType()
export class FindAnnualPlanByYearInput {
  @Field(() => Int, { nullable: false })
  year: BusinessYear['year'];

  @Field(() => Int, { nullable: false })
  organizationLevel: DepartmentLevel['order'];
}

@InputType()
export class UpdateAnnualPlanInput {
  @Field(() => Int, { nullable: false })
  id: AnnualPlan['id'];

  @Field(() => String, { nullable: true })
  status?: AnnualPlan['status'];
}
@InputType()
export class ApproveAnnualPlanInput {
  @Field(() => Int, { nullable: false })
  id: AnnualPlan['id'];

  @Field({ nullable: true })
  version?: number;
}
@InputType()
export class CancelApprovedAnnualPlanInput {
  @Field(() => Int, { nullable: false })
  id: AnnualPlan['id'];

  @Field({ nullable: true })
  version?: number;
}

@InputType()
export class CreateAnnualPlanInput {
  @Field(() => Int, { nullable: false })
  businessYearId: BusinessYear['id'];
}
