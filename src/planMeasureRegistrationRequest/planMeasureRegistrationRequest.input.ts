import { Field, InputType, Int } from '@nestjs/graphql';
import { PlanMeasureRegistrationRequest } from './planMeasureRegistrationRequest.entity';

@InputType()
export class CreatePlanMeasureRegistrationRequestInput {
  @Field({ nullable: true })
  planId?: number;

  @Field(() => String, { nullable: true })
  until?: PlanMeasureRegistrationRequest['until'];

  @Field(() => [Int], { nullable: 'itemsAndList' })
  requestedTo?: number[];
}
