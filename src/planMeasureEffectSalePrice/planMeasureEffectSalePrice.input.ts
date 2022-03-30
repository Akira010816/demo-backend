import { Field, InputType, Int } from '@nestjs/graphql';
import { PlanMeasureEffectSalePrice } from './planMeasureEffectSalePrice.entity';
import { Department } from '../department/department.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Client } from '../client/client.entity';

@InputType()
export class PlanMeasureEffectSalePriceEstimateValueInput {
  @Field({ nullable: true })
  id?: number;

  @Field(() => [Int], {
    nullable: 'itemsAndList',
  })
  prices?: number[];

  @Field({ nullable: true })
  planMeasureEffectSalePriceId?: number;
}

@InputType()
export class CreatePlanMeasureEffectSalePriceInput {
  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => Int, { nullable: false })
  yearOfOccurrence: PlanMeasureEffectSalePrice['yearOfOccurrence'];

  @Field(() => Int, { nullable: false })
  monthOfOccurrence: PlanMeasureEffectSalePrice['monthOfOccurrence'];

  @Field(() => Int, { nullable: false })
  cost: PlanMeasureEffectSalePrice['cost'];
}

export const generateCreatePlanMeasureEffectSalePriceInputFromEntity = (
  price: PlanMeasureEffectSalePrice,
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
  yearOfOccurrence: price.yearOfOccurrence,
  monthOfOccurrence: price.monthOfOccurrence,
  cost: price.cost,
});

@InputType()
export class PlanMeasureSalePriceInput {
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
  yearOfOccurrence: number;

  @Field({ nullable: false })
  monthOfOccurrence: number;

  @Field({ nullable: false })
  cost: number;

  @Field({ nullable: true })
  version?: number;
}
