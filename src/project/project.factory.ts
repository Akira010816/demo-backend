import * as Factory from 'factory.ts';
import * as Faker from 'faker/locale/ja';
import { Project } from './project.entity';
import { UserFactory } from '../user/user.factory';
import { ProjectMilestoneFactory } from '../projectMilestone/projectMilestone.factory';

export const ProjectFactory = Factory.Sync.makeFactory<Project>({
  id: Factory.each((i) => i),
  projectCode: '',
  name: '企画名' + Faker.lorem.word(1),
  description: '企画の説明はこちらです。' + Faker.lorem.sentence(4),
  premiseCondition: '',
  impact: '',
  client: undefined,
  raisedUser: UserFactory.build(),
  raised_department_id: 1,
  //raisedDepartment: DepartmentFactory.build(),
  milestones: ProjectMilestoneFactory.buildList(3),
  priority: 'high',
  startDate: Faker.date.future(Math.random()).toISOString().substring(0, 10),
  createdAt: Factory.each(() => new Date()),
  updatedAt: Factory.each(() => new Date()),
  version: 111,
});
