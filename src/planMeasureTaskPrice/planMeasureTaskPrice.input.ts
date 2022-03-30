import { Field, InputType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { BusinessYear } from 'src/businessYear/businessYear.entity';
import { Client } from 'src/client/client.entity';
import { Department } from 'src/department/department.entity';
import { PlanMeasureTaskPrice } from './planMeasureTaskPrice.entity';

@InputType()
export class PlanMeasureTaskPriceInput {
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

export const generateCreatePlanMeasureTaskCostInputFromEntity = (
  cost: PlanMeasureTaskPrice,
  clientId: Client['id'],
) => ({
  client: {
    id: clientId,
  },
  department: {
    id: cost.department.id,
  },
  businessYear: {
    id: cost.businessYear.id,
  },
  yearOfOccurrence: cost.yearOfOccurrence,
  monthOfOccurrence: cost.monthOfOccurrence,
  cost: cost.cost,
});
