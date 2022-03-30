import { Field, Float, InputType, Int } from '@nestjs/graphql';
import { PlanMeasureRiskPrice } from './planMeasureRiskPrice.entity';
import { Department } from '../department/department.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Client } from '../client/client.entity';

export const generateCreatePlanMeasureRiskPriceInputFromEntity = (
  price: PlanMeasureRiskPrice,
  clientId: Client['id'],
) => ({
  department: {
    id: price.department.id,
  },
  businessYear: {
    id: price.businessYear.id,
  },
  client: {
    id: clientId,
  },
  yearOfOccurrence: price.yearOfOccurrence,
  monthOfOccurrence: price.monthOfOccurrence,
  cost: price.cost,
});

@InputType()
export class PlanMeasureRiskPriceInput {
  @Field({ nullable: true })
  id?: number;

  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => Int, { nullable: false })
  yearOfOccurrence: PlanMeasureRiskPrice['yearOfOccurrence'];

  @Field(() => Int, { nullable: false })
  monthOfOccurrence: PlanMeasureRiskPrice['monthOfOccurrence'];

  @Field(() => Float, { nullable: false })
  cost: PlanMeasureRiskPrice['cost'];

  @Field({ nullable: true })
  version?: number;
}
