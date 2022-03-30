import { Command } from 'nestjs-command';
import { Injectable } from '@nestjs/common';
import { UserFactory } from '../user/user.factory';
import { getCustomRepository, Repository } from 'typeorm';
import { User } from '../user/user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Client } from '../client/client.entity';
import { Project } from './project.entity';
import { ProjectFactory } from './project.factory';
import { ProjectRepository } from './project.repository';
import { Department } from '../department/department.entity';
import { DepartmentFactory } from '../department/department.factory';

@Injectable()
export class ProjectCommand {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Department)
    private readonly departmentRepository: Repository<Department>,
  ) {}
  @Command({
    command: 'create:project',
    describe: 'create project',
    autoExit: true,
  })
  async create() {
    const projectRepository = getCustomRepository(ProjectRepository);
    const userData: Client = UserFactory.build({ client: { id: 1 } });
    const user: User = await this.userRepository.save(userData);
    const departmentData: Department = DepartmentFactory.build();
    const department: Department = await this.departmentRepository.save(
      departmentData,
    );

    const project: Project = ProjectFactory.build({
      client: user.client,
      raisedUser: user,
      raisedDepartment: department,
    });
    return projectRepository.save(project);
  }
}
