import { Field, InputType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { BusinessYear } from 'src/businessYear/businessYear.entity';
import { generateBusinessYearInputFromEntity } from 'src/businessYear/businessYear.input';
import { Department } from 'src/department/department.entity';
import { generateDepartmentInputFromEntity } from 'src/department/department.input';
import {
  generateUserDepartmentInputFromEntity,
  UserDepartmentInput,
} from 'src/userDepartment/userDepartment.input';
import { PlanMeasureTaskCostTargetIndividual } from './planMeasureTaskCostTargetIndividual.entity';

@InputType()
export class PlanMeasureTaskCostTargetIndividualInput {
  @Field({ nullable: true })
  id?: number;

  @Field(() => UserDepartmentInput, { nullable: true })
  userDpm?: UserDepartmentInput;

  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };
}

export const generateCreatePlanMeasureRiskCostTargetIndividualInputFromEntity = (
  costTI: PlanMeasureTaskCostTargetIndividual,
) => ({
  userDpm: generateUserDepartmentInputFromEntity(costTI.userDpm),
  businessYear: generateBusinessYearInputFromEntity(costTI.businessYear),
  department: generateDepartmentInputFromEntity(costTI.department),
});
