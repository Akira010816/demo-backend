import * as Factory from 'factory.ts';
import * as Faker from 'faker/locale/ja';
import { User } from './user.entity';
import * as bcrypt from 'bcrypt';
import { ClientFactory } from '../client/client.factory';
import { UserDepartmentFactory } from '../userDepartment/userDepartment.factory';

// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore
export const UserFactory = Factory.Sync.makeFactory<User>({
  id: Factory.each((i) => i),
  loginId: Faker.datatype.uuid(),
  hashedPassword: bcrypt.hashSync('password', 10),
  isEmployeeBp: Faker.datatype.boolean(),
  userDepartments: UserDepartmentFactory.buildList(2),
  name: Faker.name.findName(),
  client: ClientFactory.build(),
  createdAt: Factory.each(() => new Date()),
  updatedAt: Factory.each(() => new Date()),
});
