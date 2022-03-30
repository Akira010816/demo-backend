import {
  BadRequestException,
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Transaction, TransactionRepository } from 'typeorm';
import { SequenceService } from '../sequence/sequence.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { Task } from './task.entity';
import { TaskInput } from './task.input';
import { Sequence } from '../sequence/sequence.entity';
import { Project, PROJECT_STATUS } from '../project/project.entity';
import { MeasureService } from '../measure/measure.service';
import { IssueService } from '../issue/issue.service';
import { ProjectService } from 'src/project/project.service';
import { TenancyService } from 'src/tenancy/tenancy.service'; // P2FW-443

const getRelations = (type: Task['taskType']): Array<string> => {
  switch (type) {
    case 1:
      return [
        'registeredUser',
        'issue',
        'issue.causes',
        'issue.causes.causeConditions',
        'issue.causes.measures',
        'issue.causes.measures.measureImplementationEffects',
        'issue.causes.measures.causeConditions',
        'issue.causes.measures.measureImplementationTasks',
        'issue.causes.measures.measureImplementationTasks.targetSystem',
        'issue.causes.measures.measureImplementationTasks.affectedSystems',
        'issue.causes.measures.measureImplementationTasks.purchaseTargets',
        'issue.causes.measures.measureImplementationTasks.abandonmentTargets',
      ];
    case 2:
      return [
        'registeredUser',
        'targets',
        'targets.measures',
        'targets.measures.measureImplementationEffects',
        'targets.measures.causeConditions',
        'targets.measures.measureImplementationTasks',
        'targets.measures.measureImplementationTasks.targetSystem',
        'targets.measures.measureImplementationTasks.affectedSystems',
        'targets.measures.measureImplementationTasks.purchaseTargets',
        'targets.measures.measureImplementationTasks.abandonmentTargets',
      ];
    case 3:
      return [
        'registeredUser',
        'todos',
        'todos.measures',
        'todos.measures.measureImplementationEffects',
        'todos.measures.causeConditions',
        'todos.measures.measureImplementationTasks',
        'todos.measures.measureImplementationTasks.targetSystem',
        'todos.measures.measureImplementationTasks.affectedSystems',
        'todos.measures.measureImplementationTasks.purchaseTargets',
        'todos.measures.measureImplementationTasks.abandonmentTargets',
      ];
    case 4:
      return [
        'registeredUser',
        'studyContents',
        'studyContents.measures',
        'studyContents.measures.measureImplementationEffects',
        'studyContents.measures.causeConditions',
        'studyContents.measures.measureImplementationTasks',
        'studyContents.measures.measureImplementationTasks.targetSystem',
        'studyContents.measures.measureImplementationTasks.affectedSystems',
        'studyContents.measures.measureImplementationTasks.purchaseTargets',
        'studyContents.measures.measureImplementationTasks.abandonmentTargets',
      ];
    case 5:
      return [
        'registeredUser',
        'investigations',
        'investigations.measures',
        'investigations.measures.measureImplementationEffects',
        'investigations.measures.causeConditions',
        'investigations.measures.measureImplementationTasks',
        'investigations.measures.measureImplementationTasks.targetSystem',
        'investigations.measures.measureImplementationTasks.affectedSystems',
        'investigations.measures.measureImplementationTasks.purchaseTargets',
        'investigations.measures.measureImplementationTasks.abandonmentTargets',
      ];
    case 6:
      return [
        'registeredUser',
        'others',
        'others.measures',
        'others.measures.measureImplementationEffects',
        'others.measures.causeConditions',
        'others.measures.measureImplementationTasks',
        'others.measures.measureImplementationTasks.targetSystem',
        'others.measures.measureImplementationTasks.affectedSystems',
        'others.measures.measureImplementationTasks.purchaseTargets',
        'others.measures.measureImplementationTasks.abandonmentTargets',
      ];
    default:
      return [];
  }
};

