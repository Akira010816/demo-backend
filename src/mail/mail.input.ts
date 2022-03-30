import { Field, InputType, ObjectType } from '@nestjs/graphql';

@InputType()
export class SendMailInput {
  @Field()
  loginId: string;
}

@ObjectType()
export class SendMailResult {
  @Field()
  messageId: string;

  constructor(messageId: string) {
    this.messageId = messageId;
  }
}
