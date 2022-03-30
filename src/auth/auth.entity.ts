import { Field, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class Auth {
  /** アクセストークン */
  @Field()
  accessToken: string;
  /** ユーザーID */
  @Field()
  userId: number;
  /** 部署ID */
  @Field()
  departmentId: number;
  /** ユーザ部署ID **/
  @Field()
  userDepartmentId: number;
  /** 役職 */
  @Field()
  positionWeight: number;
}