const sortEntitiesById = <Entity extends { id: number }>(
  entities: Array<Entity>,
) => [...entities].sort(({ id: idA }, { id: idB }) => idA - idB);

const sortTaskTypes = (task: Task): Task => {
  switch (task.taskType) {
    case 1: {
      if (task.issue) {
        task.issue.causes = sortEntitiesById(task.issue.causes).map(
          (cause) => ({
            ...cause,
            causeConditions: sortEntitiesById(cause.causeConditions ?? []),
          }),
        );
      }
      return task;
    }
    case 2: {
      task.targets = sortEntitiesById(task.targets ?? []);
      return task;
    }
    case 3: {
      task.todos = sortEntitiesById(task.todos ?? []);
      return task;
    }
    case 4: {
      task.studyContents = sortEntitiesById(task.studyContents ?? []);
      return task;
    }
    case 5: {
      task.investigations = sortEntitiesById(task.investigations ?? []);
      return task;
    }
    case 6: {
      task.others = sortEntitiesById(task.others ?? []);
      return task;
    }
    default:
      return task;
  }
};

@Injectable()
export class TaskService {
  constructor(
    private readonly sequenceService: SequenceService,
    private readonly measureService: MeasureService,
    private readonly issueService: IssueService,
    private readonly projectService: ProjectService,
    @InjectRepository(Task)
    private readonly taskRepository: Repository<Task>,
    private readonly tenancyService: TenancyService, // P2FW-443
  ) {}

  findAll(user: JWTPayload, projectId: Project['id']): Promise<Task[]> {
    return this.taskRepository.find({
      where: { project_id: projectId, client: { id: user.clientId } },
      relations: ['registeredUser'],
    });
  }

  findTasksByProjectId(
    user: JWTPayload,
    projectId: Project['id'],
  ): Promise<Task[]> {
    return this.taskRepository.find({
      where: { project_id: projectId, client: { id: user.clientId } },
      relations: [
        'registeredUser',
        'issue',
        'issue.causes',
        'issue.causes.measures',
        'targets',
        'targets.measures',
        'todos',
        'todos.measures',
        'studyContents',
        'studyContents.measures',
        'investigations',
        'investigations.measures',
        'others',
        'others.measures',
      ],
    });
  }

  async findOne(
    user: JWTPayload,
    id: TaskInput['id'],
  ): Promise<Task | undefined> {
    const task = await this.taskRepository.findOne(id, {
      where: { client: { id: user.clientId } },
    });
    const foundTask = await this.taskRepository.findOne(id, {
      where: { client: { id: user.clientId } },
      relations: getRelations(task?.taskType ?? 0),
    });

    if (foundTask) {
      return sortTaskTypes(foundTask);
    }

    return foundTask;
  }

  // P2FW-443
  // @Transaction({ isolation: 'SERIALIZABLE' })
  async create(
    user: JWTPayload,
    input: TaskInput,
    @TransactionRepository(Task) taskRepository?: Repository<Task>,
    @TransactionRepository(Sequence) sequenceRepository?: Repository<Sequence>,
  ): Promise<Task> {
    const audit = { createdUserId: user.userId, updatedUserId: user.userId };
    // if (!taskRepository || !sequenceRepository) {
    //   throw new BadRequestException('no transaction');
    // }
    if (!input.project_id) {
      throw new BadRequestException('project_id invalid');
    }

    // const sequence = await this.sequenceService.getCode(
    //   'task',
    //   user.clientId || 0,
    //   sequenceRepository,
    // );

    const sequence = await this.sequenceService.getCode(
      'task',
      user.clientId || 0,
    );
    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }
    const updateSequence = this.sequenceService.setupCode(
      sequence,
      user.userId || 0,
    );

    //get the project object to update
    const project = await this.projectService.findOne(user, input.project_id);

    //check project does not exist
    if (!project) {
      throw new BadRequestException('project does not exist');
    }

    //get any task to check project existed task
    const taskByProject = await this.taskRepository.findOne({
      where: { project_id: input.project_id, client: { id: user.clientId } },
    });

