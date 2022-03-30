import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class CauseConditionInput {
  /* id */
  @Field({ nullable: true })
  id?: number;

  /* 達成条件 */
  @Field({ nullable: true })
  achievementCondition?: string;
}
