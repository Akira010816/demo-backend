import { Field, InputType, Int } from '@nestjs/graphql';
import {
  ApprovalStatusType,
  ApprovalStepAssignee,
} from './approvalStepAssignee.entity';
import { UserDepartmentInput } from '../userDepartment/userDepartment.input';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';

@InputType()
export class ApprovalStepAssigneeInput {
  @Field(() => String, { nullable: true })
  comment?: ApprovalStepAssignee['comment'];

  @Field(() => UserDepartmentInput, { nullable: true })
  userDepartment?: UserDepartmentInput;

  @Field(() => String)
  approvalStatus: ApprovalStatusType;
}

@InputType()
export class RejectApprovalStepAssigneeInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalStepAssignee['id'];

  @Field(() => Int, { nullable: false })
  approvalRequestId: ApprovalRequest['id'];

  @Field(() => String, { nullable: true })
  comment?: ApprovalStepAssignee['comment'];
}

@InputType()
export class ApproveApprovalStepAssigneeInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalStepAssignee['id'];

  @Field(() => Int, { nullable: false })
  approvalRequestId: ApprovalRequest['id'];

  @Field(() => String, { nullable: true })
  comment?: ApprovalStepAssignee['comment'];
}

@InputType()
export class CancelApprovalStepAssigneeInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalStepAssignee['id'];

  @Field(() => Int, { nullable: false })
  approvalRequestId: ApprovalRequest['id'];

  @Field(() => String, { nullable: true })
  comment?: ApprovalStepAssignee['comment'];
}

@InputType()
export class UpdateApprovalStepAssigneeInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalStepAssignee['id'];

  @Field(() => String, { nullable: true })
  comment?: ApprovalStepAssignee['comment'];

  @Field(() => String)
  approvalStatus: ApprovalStatusType;
}