    const client = { id: user.clientId };

    // const task = await taskRepository.save({
    //   ...input,
    //   ...audit,
    //   client,
    //   registered_user_id: user.userId,
    //   registeredAt: new Date(),
    //   code: `TASK-${sequence.nextNumber.toString()}`,
    //   issue:
    //     input.taskType === 1
    //       ? {
    //           ...input.issue,
    //           ...audit,
    //           client,
    //           causes:
    //             input.issue?.causes?.map((cause) => ({
    //               ...cause,
    //               ...audit,
    //               client,
    //               causeConditions: cause.causeConditions?.map(
    //                 (causeCondition) => ({
    //                   ...causeCondition,
    //                   ...audit,
    //                   client,
    //                 }),
    //               ),
    //             })) ?? [],
    //         }
    //       : undefined,
    //   targets:
    //     input.taskType === 2
    //       ? input.targets?.map((target) => ({ ...target, ...audit, client })) ??
    //         []
    //       : [],
    //   todos:
    //     input.taskType === 3
    //       ? input.todos?.map((todo) => ({ ...todo, ...audit, client })) ?? []
    //       : [],
    //   studyContents:
    //     input.taskType === 4
    //       ? input.studyContents?.map((studyContent) => ({
    //           ...studyContent,
    //           ...audit,
    //           client,
    //         })) ?? []
    //       : [],
    //   investigations:
    //     input.taskType === 5
    //       ? input.investigations?.map((investigation) => ({
    //           ...investigation,
    //           ...audit,
    //           client,
    //         })) ?? []
    //       : [],
    //   others:
    //     input.taskType === 6
    //       ? input.others?.map((other) => ({ ...other, ...audit, client })) ?? []
    //       : [],
    // });
    // if (!sequence.createdUserId) {
    //   sequence.createdUserId = user.userId || 0;
    // }

    // //check if project no tasks yet then update project status
    // if (!taskByProject) {
    //   //set project status by 'planning' when register first task
    //   await this.projectService.update(user, {
    //     id: project.id,
    //     status: PROJECT_STATUS[1],
    //   });
    // }

    // await this.sequenceService.saveCode(sequence, user.userId || 0);
    // return task;

    const connection = await this.tenancyService.getCurrentConnection();
    return await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        const task = new Task();
        transactionalEntityManager.merge(Task, task, {
          ...input,
          ...audit,
          client,
          registered_user_id: user.userId,
          registeredAt: new Date(),
          code: `TASK-${sequence.nextNumber.toString()}`,
          issue:
            input.taskType === 1
              ? {
                  ...input.issue,
                  ...audit,
                  client,
                  causes:
                    input.issue?.causes?.map((cause) => ({
                      ...cause,
                      ...audit,
                      client,
                      causeConditions: cause.causeConditions?.map(
                        (causeCondition) => ({
                          ...causeCondition,
                          ...audit,
                          client,
                        }),
                      ),
                    })) ?? [],
                }
              : undefined,
          targets:
            input.taskType === 2
              ? input.targets?.map((target) => ({
                  ...target,
                  ...audit,
                  client,
                })) ?? []
              : [],
          todos:
            input.taskType === 3
              ? input.todos?.map((todo) => ({ ...todo, ...audit, client })) ??
                []
              : [],
          studyContents:
            input.taskType === 4
              ? input.studyContents?.map((studyContent) => ({
                  ...studyContent,
                  ...audit,
                  client,
                })) ?? []
              : [],
          investigations:
            input.taskType === 5
              ? input.investigations?.map((investigation) => ({
                  ...investigation,
                  ...audit,
                  client,
                })) ?? []
              : [],
          others:
            input.taskType === 6
              ? input.others?.map((other) => ({
                  ...other,
                  ...audit,
                  client,
                })) ?? []
              : [],
        });

