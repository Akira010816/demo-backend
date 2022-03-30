import { Field, InputType } from '@nestjs/graphql';
import {
  PlanMeasureRiskCostTargetDepartmentInput,
  generateCreatePlanMeasureRiskCostTargetDepartmentInputFromEntity,
} from 'src/planMeasureRiskCostTargetDepartment/planMeasureRiskCostTargetDepartment.input';
import {
  PlanMeasureRiskCostTargetIndividualInput,
  generateCreatePlanMeasureRiskCostTargetIndividualInputFromEntity,
} from 'src/planMeasureRiskCostTargetIndividual/planMeasureRiskCostTargetIndividual.input';
import { PlanMeasureRiskAssign } from './planMeasureRiskAssign.entity';
import { Client } from '../client/client.entity';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Department } from 'src/department/department.entity';
import { BusinessYear } from 'src/businessYear/businessYear.entity';

export const generateCreatePlanMeasureRiskAssignInputFromEntity = (
  assign: PlanMeasureRiskAssign,
  clientId: Client['id'],
) => ({
  client: {
    id: clientId,
  },
  department: {
    id: assign.department.id,
  },
  businessYear: {
    id: assign.businessYear.id,
  },
  costTD: !assign.costTD
    ? undefined
    : generateCreatePlanMeasureRiskCostTargetDepartmentInputFromEntity(
        assign.costTD,
      ),
  costTI: !assign.costTI
    ? undefined
    : generateCreatePlanMeasureRiskCostTargetIndividualInputFromEntity(
        assign.costTI,
      ),
});

@InputType()
export class PlanMeasureRiskAssignInput {
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

  @Field(() => PlanMeasureRiskCostTargetDepartmentInput, {
    nullable: true,
  })
  costTD?: PlanMeasureRiskCostTargetDepartmentInput;

  @Field(() => PlanMeasureRiskCostTargetIndividualInput, {
    nullable: true,
  })
  costTI?: PlanMeasureRiskCostTargetIndividualInput;

  @Field({ nullable: true })
  version?: number;
}
