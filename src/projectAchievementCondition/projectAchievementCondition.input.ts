import { InputType, Field } from '@nestjs/graphql';

@InputType()
export class ProjectAchievementConditionInput {
  @Field({ nullable: true })
  id?: number;
  @Field({ nullable: true })
  description?: string;
}
