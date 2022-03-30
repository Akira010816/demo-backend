import { Field, InputType, Int } from '@nestjs/graphql';
import { PlanMeasureRiskAssignInput } from 'src/planMeasureRiskAssign/planMeasureRiskAssign.input';
import { PlanMeasureRiskPriceInput } from 'src/planMeasureRiskPrice/planMeasureRiskPrice.input';
import { generateCreatePlanMeasureRiskAssignInputFromEntity } from 'src/planMeasureRiskAssign/planMeasureRiskAssign.input';
import { generateCreatePlanMeasureRiskPriceInputFromEntity } from 'src/planMeasureRiskPrice/planMeasureRiskPrice.input';
import { PlanMeasureRisk, RiskTargetType } from './planMeasureRisk.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { Department } from '../department/department.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Client } from '../client/client.entity';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

@InputType()
export class FindPlanMeasureRisksByPlanMeasureIdsInput {
  @Field(() => [Int], { nullable: false })
  planMeasureIds: PlanMeasure['id'][];

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['startYear'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['endYear'];
}

export const generateCreatePlanMeasureRiskInputFromEntity = (
  risk: PlanMeasureRisk,
  clientId: Client['id'],
  conditions?: {
    startPriceBusinessYear: BusinessYear['year'];
    endPriceBusinessYear: BusinessYear['year'];
  },
) => ({
  department: {
    id: risk.department.id,
  },
  businessYear: {
    id: risk.businessYear.id,
  },
  client: {
    id: clientId,
  },
  accountTitle: {
    id: risk.accountTitle?.id,
  },
  riskName: risk.riskName,
  targetType: risk.targetType,
  prices: risk.prices
    ?.filter((price) =>
      !conditions
        ? true
        : price.businessYear.year >= conditions.startPriceBusinessYear &&
          price.businessYear.year <= conditions.endPriceBusinessYear,
    )
    .map((price) =>
      generateCreatePlanMeasureRiskPriceInputFromEntity(price, clientId),
    ),
  assigns: risk.assigns?.map((assign) =>
    generateCreatePlanMeasureRiskAssignInputFromEntity(assign, clientId),
  ),
});

@InputType()
export class PlanMeasureRiskInput {
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

  @Field(() => String, { nullable: false })
  riskName: PlanMeasureRisk['riskName'];

  @Field({ nullable: true })
  targetType?: RiskTargetType;

  @Field(() => GraphQLJSONObject, { nullable: true })
  accountTitle?: Partial<Pick<AccountTitle, 'id'>>;

  @Field(() => [PlanMeasureRiskPriceInput], {
    nullable: 'itemsAndList',
  })
  prices?: PlanMeasureRiskPriceInput[];

  @Field(() => [PlanMeasureRiskAssignInput], {
    nullable: 'itemsAndList',
  })
  assigns?: PlanMeasureRiskAssignInput[];

  @Field({ nullable: true })
  version?: number;
}
