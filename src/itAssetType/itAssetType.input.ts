import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class CreateItAssetTypeInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  code?: string;

  @Field({ nullable: true })
  displayOrder?: number;
}

@InputType()
export class UpdateItAssetTypeInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  code?: string;

  @Field({ nullable: true })
  displayOrder?: number;
}
