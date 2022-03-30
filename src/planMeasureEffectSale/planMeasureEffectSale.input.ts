import { Field, InputType, Int } from '@nestjs/graphql';
import {
  PlanMeasureSalePriceInput,
  generateCreatePlanMeasureEffectSalePriceInputFromEntity,
} from 'src/planMeasureEffectSalePrice/planMeasureEffectSalePrice.input';
import {
  PlanMeasureEffectSaleProject,
  PlanMeasureEffectSaleIncDec,
  PlanMeasureEffectSale,
} from './planMeasureEffectSale.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { Department } from '../department/department.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Client } from '../client/client.entity';

@InputType()
export class FindAllPlanMeasureEffectSaleInput {
  @Field({ nullable: true })
  project?: string;
}

@InputType()
export class FindPlanMeasureEffectSaleByIdInput {
  @Field({ nullable: true })
  id?: string;
}

@InputType()
export class FindPlanMeasureEffectSalesByPlanMeasureIdsInput {
  @Field(() => [Int], { nullable: false })
  planMeasureIds: PlanMeasure['id'][];

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['startYear'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['endYear'];
}

@InputType()
export class CreatePlanMeasureEffectSaleInput {
  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => String, { nullable: true })
  project?: PlanMeasureEffectSale['project'];

  @Field(() => String, { nullable: true })
  effectIncDec?: PlanMeasureEffectSale['effectIncDec'];

  @Field(() => [PlanMeasureSalePriceInput], {
    nullable: 'itemsAndList',
  })
  prices?: PlanMeasureSalePriceInput[];
}

export const generateCreatePlanMeasureEffectSaleInputFromEntity = (
  sale: PlanMeasureEffectSale,
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
    id: sale.department.id,
  },
  businessYear: {
    id: sale.businessYear.id,
  },
  project: sale.project,
  effectIncDec: sale.effectIncDec,
  prices: sale.prices
    ?.filter((price) =>
      !conditions
        ? true
        : price.businessYear.year >= conditions.startPriceBusinessYear &&
          price.businessYear.year <= conditions.endPriceBusinessYear,
    )
    .map((price) =>
      generateCreatePlanMeasureEffectSalePriceInputFromEntity(price, clientId),
    ),
});

@InputType()
export class PlanMeasureEffectSaleInput {
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
  project?: PlanMeasureEffectSaleProject;

  @Field({ nullable: true })
  effectIncDec?: PlanMeasureEffectSaleIncDec;

  @Field(() => [PlanMeasureSalePriceInput], {
    nullable: 'itemsAndList',
  })
  prices?: PlanMeasureSalePriceInput[];

  @Field({ nullable: true })
  version?: number;
}

@InputType()
export class DeletePlanMeasureEffectSaleInput {
  @Field()
  id: number;

  @Field()
  version: number;
}
