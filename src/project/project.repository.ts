import { EntityRepository, Repository } from 'typeorm';
import { Project } from './project.entity';
import { Client } from '../client/client.entity';

@EntityRepository(Project)
export class ProjectRepository extends Repository<Project> {
  findById(id: number, clientId: number) {
    return this.findOne({ id: id, client: { id: clientId } });
  }

  findAll(clientId: Client['id']) {
    return this.find({
      where: {
        client: { id: clientId },
      },
      order: { id: 'ASC' },
      relations: [
        'raisedDepartment',
        'raisedUser',
        'milestones',
        'progressReports',
        'tasks',
      ],
    });
  }

  findSchedules(clientId: Client['id']) {
    return this.find({
      where: {
        client: { id: clientId },
      },
      order: { id: 'ASC' },
      relations: [
        'raisedDepartment',
        'raisedUser',
        'milestones',
        'progressReports',
        'tasks',
        'tasks.issue',
        'tasks.issue.causes',
        'tasks.issue.causes.measures',
        'tasks.issue.causes.measures.measureImplementationTasks',
        'tasks.targets',
        'tasks.targets.measures',
        'tasks.targets.measures.measureImplementationTasks',
        'tasks.todos',
        'tasks.todos.measures',
        'tasks.todos.measures.measureImplementationTasks',
        'tasks.studyContents',
        'tasks.studyContents.measures',
        'tasks.studyContents.measures.measureImplementationTasks',
        'tasks.investigations',
        'tasks.investigations.measures',
        'tasks.investigations.measures.measureImplementationTasks',
        'tasks.others',
        'tasks.others.measures',
        'tasks.others.measures.measureImplementationTasks',
      ],
    });
  }
}
