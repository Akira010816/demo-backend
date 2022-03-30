import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class CreateSystemInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  name?: string;
}

@InputType()
export class UpdateSystemInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  name?: string;
}
