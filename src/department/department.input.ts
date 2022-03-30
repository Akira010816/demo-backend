import { InputType, Field } from '@nestjs/graphql';
import { Department } from './department.entity';

@InputType()
export class DepartmentInput {
  @Field({ nullable: true })
  id: number;
  @Field({ nullable: true })
  name: string;
}

export const generateDepartmentInputFromEntity = (department: Department) => ({
  id: department.id,
  name: department.name,
});
