import { Field, InputType, Int } from '@nestjs/graphql';
import {
  ApprovalStep,
  ApprovalStepApproverType,
  ApprovalStepType,
} from './approvalStep.entity';
import { ApprovalStepAssigneeInput } from '../approvalStepAssignee/approvalStepAssignee.input';
import { DepartmentInput } from '../department/department.input';

@InputType()
export class CreateApprovalStepInput {
  @Field(() => String, { nullable: true })
  name?: ApprovalStep['name'];

  @Field(() => Int)
  order: ApprovalStep['order'];

  @Field(() => String)
  type: ApprovalStepType;

  @Field(() => Boolean)
  isEditableFlow: ApprovalStep['isEditableFlow'];

  @Field(() => Boolean)
  isSkippableFlow: ApprovalStep['isSkippableFlow'];

  @Field(() => String)
  approverType: ApprovalStepApproverType;

  @Field(() => Boolean)
  isRequesterIncluded: ApprovalStep['isRequesterIncluded'];

  //@Field(() => [ApprovalStepPosition], { nullable: 'itemsAndList' })
  //approvalStepPositions?: ApprovalStepPosition[];

  //@Field(() => [ApprovalStepOrganization], { nullable: 'itemsAndList' })
  //approvalStepOrganizations?: ApprovalStepOrganization[];

  @Field(() => [ApprovalStepAssigneeInput])
  approvalStepAssignees?: ApprovalStepAssigneeInput[];

  @Field(() => DepartmentInput, { nullable: true })
  department?: DepartmentInput;
}
