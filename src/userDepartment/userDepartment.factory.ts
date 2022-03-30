import * as Factory from 'factory.ts';
import { UserDepartment } from './userDepartment.entity';
import { UserFactory } from '../user/user.factory';
import { DepartmentFactory } from 'src/department/department.factory';

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore
export const UserDepartmentFactory = Factory.Sync.makeFactory<UserDepartment>({
  id: Factory.each((i) => i),
  user: UserFactory?.build(),
  department: DepartmentFactory.build(),
  createdAt: Factory.each(() => new Date()),
  updatedAt: Factory.each(() => new Date()),
});
