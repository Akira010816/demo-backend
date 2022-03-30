import { Args, Int, Mutation, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { ProjectService } from './project.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { Project } from './project.entity';
import { ProjectInput, DeleteProjectInput } from './project.input';

@Resolver('Project')
export class ProjectResolver {
  constructor(private readonly projectService: ProjectService) {}

  @Query(() => [Project])
  @UseGuards(GqlAuthGuard)
  async findAllProjects(@CurrentUser() user: JWTPayload) {
    return this.projectService.findAll(user);
  }

  @Query(() => Project)
  @UseGuards(GqlAuthGuard)
  async findProjectById(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => Int }) id: ProjectInput['id'],
  ) {
    return this.projectService.findOne(user, id);
  }

  @Mutation(() => Project)
  @UseGuards(GqlAuthGuard)
  async createProject(
    @Args('projectInput') projectInput: ProjectInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.projectService.create(user, projectInput);
  }

  @Mutation(() => Project)
  @UseGuards(GqlAuthGuard)
  async updateProject(
    @Args('projectInput') projectInput: ProjectInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.projectService.update(user, projectInput);
  }

  @Mutation(() => Project)
  @UseGuards(GqlAuthGuard)
  async deleteProject(
    @Args('deleteProjectInput') _deleteProjectInput: DeleteProjectInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.projectService.delete(user, _deleteProjectInput);
  }
}
