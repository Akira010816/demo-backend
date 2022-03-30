import * as Factory from 'factory.ts';
import Faker from 'faker/locale/ja';
import { ProjectMilestone } from './projectMilestone.entity';

export const ProjectMilestoneFactory = Factory.Sync.makeFactory<ProjectMilestone>(
  {
    id: Factory.each((i) => i),
    type: 'others',
    targetDate: Faker.date.future(Math.random()).toISOString().substring(0, 10),
    description: Faker.company.catchPhraseDescriptor(),
    project: undefined,
    createdAt: Factory.each(() => new Date()),
    updatedAt: Factory.each(() => new Date()),
  },
);
