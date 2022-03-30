import { InputType, Field } from '@nestjs/graphql';
import { UserDepartment } from './userDepartment.entity';

@InputType()
export class UserDepartmentInput {
  @Field()
  id: number;
  @Field({ nullable: true })
  userId: number;
  @Field({ nullable: true })
  departmentId: number;
}

export const generateUserDepartmentInputFromEntity = (
  userDepartment: UserDepartment,
) => ({
  id: userDepartment.id,
  userId: userDepartment.user.id ?? 0,
  departmentId: userDepartment.department.id,
});
