import { Args, Int, Mutation, Query, Resolver } from '@nestjs/graphql';
import { NotFoundException, UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { CauseService } from './cause.service';
import { Cause } from './cause.entity';
import { CauseInput } from './cause.input';

@Resolver('Cause')
export class CauseResolver {
  constructor(private readonly causeService: CauseService) {
    this.causeService = causeService;
  }

  @Query(() => [Cause])
  @UseGuards(GqlAuthGuard)
  async findAllCausesByIssueId(
    @CurrentUser() user: JWTPayload,
    @Args('issueId', { type: () => Int }) issueId: number,
  ) {
    if (!issueId) {
      throw new NotFoundException();
    }
    return await this.causeService.findAll(user, issueId ?? 0);
  }

  @Query(() => Cause)
  @UseGuards(GqlAuthGuard)
  async findCauseById(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => Int }) id: CauseInput['id'],
  ) {
    return await this.causeService.findOne(user, id);
  }

  @Mutation(() => Cause)
  @UseGuards(GqlAuthGuard)
  async createCause(
    @Args('causeInput') createCauseInput: CauseInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeService.create(user, createCauseInput);
  }

  @Mutation(() => Cause)
  @UseGuards(GqlAuthGuard)
  async updateCause(
    @Args('causeInput') updateCauseInput: CauseInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeService.update(user, updateCauseInput);
  }

  @Mutation(() => Cause)
  @UseGuards(GqlAuthGuard)
  async deleteCause(
    @Args('causeInput') deleteCauseInput: CauseInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeService.delete(user, deleteCauseInput);
  }

  @Mutation(() => [Cause])
  @UseGuards(GqlAuthGuard)
  async setMeasuresToCauses(
    @Args({ name: 'causesInput', type: () => [CauseInput] })
    causesInput: CauseInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeService.setMeasures(user, causesInput);
  }
}
