import { Args, Resolver, Query, Mutation } from '@nestjs/graphql';
import { AnnualPlanService } from './annualPlan.service';
import { UseGuards } from '@nestjs/common';
import { AnnualPlan } from './annualPlan.entity';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ApproveAnnualPlanInput,
  CancelApprovedAnnualPlanInput,
  FindAnnualPlanByYearInput,
  UpdateAnnualPlanInput,
  CreateAnnualPlanInput,
} from './annualPlan.input';

@Resolver('AnnualPlan')
export class AnnualPlanResolver {
  constructor(private readonly annualPlanService: AnnualPlanService) {
    this.annualPlanService = annualPlanService;
  }

  @Query(() => [AnnualPlan], { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findAllAnnualPlans(@CurrentUser() user: JWTPayload) {
    return this.annualPlanService.findAllAnnualPlans(user);
  }

  @Query(() => AnnualPlan, { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findAnnualPlanByYear(
    @CurrentUser() user: JWTPayload,
    @Args('findAnnualPlanByYearInput') input: FindAnnualPlanByYearInput,
  ) {
    return this.annualPlanService.findAnnualPlanByYear(user, input);
  }

  @Mutation(() => AnnualPlan, { nullable: false })
  @UseGuards(GqlAuthGuard)
  async update(
    @CurrentUser() user: JWTPayload,
    @Args('updateAnnualPlanInput') input: UpdateAnnualPlanInput,
  ) {
    return this.annualPlanService.update(user, input);
  }

  @Mutation(() => AnnualPlan)
  @UseGuards(GqlAuthGuard)
  async approveAnnualPlan(
    @CurrentUser() user: JWTPayload,
    @Args('approveAnnualPlanInput')
    input: ApproveAnnualPlanInput,
  ) {
    return this.annualPlanService.approveAnnualPlan(user, input);
  }

  @Mutation(() => AnnualPlan)
  @UseGuards(GqlAuthGuard)
  async cancelApprovedAnnualPlan(
    @CurrentUser() user: JWTPayload,
    @Args('cancelApprovedAnnualPlanInput')
    input: CancelApprovedAnnualPlanInput,
  ) {
    return this.annualPlanService.cancelApprovedAnnualPlan(user, input);
  }

  @Mutation(() => AnnualPlan)
  @UseGuards(GqlAuthGuard)
  async createAnnualPlan(
    @CurrentUser() user: JWTPayload,
    @Args('createAnnualPlanInput')
    input: CreateAnnualPlanInput,
  ) {
    return this.annualPlanService.create(user, input);
  }
}
