import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { PlanService } from './plan.service';
import { Plan } from './plan.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ConfirmPlansInput,
  FindPlanByDepartmentIdAndBusinessYearInput,
  FindPlansByOrganizationLevelInput,
  UpdatePlansInput,
  CreatePlansInput,
} from './plan.input';

@Resolver('Plan')
export class PlanResolver {
  constructor(private readonly planService: PlanService) {
    this.planService = planService;
  }

  @Query(() => [Plan], { nullable: 'itemsAndList' })
  @UseGuards(GqlAuthGuard)
  async findPlansByOrganizationLevel(
    @CurrentUser() user: JWTPayload,
    @Args('findPlansByOrganizationLevelInput')
    input: FindPlansByOrganizationLevelInput,
  ) {
    return this.planService.findPlansByOrganizationLevel(user, input);
  }

  @Query(() => Plan, { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findPlanByDepartmentIdAndBusinessYear(
    @CurrentUser() user: JWTPayload,
    @Args('findPlanByDepartmentIdAndBusinessYearInput')
    input: FindPlanByDepartmentIdAndBusinessYearInput,
  ) {
    return this.planService.findPlanByDepartmentIdAndBusinessYear(user, input);
  }

  @Mutation(() => [Plan], { nullable: 'itemsAndList' })
  @UseGuards(GqlAuthGuard)
  async confirmPlans(
    @CurrentUser() user: JWTPayload,
    @Args('confirmPlansInput')
    input: ConfirmPlansInput,
  ) {
    return this.planService.confirmPlans(user, input);
  }

  @Mutation(() => [Plan], { nullable: 'itemsAndList' })
  @UseGuards(GqlAuthGuard)
  async updatePlans(
    @CurrentUser() user: JWTPayload,
    @Args('updatePlansInput')
    input: UpdatePlansInput,
  ) {
    return this.planService.updatePlans(user, input);
  }

  @Mutation(() => [Plan], { nullable: 'itemsAndList' })
  @UseGuards(GqlAuthGuard)
  async createPlans(
    @CurrentUser() user: JWTPayload,
    @Args('createPlansInput')
    input: CreatePlansInput,
  ) {
    return this.planService.createPlans(user, input);
  }
}
