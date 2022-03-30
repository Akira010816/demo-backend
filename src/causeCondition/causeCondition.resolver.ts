import { Args, Int, Mutation, Query, Resolver } from '@nestjs/graphql';
import { NotFoundException, UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { CauseConditionService } from './causeCondition.service';
import { CauseCondition } from './causeCondition.entity';
import { CauseConditionInput } from './causeCondition.input';

@Resolver('CauseCondition')
export class CauseConditionResolver {
  constructor(private readonly causeConditionService: CauseConditionService) {}

  @Query(() => [CauseCondition])
  @UseGuards(GqlAuthGuard)
  async findAllCauseConditionsByCauseId(
    @CurrentUser() user: JWTPayload,
    @Args('causeId', { type: () => Int }) causeId: number,
  ) {
    if (!causeId) {
      throw new NotFoundException();
    }
    return await this.causeConditionService.findAll(user, causeId ?? 0);
  }

  @Query(() => CauseCondition)
  @UseGuards(GqlAuthGuard)
  async findCauseConditionById(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => Int }) id: CauseConditionInput['id'],
  ) {
    return await this.causeConditionService.findOne(user, id);
  }

  @Mutation(() => CauseCondition)
  @UseGuards(GqlAuthGuard)
  async createCauseCondition(
    @Args('causeConditionInput')
    creteCauseConditionInput: CauseConditionInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeConditionService.create(
      user,
      creteCauseConditionInput,
    );
  }

  @Mutation(() => CauseCondition)
  @UseGuards(GqlAuthGuard)
  async updateCauseCondition(
    @Args('causeConditionInput')
    updateCauseConditionInput: CauseConditionInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeConditionService.update(
      user,
      updateCauseConditionInput,
    );
  }

  @Mutation(() => CauseCondition)
  @UseGuards(GqlAuthGuard)
  async deleteCauseCondition(
    @Args('causeConditionInput')
    deleteCauseConditionInput: CauseConditionInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.causeConditionService.delete(
      user,
      deleteCauseConditionInput,
    );
  }
}
