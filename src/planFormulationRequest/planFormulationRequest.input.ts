import { Field, InputType, Int } from '@nestjs/graphql';
import { PlanFormulationRequest } from './planFormulationRequest.entity';

@InputType()
export class CreatePlanFormulationRequestInput {
  @Field({ nullable: true })
  planId?: number;

  @Field(() => String, { nullable: true })
  until?: PlanFormulationRequest['until'];

  @Field(() => [Int], { nullable: 'itemsAndList' })
  requestedTo?: number[];
}
