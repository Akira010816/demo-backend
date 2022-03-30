import { Args, Int, Mutation, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { IssueService } from './issue.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { Issue } from './issue.entity';
import { IssueInput } from './issue.input';

@Resolver('Issue')
export class IssueResolver {
  constructor(private readonly issueService: IssueService) {}

  @Query(() => Issue)
  @UseGuards(GqlAuthGuard)
  async findIssueById(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => Int }) id: IssueInput['id'],
  ) {
    return await this.issueService.findOne(user, id);
  }

  @Mutation(() => Issue)
  @UseGuards(GqlAuthGuard)
  async createIssue(
    @Args('issueInput') createIssueInput: IssueInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.issueService.create(user, createIssueInput);
  }

  @Mutation(() => Issue)
  @UseGuards(GqlAuthGuard)
  async updateIssue(
    @Args('issueInput') updateIssueInput: IssueInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.issueService.update(user, updateIssueInput);
  }
}
