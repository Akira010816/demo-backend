import { Field, InputType } from '@nestjs/graphql';
import {
  ApprovalCategory,
  ApprovalCategorySlug,
} from './approvalCategory.entity';

@InputType()
export class CreateApprovalCategoryInput {
  @Field(() => String, { nullable: false })
  slug: ApprovalCategorySlug;

  @Field(() => String, { nullable: false })
  name: ApprovalCategory['name'];
}

@InputType()
export class UpdateApprovalCategoryInput {
  @Field({ nullable: false })
  id: number;

  @Field(() => String, { nullable: true })
  slug?: ApprovalCategorySlug;

  @Field(() => String, { nullable: true })
  name?: ApprovalCategory['name'];
}
