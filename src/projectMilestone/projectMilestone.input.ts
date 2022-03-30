import { InputType, Field } from '@nestjs/graphql';

@InputType()
export class ProjectMilestoneInput {
  @Field({ nullable: true })
  id?: number;
  @Field({ nullable: true })
  type: MilestoneType;
  @Field({ nullable: true })
  targetDate: string;
  @Field({ nullable: true })
  description?: string;
}
