import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanFormulationRequest } from './planFormulationRequest.entity';
import { CreatePlanFormulationRequestInput } from './planFormulationRequest.input';
import { PlanFormulationRequestService } from './planFormulationRequest.service';

@Resolver()
export class PlanFormulationRequestResolver {
  constructor(
    private readonly planFormulationRequestService: PlanFormulationRequestService,
  ) {}

  @Mutation(() => PlanFormulationRequest)
  @UseGuards(GqlAuthGuard)
  async createPlanFormulationRequest(
    @CurrentUser() user: JWTPayload,
    @Args('createPlanFormulationRequestInput')
    createPlanFormulationRequestInput: CreatePlanFormulationRequestInput,
  ) {
    return await this.planFormulationRequestService.create(
      user,
      createPlanFormulationRequestInput,
    );
  }
}
