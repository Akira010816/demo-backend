import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class SeeNotificationInput {
  @Field()
  id: number;
}
