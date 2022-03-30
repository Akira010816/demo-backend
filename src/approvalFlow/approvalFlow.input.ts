import { Field, InputType } from '@nestjs/graphql';
import { CreateApprovalStepInput } from '../approvalStep/approvalStep.input';

@InputType()
export class ApprovalFlowInput {
  /* id */
  @Field({ nullable: true })
  id?: number;
}

@InputType()
export class CreateApprovalFlowInput {
  @Field({ nullable: true })
  name?: string;

  @Field({ nullable: true })
  description?: string;

  @Field(() => [CreateApprovalStepInput], { nullable: true })
  approvalSteps?: CreateApprovalStepInput[];
}
