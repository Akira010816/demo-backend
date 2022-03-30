import { InputType, Field } from '@nestjs/graphql';

@InputType()
export class UserInput {
  @Field({ nullable: true })
  userId?: number;
  @Field({ nullable: true })
  name?: string;
}

@InputType()
export class LoginInput {
  @Field({ nullable: false })
  loginId: string;
  @Field({ nullable: false })
  password: string;
  // TODO スキーマを振り分ける
  //  @Field({ nullable: false })
  //  clientSlug: string;
}

@InputType()
export class ChangeDepartmentInput {
  @Field({ nullable: false })
  departmentId: number;
}
