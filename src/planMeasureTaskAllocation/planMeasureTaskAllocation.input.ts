import { Field, InputType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { BusinessYear } from 'src/businessYear/businessYear.entity';
import { Client } from 'src/client/client.entity';
import { Department } from 'src/department/department.entity';
import { PlanMeasureTaskAllocation } from './planMeasureTaskAllocation.entity';

@InputType()
export class PlanMeasureTaskAllocationInput {
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

  @Field(() => GraphQLJSONObject, { nullable: false })
  distriDpm: {
    id: Department['id'];
  };

  @Field({ nullable: false })
  allocationRate: number;

  @Field({ nullable: true })
  version?: number;
}

export const generatePlanMeasureTaskAllocationInputFromEntity = (
  taskAllocation: PlanMeasureTaskAllocation,
  clientId: Client['id'],
) => ({
  client: {
    id: clientId,
  },
  department: {
    id: taskAllocation.department.id,
  },
  businessYear: {
    id: taskAllocation.businessYear.id,
  },
  distriDpm: {
    id: taskAllocation.distriDpm?.id ?? 0,
  },
  allocationRate: taskAllocation.allocationRate,
  version: 1,
});
