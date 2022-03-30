import { Field, InputType, Int } from '@nestjs/graphql';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';

@InputType()
export class CreateApprovedAnnualPlanSnapshotInput {
  @Field(() => Int, { nullable: false })
  approvedAnnualPlanId: AnnualPlan['id'];
}
