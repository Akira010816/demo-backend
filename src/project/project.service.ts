import {
  BadRequestException,
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { ProjectRepository } from './project.repository';
import { Project } from './project.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  Connection,
  Repository,
  Transaction,
  TransactionRepository,
} from 'typeorm';
import { ProjectInput, DeleteProjectInput } from './project.input';
import { SequenceService } from '../sequence/sequence.service';
import { Sequence } from '../sequence/sequence.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { TenancyService } from 'src/tenancy/tenancy.service'; // P2FW-443

@Injectable()
export class ProjectService {
  constructor(
    private readonly connection: Connection,
    private readonly sequenceService: SequenceService,
    private readonly userDepartmentService: UserDepartmentService,
    private readonly tenancyService: TenancyService,
  ) {}

  findAll(user: JWTPayload): Promise<Project[]> {
    const projectRepository = this.connection.getCustomRepository(
      ProjectRepository,
    );
    return projectRepository.find({
      where: { client: { id: user.clientId } },
      relations: [
        'raisedUser',
        'owner',
        'members',
        'tasks',
        'raisedDepartment',
        'milestones',
        'progressReports',
      ],
    });
  }

  findOne(
    user: JWTPayload,
    id: ProjectInput['id'],
  ): Promise<Project | undefined> {
    const projectRepository = this.connection.getCustomRepository(
      ProjectRepository,
    );
    return projectRepository.findOne(id, {
      where: { client: { id: user.clientId } },
      relations: [
        'raisedDepartment',
        'raisedUser',
        'achievementConditions',
        'owner',
        'members',
        'milestones',
        'schedules',
        'progressReports',
      ],
      order: { id: 'ASC' },
    });
  }

  // @Transaction({ isolation: 'SERIALIZABLE' })
  async create(
    user: JWTPayload,
    input: ProjectInput,
    // @TransactionRepository(Project) projectRepository?: Repository<Project>,
    // @TransactionRepository(Sequence) sequenceRepository?: Repository<Sequence>,
  ): Promise<Project> {
    // if (!projectRepository || !sequenceRepository) {
    //   throw new BadRequestException('no transaction');
    // }
    // const sequence = await this.sequenceService.getCode(
    //   'project',
    //   user.clientId || 0,
    //   sequenceRepository,
    // );
    const sequence = await this.sequenceService.getCode(
      'project',
      user.clientId || 0,
    );
    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }
    const updateSequence = this.sequenceService.setupCode(
      sequence,
      user.userId || 0,
    );
    const client = { id: user.clientId };
    const audit = { createdUserId: user.userId, updatedUserId: user.userId };
    const connection = await this.tenancyService.getCurrentConnection();
    return await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        const project = new Project();
        transactionalEntityManager.merge(Project, project, {
          ...input,
          projectCode: `PROJ-${sequence.nextNumber.toString()}`,
          milestones: input.milestones?.map((milestone) => ({
            ...milestone,
            client,
            ...audit,
          })),
          achievementConditions: input.achievementConditions?.map((ac) => ({
            ...ac,
            client,
            ...audit,
          })),
          client,
          ...audit,
          status: 'planning',
        });

        const savedProject = await transactionalEntityManager.save(project);
        await transactionalEntityManager.save(updateSequence);
        return savedProject;
      },
    );
  }

  async update(user: JWTPayload, input: ProjectInput): Promise<Project> {
    const projectRepository = this.connection.getCustomRepository(
      ProjectRepository,
    );
    const client = { id: user.clientId };
    const audit = { updatedUserId: user.userId };
    if (!input.id) {
      throw new BadRequestException(input.id);
    }
    const current = await projectRepository.findOne(input.id, {
      where: { client: client },
      relations: [
        'raisedDepartment',
        'raisedUser',
        'owner',
        'members',
        'progressReports',
      ],
    });
    if (!current) {
      throw new NotFoundException(input.id, '企画が見つかりません');
    }
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    updateSet.achievementConditions = updateSet.achievementConditions?.map(
      (ac) => ({
        description: ac.description,
        client,
        ...audit,
        createdUserId: user.userId, // cascadeなので常にcreate
      }),
    );
    updateSet.progressReports = updateSet.progressReports?.map((p) => ({
      ...p,
      client,
      ...audit,
      createdUserId: user.userId, // cascadeなので常にcreate
    }));
    updateSet.milestones = updateSet.milestones?.map((m) => ({
      type: m.type,
      targetDate: m.targetDate,
      description: m.description,
      client,
      ...audit,
      createdUserId: user.userId, // cascadeなので常にcreate
    }));
    updateSet.schedules = updateSet.schedules?.map((s) => ({
      type: s.type,
      startDate: s.startDate,
      endDate: s.endDate,
      client,
      ...audit,
      createdUserId: user.userId, // cascadeなので常にcreate
    }));
    // joinColumnのあるリレーションを更新するときは foobar_id のみで上書きする
    delete current.owner;
    delete current.raisedDepartment;
    delete current.raisedUser;
    delete current.progressReports;
    // manyToManyについてはObjectを指定する...
    projectRepository.merge(current, updateSet);
    if (updateSet.members && updateSet.members.length === 0) {
      current.members = [];
    } else {
      current.members = await this.userDepartmentService.findByIds(
        updateSet.members?.map((member) => Number(member.id)),
      );
    }
    current.updatedUserId = user.userId;
    return projectRepository.save<Project>(current);
  }

  async delete(user: JWTPayload, input: DeleteProjectInput): Promise<Project> {
    const projectRepository = this.connection.getCustomRepository(
      ProjectRepository,
    );
    const audit = { deletedUserId: user.userId, deletedAt: new Date() };
    const project = await projectRepository.findOne({
      where: {
        id: input.id,
        client: { id: user.clientId },
      },
      relations: [
        'achievementConditions',
        'milestones',
        'schedules',
        'progressReports',
        'tasks',
      ],
    });
    if (!project) {
      throw new HttpException('企画がありません', HttpStatus.BAD_REQUEST);
    }
    // softdelete() が使えないので cascade処理ができない
    project.deletedUserId = audit.deletedUserId;
    project.deletedAt = audit.deletedAt;
    if (project.achievementConditions)
      project.achievementConditions = project.achievementConditions.map(
        (achievementCondition) => ({ ...achievementCondition, ...audit }),
      );
    if (project.milestones)
      project.milestones = project.milestones.map((milestone) => ({
        ...milestone,
        ...audit,
      }));
    if (project.schedules)
      project.schedules = project.schedules.map((schedule) => ({
        ...schedule,
        ...audit,
      }));
    if (project.progressReports)
      project.progressReports = project.progressReports.map((ac) => ({
        ...ac,
        ...audit,
      }));
    if (project.tasks) {
      console.log('tasks before', project.tasks);
      project.tasks = project.tasks.map((task) => ({
        ...task,
        ...audit,
      }));
      console.log('tasks after', project.tasks);
    }
    return projectRepository.save<Project>(project); //.softdelete()を使うと beforeUpdate と afterUpdate で event.entityが undefinedになる
  }
}
