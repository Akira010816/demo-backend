import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { PlanMeasureService } from './planMeasure.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasure } from './planMeasure.entity';
import {
  CopyPlanMeasureInput,
  CopyPlanMeasuresInput,
  CreatePlanMeasureInput,
  DeletePlanMeasurePricesInput,
  FindPlanMeasuresByDepartmentIdInput,
  FindPlanMeasuresByIdInput,
  UpdatePlanMeasureInput,
  DecideTargetPlanMeasuresInput,
  CompleteRegistrationPlanMeasuresInput,
  DeletePlanMeasureInput,
  FindPlanMeasuresByDepartmentIdsInput,
} from './planMeasure.input';

@Resolver()
export class PlanMeasureResolver {
  constructor(private readonly planMeasureService: PlanMeasureService) {}

  @Query(() => [PlanMeasure])
  @UseGuards(GqlAuthGuard)
  async findAllPlanMeasures(@CurrentUser() user: JWTPayload) {
    return await this.planMeasureService.findAllPlanMeasures(user);
  }

  @Query(() => [PlanMeasure])
  @UseGuards(GqlAuthGuard)
  async findPlanMeasuresByDepartmentId(
    @Args('findPlanMeasuresByDepartmentIdInput')
    input: FindPlanMeasuresByDepartmentIdInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.planMeasureService.findPlanMeasuresByDepartmentId(user, input);
  }

  @Mutation(() => PlanMeasure)
  @UseGuards(GqlAuthGuard)
  async createPlanMeasure(
    @Args('createPlanMeasureInput')
    createPlanMeasureInput: CreatePlanMeasureInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.planMeasureService.create(user, createPlanMeasureInput);
  }

  @Mutation(() => PlanMeasure)
  @UseGuards(GqlAuthGuard)
  async updatePlanMeasure(
    @Args('updatePlanMeasureInput')
    updatePlanMeasureInput: UpdatePlanMeasureInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.planMeasureService.update(user, updatePlanMeasureInput);
  }

  @Query(() => PlanMeasure)
  @UseGuards(GqlAuthGuard)
  async findPlanMeasureById(
    @CurrentUser() user: JWTPayload,
    @Args('code', { type: () => String })
    code: FindPlanMeasuresByIdInput['code'],
  ) {
    return await this.planMeasureService.findByCode(user, code);
  }

  @Mutation(() => PlanMeasure)
  @UseGuards(GqlAuthGuard)
  async deletePlanMeasurePrices(
    @CurrentUser() user: JWTPayload,
    @Args('deletePlanMeasurePricesInput')
    deletePlanMeasurePricesInput: DeletePlanMeasurePricesInput,
  ): Promise<PlanMeasure> {
    return await this.planMeasureService.deletePlanMeasurePrices(
      user,
      deletePlanMeasurePricesInput,
    );
  }

  @Mutation(() => PlanMeasure)
  @UseGuards(GqlAuthGuard)
  async deletePlanMeasure(
    @CurrentUser() user: JWTPayload,
    @Args('deletePlanMeasureInput')
    deletePlanMeasureInput: DeletePlanMeasureInput,
  ): Promise<PlanMeasure> {
    return await this.planMeasureService.delete(user, deletePlanMeasureInput);
  }

  @Mutation(() => PlanMeasure)
  @UseGuards(GqlAuthGuard)
  async copyPlanMeasure(
    @CurrentUser() user: JWTPayload,
    @Args('copyPlanMeasureInput')
    copyPlanMeasureInput: CopyPlanMeasureInput,
  ): Promise<PlanMeasure> {
    return await this.planMeasureService.copyPlanMeasure(
      user,
      copyPlanMeasureInput,
    );
  }

  @Mutation(() => [PlanMeasure])
  @UseGuards(GqlAuthGuard)
  async copyPlanMeasures(
    @CurrentUser() user: JWTPayload,
    @Args('copyPlanMeasuresInput')
    copyPlanMeasuresInput: CopyPlanMeasuresInput,
  ): Promise<Array<PlanMeasure>> {
    return await this.planMeasureService.copyPlanMeasures(
      user,
      copyPlanMeasuresInput,
    );
  }

  @Mutation(() => Boolean)
  @UseGuards(GqlAuthGuard)
  async completeRegistrationPlanMeasures(
    @CurrentUser() user: JWTPayload,
    @Args('completeRegistrationPlanMeasuresInput')
    completeRegistrationPlanMeasuresInput: CompleteRegistrationPlanMeasuresInput,
  ): Promise<boolean> {
    return await this.planMeasureService.completeRegistration(
      user,
      completeRegistrationPlanMeasuresInput,
    );
  }

  @Mutation(() => [PlanMeasure], { nullable: 'itemsAndList' })
  @UseGuards(GqlAuthGuard)
  async decideTargetPlanMeasures(
    @CurrentUser() user: JWTPayload,
    @Args('decideTargetPlanMeasuresInput')
    decideTargetPlanMeasuresInput: DecideTargetPlanMeasuresInput,
  ) {
    return await this.planMeasureService.decideTargets(
      user,
      decideTargetPlanMeasuresInput,
    );
  }

  @Query(() => [PlanMeasure])
  @UseGuards(GqlAuthGuard)
  async findPlanMeasuresByDepartmentIds(
    @Args('findPlanMeasuresByDepartmentIdsInput')
    input: FindPlanMeasuresByDepartmentIdsInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.planMeasureService.findPlanMeasuresByDepartmentIds(user, input);
  }
}
