import { Field, InputType, Int } from '@nestjs/graphql';
import {
  generateCreatePlanMeasureCostAssignInputFromEntity,
  PlanMeasureCostAssignInput,
} from 'src/planMeasureCostAssign/planMeasureCostAssign.input';
import {
  PlanMeasureCostEffectIncDec,
  PlanMeasureCostItem,
} from './planMeasureCost.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import {
  PlanMeasureCostPriceInput,
  generateCreatePlanMeasureCostPriceInputFromEntity,
} from '../planMeasureCostPrice/planMeasureCostPrice.input';
import { PlanMeasureCost } from './planMeasureCost.entity';
import { Department } from '../department/department.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Client } from '../client/client.entity';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

@InputType()
export class FindAllPlanMeasureCostInput {}

@InputType()
export class FindPlanMeasureCostByIdInput {
  @Field({ nullable: true })
  id?: string;
}

@InputType()
export class PlanMeasureCostInput {
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

  @Field({ nullable: true })
  item?: PlanMeasureCostItem;

  @Field(() => GraphQLJSONObject, { nullable: true })
  accountTitle?: Partial<Pick<AccountTitle, 'id'>>;

  @Field({ nullable: true })
  effectIncDec?: PlanMeasureCostEffectIncDec;

  @Field(() => [PlanMeasureCostPriceInput], {
    nullable: 'itemsAndList',
  })
  prices?: PlanMeasureCostPriceInput[];

  @Field(() => [PlanMeasureCostAssignInput], {
    nullable: 'itemsAndList',
  })
  assigns?: PlanMeasureCostAssignInput[];

  @Field({ nullable: true })
  version?: number;
}

@InputType()
export class DeletePlanMeasureCostInput {
  @Field()
  id: number;

  @Field()
  version: number;
}

@InputType()
export class FindPlanMeasureCostsByPlanMeasureIdsInput {
  @Field(() => [Int], { nullable: false })
  planMeasureIds: PlanMeasure['id'][];

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['startYear'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['endYear'];
}

@InputType()
export class CreatePlanMeasureCostInput {
  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => String, { nullable: true })
  costName?: PlanMeasureCost['costName'];

  @Field(() => GraphQLJSONObject, { nullable: true })
  accountTitle?: Partial<Pick<AccountTitle, 'id'>>;

  @Field(() => [PlanMeasureCostPriceInput], {
    nullable: 'itemsAndList',
  })
  prices?: PlanMeasureCostPriceInput[];

  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  item?: PlanMeasureCostItem;

  @Field({ nullable: true })
  effectIncDec?: PlanMeasureCostEffectIncDec;

  @Field(() => [PlanMeasureCostAssignInput], {
    nullable: 'itemsAndList',
  })
  assigns?: PlanMeasureCostAssignInput[];
}

export const generateCreatePlanMeasureCostInputFromEntity = (
  cost: PlanMeasureCost,
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
    id: cost.department.id,
  },
  businessYear: {
    id: cost.businessYear.id,
  },
  costName: cost.costName,
  accountTitle: {
    id: cost.accountTitle?.id,
  },
  item: cost.item,
  effectIncDec: cost.effectIncDec,
  prices: cost.prices
    ?.filter((price) =>
      !conditions
        ? true
        : price.businessYear.year >= conditions.startPriceBusinessYear &&
          price.businessYear.year <= conditions.endPriceBusinessYear,
    )
    .map((price) =>
      generateCreatePlanMeasureCostPriceInputFromEntity(price, clientId),
    ),
  assigns: cost.assigns?.map((assign) =>
    generateCreatePlanMeasureCostAssignInputFromEntity(assign, clientId),
  ),
});
