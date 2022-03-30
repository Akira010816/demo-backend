import {
  BadRequestException,
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Transaction, TransactionRepository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { Issue } from './issue.entity';
import { IssueInput } from './issue.input';
import { TaskInput } from '../task/task.input';

@Injectable()
export class IssueService {
  constructor(
    @InjectRepository(Issue)
    private readonly issueRepository: Repository<Issue>,
  ) {}

  findByTaskId(
    user: JWTPayload,
    taskId: TaskInput['id'],
  ): Promise<Issue | undefined> {
    return this.issueRepository.findOne({
      where: { taskId, client: { id: user.clientId } },
      relations: ['causes', 'causes.causeConditions'],
    });
  }

  findOne(user: JWTPayload, id: IssueInput['id']): Promise<Issue | undefined> {
    return this.issueRepository.findOne(id, {
      where: { client: { id: user.clientId } },
      relations: ['causes', 'causes.causeConditions'],
    });
  }

  @Transaction({ isolation: 'SERIALIZABLE' })
  async create(
    user: JWTPayload,
    input: IssueInput,
    @TransactionRepository(Issue) issueRepository?: Repository<Issue>,
  ): Promise<Issue> {
    if (!issueRepository) {
      throw new BadRequestException('no transaction');
    }
    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
      updatedUserId: user.userId,
    };

    return issueRepository.save({
      ...input,
      ...columns,
      client,
      causes: input.causes?.map((cause) => ({
        ...cause,
        ...columns,
        client,
        causeConditions: cause.causeConditions?.map((causeCondition) => ({
          ...causeCondition,
          ...columns,
          client,
        })),
      })),
    });
  }

  async update(user: JWTPayload, input: IssueInput): Promise<Issue> {
    if (!input.id) {
      throw new BadRequestException(input.id);
    }

    const client = { id: Number(user.clientId) };
    const issue = await this.issueRepository.findOne(input.id);

    if (!issue) {
      throw new NotFoundException(input.id);
    }

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    const columns = {
      updatedUserId: user.userId,
      createdUserId: issue.createdUserId ?? user.userId,
    };

    await this.issueRepository.merge(issue, {
      ...updateSet,
      ...columns,
      client,
      causes: updateSet.causes?.map((cause) => ({
        ...cause,
        ...columns,
        client,
        causeConditions: cause.causeConditions?.map((condition) => ({
          ...condition,
          ...columns,
          client,
        })),
      })),
    });

    return this.issueRepository.save(issue);
  }

  async deleteByTaskId(
    user: JWTPayload,
    taskId: TaskInput['id'],
  ): Promise<Issue> {
    if (!taskId) {
      throw new BadRequestException(taskId);
    }

    const issue = await this.issueRepository.findOne(
      {
        taskId,
        client: { id: user.clientId },
      },
      {
        relations: ['causes', 'causes.causeConditions'],
      },
    );

    if (!issue) {
      throw new HttpException('問題がありません', HttpStatus.BAD_REQUEST);
    }

    return this.issueRepository.remove(issue);
  }
}
