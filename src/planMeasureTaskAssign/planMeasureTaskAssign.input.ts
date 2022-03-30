import { Field, InputType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { BusinessYear } from 'src/businessYear/businessYear.entity';
import { Client } from 'src/client/client.entity';
import { Department } from 'src/department/department.entity';
import {
  generateCreatePlanMeasureTaskCostTargetDepartmentInputFromEntity,
  PlanMeasureTaskCostTargetDepartmentInput,
} from 'src/planMeasureTaskCostTargetDepartment/planMeasureTaskCostTargetDepartment.input';
import {
  generateCreatePlanMeasureRiskCostTargetIndividualInputFromEntity,
  PlanMeasureTaskCostTargetIndividualInput,
} from 'src/planMeasureTaskCostTargetIndividual/planMeasureTaskCostTargetIndividual.input';
import { PlanMeasureTaskAssign } from './planMeasureTaskAssign.entity';

@InputType()
export class PlanMeasureTaskAssignInput {
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

  @Field(() => PlanMeasureTaskCostTargetDepartmentInput, {
    nullable: true,
  })
  costTD?: PlanMeasureTaskCostTargetDepartmentInput;

  @Field(() => PlanMeasureTaskCostTargetIndividualInput, {
    nullable: true,
  })
  costTI?: PlanMeasureTaskCostTargetIndividualInput;

  @Field({ nullable: true })
  version?: number;
}

export const generateCreatePlanMeasureTaskAssignInputFromEntity = (
  assign: PlanMeasureTaskAssign,
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
    : generateCreatePlanMeasureTaskCostTargetDepartmentInputFromEntity(
        assign.costTD,
      ),
  costTI: !assign.costTI
    ? undefined
    : generateCreatePlanMeasureRiskCostTargetIndividualInputFromEntity(
        assign.costTI,
      ),
});
