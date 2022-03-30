import { Field, InputType, Int } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Department } from '../department/department.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { PlanMeasureCostPrice } from './planMeasureCostPrice.entity';
import { Client } from '../client/client.entity';

@InputType()
export class PlanMeasureCostPriceInput {
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

  @Field({ nullable: false })
  yearOfOccurrence?: number;

  @Field({ nullable: false })
  monthOfOccurrence?: number;

  @Field({ nullable: false })
  cost?: number;

  @Field({ nullable: true })
  version?: number;
}

@InputType()
export class CreatePlanMeasureCostPriceInput {
  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => Int, { nullable: false })
  yearOfOccurrence: PlanMeasureCostPrice['yearOfOccurrence'];

  @Field(() => Int, { nullable: false })
  monthOfOccurrence: PlanMeasureCostPrice['monthOfOccurrence'];

  @Field(() => Int, { nullable: false })
  cost: PlanMeasureCostPrice['cost'];
}

export const generateCreatePlanMeasureCostPriceInputFromEntity = (
  price: PlanMeasureCostPrice,
  clientId: Client['id'],
) => ({
  client: {
    id: clientId,
  },
  department: {
    id: price.department.id,
  },
  businessYear: {
    id: price.businessYear.id,
  },
  monthOfOccurrence: price.monthOfOccurrence,
  yearOfOccurrence: price.yearOfOccurrence,
  cost: price.cost,
});
