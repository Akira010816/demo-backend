import { Field, InputType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { BusinessYear } from 'src/businessYear/businessYear.entity';
import { generateBusinessYearInputFromEntity } from 'src/businessYear/businessYear.input';
import { Department } from 'src/department/department.entity';
import { generateDepartmentInputFromEntity } from 'src/department/department.input';
import { PlanMeasureTaskCostTargetDepartment } from './planMeasureTaskCostTargetDepartment.entity';

@InputType()
export class PlanMeasureTaskCostTargetDepartmentInput {
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
  version?: number;
}

export const generateCreatePlanMeasureTaskCostTargetDepartmentInputFromEntity = (
  costTD: PlanMeasureTaskCostTargetDepartment,
) => ({
  department: generateDepartmentInputFromEntity(costTD.department),
  businessYear: generateBusinessYearInputFromEntity(costTD.businessYear),
});
