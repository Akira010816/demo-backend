import { Field, InputType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { BusinessYear } from 'src/businessYear/businessYear.entity';
import { Client } from 'src/client/client.entity';
import { Department } from 'src/department/department.entity';
import {
  generateCreatePlanMeasureCostTargetDepartmentInputFromEntity,
  PlanMeasureCostTargetDepartmentInput,
} from 'src/planMeasureCostTargetDepartment/planMeasureCostTargetDepartment.input';
import {
  generateCreatePlanMeasureCostTargetIndividualInputFromEntity,
  PlanMeasureCostTargetIndividualInput,
} from 'src/planMeasureCostTargetIndividual/planMeasureCostTargetIndividual.input';
import { PlanMeasureCostAssign } from './planMeasureCostAssign.entity';

@InputType()
export class PlanMeasureCostAssignInput {
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

  @Field(() => PlanMeasureCostTargetDepartmentInput, {
    nullable: true,
  })
  costTD?: PlanMeasureCostTargetDepartmentInput;

  @Field(() => PlanMeasureCostTargetIndividualInput, {
    nullable: true,
  })
  costTI?: PlanMeasureCostTargetIndividualInput;

  @Field({ nullable: true })
  version?: number;
}

export const generateCreatePlanMeasureCostAssignInputFromEntity = (
  assign: PlanMeasureCostAssign,
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
    : generateCreatePlanMeasureCostTargetDepartmentInputFromEntity(
        assign.costTD,
      ),
  costTI: !assign.costTI
    ? undefined
    : generateCreatePlanMeasureCostTargetIndividualInputFromEntity(
        assign.costTI,
      ),
});
