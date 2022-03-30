import { Field, InputType, Int } from '@nestjs/graphql';
import { ApprovalRequest } from './approvalRequest.entity';
import { UpdateApprovalCategoryInput } from '../approvalCategory/approvalCategory.input';
import { CreateApprovalFlowInput } from '../approvalFlow/approvalFlow.input';

@InputType()
export class FindApprovalRequestsRequestedByMeInput {
  @Field(() => String, { nullable: true })
  approvalCategorySlug?: ApprovalRequest['approvalCategory']['slug'];
}

@InputType()
export class CreateApprovalRequestInput {
  @Field(() => UpdateApprovalCategoryInput, { nullable: false })
  approvalCategory: ApprovalRequest['approvalCategory'];

  @Field(() => String, { nullable: true })
  message?: ApprovalRequest['message'];

  @Field(() => String, { nullable: true })
  until?: ApprovalRequest['until'];

  @Field(() => CreateApprovalFlowInput, { nullable: true })
  approvalFlow: CreateApprovalFlowInput;
}

@InputType()
export class CancelApprovalRequestInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalRequest['id'];
}

@InputType()
export class UpdateApprovalRequestInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalRequest['id'];

  @Field(() => UpdateApprovalCategoryInput, { nullable: true })
  approvalCategory?: Pick<ApprovalRequest['approvalCategory'], 'id'>;

  @Field(() => String, { nullable: true })
  message?: ApprovalRequest['message'];

  @Field(() => String, { nullable: true })
  until?: ApprovalRequest['until'];

  @Field(() => String, { nullable: true })
  status?: ApprovalRequest['status'];
}

@InputType()
export class DeleteApprovalRequestInput {
  @Field(() => Int, { nullable: false })
  id: ApprovalRequest['id'];

  @Field(() => Int, { nullable: false })
  version: ApprovalRequest['version'];
}
