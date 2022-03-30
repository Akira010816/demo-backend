import { Field, InputType, Int } from '@nestjs/graphql';
import {
  generateCreatePlanMeasureTaskAssignInputFromEntity,
  PlanMeasureTaskAssignInput,
} from 'src/planMeasureTaskAssign/planMeasureTaskAssign.input';
import {
  PlanMeasureTaskPriceInput,
  generateCreatePlanMeasureTaskCostInputFromEntity,
} from 'src/planMeasureTaskPrice/planMeasureTaskPrice.input';
import { PlanMeasureTask } from './planMeasureTask.entity';
import { PlanMeasure } from 'src/planMeasure/planMeasure.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { Department } from '../department/department.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Client } from '../client/client.entity';
import {
  generatePlanMeasureTaskAllocationInputFromEntity,
  PlanMeasureTaskAllocationInput,
} from 'src/planMeasureTaskAllocation/planMeasureTaskAllocation.input';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

@InputType()
export class FindPlanMeasureTasksByPlanMeasureIdsInput {
  @Field(() => [Int], { nullable: false })
  planMeasureIds: PlanMeasure['id'][];

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['startYear'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['endYear'];
}

@InputType()
export class PlanMeasureTaskInput {
  @Field({ nullable: true })
  id?: number;

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => String, { nullable: false })
  taskName?: PlanMeasureTask['taskName'];

  @Field(() => GraphQLJSONObject, { nullable: true })
  accountTitle?: Partial<Pick<AccountTitle, 'id'>>;

  @Field(() => String, { nullable: false })
  costRecordingDestination?: PlanMeasureTask['costRecordingDestination'];

  @Field(() => String, { nullable: true })
  kpiType?: PlanMeasureTask['kpiType'];

  @Field(() => String, { nullable: true })
  kpiOther?: PlanMeasureTask['kpiOther'];

  @Field(() => String, { nullable: true })
  kpiThreshold?: PlanMeasureTask['kpiThreshold'];

  @Field(() => String, { nullable: true })
  kpiPeriod?: PlanMeasureTask['kpiPeriod'];

  @Field(() => [PlanMeasureTaskPriceInput], {
    nullable: 'itemsAndList',
  })
  prices?: PlanMeasureTaskPriceInput[];

  @Field(() => [PlanMeasureTaskAssignInput], {
    nullable: 'itemsAndList',
  })
  assigns?: PlanMeasureTaskAssignInput[];

  @Field(() => [PlanMeasureTaskAllocationInput], {
    nullable: 'itemsAndList',
  })
  allocations?: PlanMeasureTaskAllocationInput[];

  @Field({ nullable: true })
  version?: number;
}

export const generateCreatePlanMeasureTaskInputFromEntity = (
  task: PlanMeasureTask,
  clientId: Client['id'],
  conditions?: {
    startPriceBusinessYear: BusinessYear['year'];
    endPriceBusinessYear: BusinessYear['year'];
  },
) => ({
  client: {
    id: clientId,
  },
  department: {
    id: task.department.id,
  },
  businessYear: {
    id: task.businessYear.id,
  },
  accountTitle: {
    id: task.accountTitle?.id,
  },
  taskName: task.taskName,
  costRecordingDestination: task.costRecordingDestination,
  kpiType: task.kpiType,
  kpiOther: task.kpiOther,
  kpiPeriod: task.kpiPeriod,
  kpiThreshold: task.kpiThreshold,
  prices: task.prices
    ?.filter((price) =>
      !conditions
        ? true
        : price.businessYear.year >= conditions.startPriceBusinessYear &&
          price.businessYear.year <= conditions.endPriceBusinessYear,
    )
    .map((price) =>
      generateCreatePlanMeasureTaskCostInputFromEntity(price, clientId),
    ),
  allocations: task.allocations?.map((taskAllocation) =>
    generatePlanMeasureTaskAllocationInputFromEntity(taskAllocation, clientId),
  ),
  assigns: task.assigns?.map((assign) =>
    generateCreatePlanMeasureTaskAssignInputFromEntity(assign, clientId),
  ),
});
