import { Field, Int, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class UnreadCountOutput {
  @Field(() => Int)
  unreadCount: number;
}
