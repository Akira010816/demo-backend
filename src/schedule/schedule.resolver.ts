import { Mutation, Resolver, Args, Query } from '@nestjs/graphql';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { ScheduleService } from './schedule.service';
import { UseGuards } from '@nestjs/common';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { UpdateScheduleInput } from './schedule.input';
import { Project } from '../project/project.entity';
import { ProjectService } from '../project/project.service';

/**
 * スケジュールリゾルバ
 */
@Resolver('Schedule')
export class ScheduleResolver {
  constructor(
    private readonly scheduleService: ScheduleService,
    private readonly projectService: ProjectService,
  ) {}

  /**
   * スケジュール一覧を取得
   *
   * @param user
   * @returns
   */
  @Query(() => [Project])
  @UseGuards(GqlAuthGuard)
  async findSchedules(@CurrentUser() user: JWTPayload) {
    return this.scheduleService.findSchedules(user);
  }

  /**
   * スケジュール一覧を更新
   *
   * @param scheduleInput
   * @param user
   * @returns
   */
  @Mutation(() => Boolean)
  @UseGuards(GqlAuthGuard)
  async updateSchedules(
    @Args('scheduleInput') scheduleInput: UpdateScheduleInput,
    @CurrentUser() user: JWTPayload,
  ): Promise<boolean> {
    return this.scheduleService.updateSchedules(user, scheduleInput);
  }
}
