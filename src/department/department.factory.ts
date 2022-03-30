import * as Factory from 'factory.ts';
import { Department } from './department.entity';
import { UserDepartmentFactory } from '../userDepartment/userDepartment.factory';

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore
export const DepartmentFactory = Factory.Sync.makeFactory<Department>({
  id: Factory.each((i) => i),
  name: Factory.each((i) => '第' + i.toString() + '経営企画部'),
  userDepartments: UserDepartmentFactory?.buildList(2),
  createdAt: Factory.each(() => new Date()),
  updatedAt: Factory.each(() => new Date()),
});
