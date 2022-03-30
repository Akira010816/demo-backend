import { Args, Int, Mutation, Query, Resolver } from '@nestjs/graphql';
import { NotFoundException, UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { TaskService } from './task.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { Task } from './task.entity';
import { TaskInput } from './task.input';

@Resolver('Task')
export class TaskResolver {
  constructor(private readonly taskService: TaskService) {}

  @Query(() => [Task])
  @UseGuards(GqlAuthGuard)
  async findAllTasks(
    @CurrentUser() user: JWTPayload,
    @Args('projectId', { type: () => Int }) projectId: number,
  ) {
    if (!projectId) {
      throw new NotFoundException();
    }
    return this.taskService.findAll(user, projectId ?? 0);
  }

  @Query(() => [Task])
  @UseGuards(GqlAuthGuard)
  async findTasksByProjectId(
    @CurrentUser() user: JWTPayload,
    @Args('projectId', { type: () => Int }) projectId: number,
  ) {
    if (!projectId) {
      throw new NotFoundException();
    }
    return this.taskService.findTasksByProjectId(user, projectId ?? 0);
  }

  @Query(() => Task)
  @UseGuards(GqlAuthGuard)
  async findTaskById(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => Int }) id: TaskInput['id'],
  ) {
    return this.taskService.findOne(user, id);
  }

  @Mutation(() => Task)
  @UseGuards(GqlAuthGuard)
  async createTask(
    @Args('taskInput') taskInput: TaskInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.taskService.create(user, taskInput);
  }

  @Mutation(() => Task)
  @UseGuards(GqlAuthGuard)
  async updateTask(
    @Args('taskInput') taskInput: TaskInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.taskService.update(user, taskInput);
  }

  @Mutation(() => Task)
  @UseGuards(GqlAuthGuard)
  async deleteTask(
    @Args('deleteTaskInput') deleteTaskInput: TaskInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.taskService.delete(user, deleteTaskInput);
  }
}