        const savedTask = await transactionalEntityManager.save(task);
        //check if project no tasks yet then update project status
        if (!taskByProject) {
          //set project status by 'planning' when register first task
          project.status = PROJECT_STATUS[1];
          project.updatedAt = new Date();
          await transactionalEntityManager.save(project);
        }
        await transactionalEntityManager.save(updateSequence);
        return savedTask;
      },
    );
  }

  async update(user: JWTPayload, input: TaskInput): Promise<Task> {
    if (!input.id) {
      throw new BadRequestException(input.id);
    }

    const client = { id: user.clientId };
    const current = await this.taskRepository.findOne(input.id, {
      where: { client },
    });

    if (!current) {
      throw new NotFoundException();
    }

    const columns = {
      createdUserId: current.createdUserId ?? user.userId, // cascade で新規に作成されたレコード用
      updatedUserId: user.userId,
    };

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;

    if (updateSet.targets) {
      updateSet.targets = updateSet.targets?.map((target) => ({
        ...target,
        ...columns,
        client,
      }));
    }

    if (updateSet.others) {
      updateSet.others = updateSet.others?.map((other) => ({
        ...other,
        ...columns,
        client,
      }));
    }

    if (updateSet.todos) {
      updateSet.todos = updateSet.todos?.map((todo) => ({
        ...todo,
        ...columns,
        client,
      }));
    }

    if (updateSet.investigations) {
      updateSet.investigations = updateSet.investigations?.map(
        (investigation) => ({
          ...investigation,
          ...columns,
          client,
        }),
      );
    }

    if (updateSet.studyContents) {
      updateSet.studyContents = updateSet.studyContents?.map(
        (studyContent) => ({
          ...studyContent,
          ...columns,
          client,
        }),
      );
    }

    this.taskRepository.merge(current, {
      ...updateSet,
      ...columns,
      client,
    });

    if (updateSet.issue) {
      if (Number(updateSet.issue.id)) {
        current.issue = await this.issueService.update(user, updateSet.issue);
      } else {
        const issue = await this.issueService.findByTaskId(user, input.id);
        if (issue) {
          await this.issueService.deleteByTaskId(user, input.id);
        }

        delete updateSet.issue.id;
        updateSet.issue.taskId = input.id;
        current.issue = await this.issueService.create(user, updateSet.issue);
      }
    }

    return this.taskRepository.save(current);
  }

  async delete(user: JWTPayload, input: TaskInput): Promise<Task> {
    const task = await this.taskRepository.findOne(
      {
        id: input.id,
        client: { id: user.clientId },
      },
      {
        relations: [
          'issue',
          'issue.causes',
          'issue.causes.causeConditions',
          'studyContents',
          'targets',
          'todos',
          'investigations',
          'others',
        ],
      },
    );

    if (!task) {
      throw new HttpException('課題がありません', HttpStatus.BAD_REQUEST);
    }

    const now = new Date();
    const columns = {
      deletedUserId: user.userId,
      deletedAt: now,
    };

    task.deletedUserId = columns.deletedUserId;
    task.deletedAt = columns.deletedAt;

    task.issue &&
      (task.issue = {
        ...task.issue,
        ...columns,
        causes: task.issue?.causes.map((cause) => ({
          ...cause,
          ...columns,
          causeConditions: cause.causeConditions?.map((causeCondition) => ({
            ...causeCondition,
            ...columns,
          })),
        })),
      });

    task.targets = task.targets?.map((target) => ({
      ...target,
      ...columns,
    }));

    task.investigations = task.investigations?.map((investigation) => ({
      ...investigation,
      ...columns,
    }));

    task.todos = task.todos?.map((todo) => ({
      ...todo,
      ...columns,
    }));

    task.others = task.others?.map((other) => ({
      ...other,
      ...columns,
    }));

    task.studyContents = task.studyContents?.map((studyContent) => ({
      ...studyContent,
      ...columns,
    }));

    //.softdelete()を使うと beforeUpdate と afterUpdate で event.entityが undefinedになって楽観ロックが働かなくなる
    return this.taskRepository.save<Task>(task);
  }
}
