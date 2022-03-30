import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { MeasureService } from './measure.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { Measure } from './measure.entity';
import { CreateMeasureInput, UpdateMeasureInput } from './measure.input';

@Resolver()
export class MeasureResolver {
  constructor(private readonly measureService: MeasureService) {}

  @Query(() => [Measure])
  @UseGuards(GqlAuthGuard)
  async findAllMeasures(@CurrentUser() user: JWTPayload) {
    return await this.measureService.findAllMeasures(user);
  }

  @Mutation(() => Measure)
  @UseGuards(GqlAuthGuard)
  async createMeasure(
    @Args('createMeasureInput') createMeasureInput: CreateMeasureInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.measureService.create(user, createMeasureInput);
  }

  @Mutation(() => Measure)
  @UseGuards(GqlAuthGuard)
  async updateMeasure(
    @Args('updateMeasureInput') updateMeasureInput: UpdateMeasureInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.measureService.update(user, updateMeasureInput);
  }
}
