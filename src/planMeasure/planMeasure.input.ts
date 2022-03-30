import { Field, InputType, Int } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import {
  PlanMeasure,
  PlanMeasureClassification,
  PlanMeasureImplementationTarget,
} from './planMeasure.entity';
import { Department } from '../department/department.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { PlanMeasureRiskInput } from '../planMeasureRisk/planMeasureRisk.input';
import { PlanMeasureEffectSaleInput } from '../planMeasureEffectSale/planMeasureEffectSale.input';
import { PlanMeasureCostInput } from 'src/planMeasureCost/planMeasureCost.input';
import { PlanMeasureTaskInput } from 'src/planMeasureTask/planMeasureTask.input';
import { PlanMeasureRegistrationRequest } from '../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';

@InputType()
export class FindPlanMeasuresByDepartmentIdInput {
  @Field(() => Int, { nullable: false })
  departmentId: Department['id'];

  // 開始年度
  @Field(() => Int, { nullable: true })
  startBusinessYear?: BusinessYear['startYear'];

  // 終了年度
  @Field(() => Int, { nullable: true })
  endBusinessYear?: BusinessYear['endYear'];

  // 集計開始年度
  @Field(() => Int, { nullable: true })
  startAggregationBusinessYear?: BusinessYear['startYear'];

  // 集計終了年度
  @Field(() => Int, { nullable: true })
  endAggregationBusinessYear?: BusinessYear['endYear'];

  // 自分が作成した施策のみ取得
  @Field(() => Boolean, { nullable: true })
  createdByMe?: boolean;

  // 実施対象
  @Field(() => String, { nullable: true })
  implementationTarget?: PlanMeasureImplementationTarget;
}

@InputType()
export class FindPlanMeasuresByIdInput {
  @Field({ nullable: true })
  code?: string;
}

@InputType()
export class CreatePlanMeasureInput {
  @Field(() => String, { nullable: false })
  measureName: PlanMeasure['measureName'];

  @Field(() => String, { nullable: true })
  overview?: PlanMeasure['overview'];

  @Field(() => String, { nullable: true })
  classification?: PlanMeasure['classification'];

  @Field(() => String, { nullable: true })
  implementationTarget?: PlanMeasure['implementationTarget'];

  @Field(() => GraphQLJSONObject, { nullable: false })
  businessYear: {
    id: BusinessYear['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  department: {
    id: Department['id'];
  };

  @Field(() => GraphQLJSONObject, { nullable: false })
  registeredBy: {
    id: UserDepartment['id'];
  };

  @Field(() => [PlanMeasureRiskInput], { nullable: true })
  risks?: PlanMeasureRiskInput[];

  @Field(() => [PlanMeasureEffectSaleInput], { nullable: true })
  sales?: PlanMeasureEffectSaleInput[];

  @Field(() => [PlanMeasureCostInput], { nullable: true })
  costs?: PlanMeasureCostInput[];

  @Field(() => [PlanMeasureTaskInput], { nullable: true })
  tasks?: PlanMeasureTaskInput[];
}

@InputType()
export class UpdatePlanMeasureInput {
  @Field({ nullable: false })
  id: number;

  @Field({ nullable: false })
  code: string;

  @Field({ nullable: false })
  measureName: string;

  @Field({ nullable: true })
  overview?: string;

  @Field({ nullable: true })
  classification?: PlanMeasureClassification;

  @Field(() => [PlanMeasureRiskInput], { nullable: 'itemsAndList' })
  risks?: PlanMeasureRiskInput[];

  @Field(() => [PlanMeasureEffectSaleInput], { nullable: 'itemsAndList' })
  sales?: PlanMeasureEffectSaleInput[];

  @Field(() => [PlanMeasureCostInput], { nullable: 'itemsAndList' })
  costs?: PlanMeasureCostInput[];

  @Field(() => [PlanMeasureTaskInput], { nullable: 'itemsAndList' })
  tasks?: PlanMeasureTaskInput[];

  @Field({ nullable: true })
  version?: number;
}

@InputType()
export class CopyPlanMeasuresInput {
  @Field(() => [Int], { nullable: false })
  planMeasureIds: Array<PlanMeasure['id']>;

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['year'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['year'];

  @Field(() => Boolean, { nullable: false })
  copyToNextYear: boolean;
}

@InputType()
export class CopyPlanMeasureInput {
  @Field(() => Int, { nullable: true })
  planMeasureId?: PlanMeasure['id'];

  @Field(() => GraphQLJSONObject, { nullable: true })
  planMeasure?: PlanMeasure;

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['year'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['year'];

  @Field(() => Boolean, { nullable: false })
  copyToNextYear: boolean;

  @Field(() => [String], { nullable: true })
  aggregationType?: Array<
    keyof Pick<PlanMeasure, 'risks' | 'sales' | 'tasks' | 'costs'>
  >;
}

@InputType()
export class DeletePlanMeasurePricesInput {
  @Field(() => Int, { nullable: false })
  planMeasureId: PlanMeasure['id'];

  @Field(() => Int, { nullable: false })
  startBusinessYear: BusinessYear['year'];

  @Field(() => Int, { nullable: false })
  endBusinessYear: BusinessYear['year'];

  @Field(() => [String], { nullable: true })
  aggregationType?: Array<
    keyof Pick<PlanMeasure, 'risks' | 'sales' | 'tasks' | 'costs'>
  >;
}

@InputType()
export class DeletePlanMeasureInput {
  @Field(() => Int, { nullable: false })
  id: PlanMeasure['id'];

  @Field({ nullable: true })
  version: number;
}

@InputType()
export class CompleteRegistrationPlanMeasuresInput {
  @Field(() => Int, { nullable: false })
  planMeasureRegistrationRequestId: PlanMeasureRegistrationRequest['id'];

  @Field(() => String, { nullable: true })
  comment?: string;
}

@InputType()
export class DecideTargetPlanMeasureInput {
  @Field(() => Int, { nullable: false })
  id: PlanMeasure['id'];

  @Field(() => String, { nullable: false })
  implementationTarget: PlanMeasure['implementationTarget'];

  @Field({ nullable: true })
  version: number;
}

@InputType()
export class DecideTargetPlanMeasuresInput {
  @Field(() => [DecideTargetPlanMeasureInput], { nullable: false })
  targetPlanMeasures: Array<DecideTargetPlanMeasureInput>;
}
@InputType()
export class FindPlanMeasuresByDepartmentIdsInput {
  @Field(() => [Int], { nullable: false })
  departmentIds: Array<Department['id']>;

  // 開始年度
  @Field(() => Int, { nullable: true })
  startBusinessYear?: BusinessYear['startYear'];

  // 終了年度
  @Field(() => Int, { nullable: true })
  endBusinessYear?: BusinessYear['endYear'];

  // 集計開始年度
  @Field(() => Int, { nullable: true })
  startAggregationBusinessYear?: BusinessYear['startYear'];

  // 集計終了年度
  @Field(() => Int, { nullable: true })
  endAggregationBusinessYear?: BusinessYear['endYear'];

  // 自分が作成した施策のみ取得
  @Field(() => Boolean, { nullable: true })
  createdByMe?: boolean;

  // 実施対象
  @Field(() => String, { nullable: true })
  implementationTarget?: PlanMeasureImplementationTarget;
}
