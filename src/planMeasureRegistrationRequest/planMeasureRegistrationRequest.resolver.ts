import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasureRegistrationRequest } from './planMeasureRegistrationRequest.entity';
import { CreatePlanMeasureRegistrationRequestInput } from './planMeasureRegistrationRequest.input';
import { PlanMeasureRegistrationRequestService } from './planMeasureRegistrationRequest.service';

@Resolver()
export class PlanMeasureRegistrationRequestResolver {
  constructor(
    private readonly planMeasureRegistrationRequestService: PlanMeasureRegistrationRequestService,
  ) {}

  @Mutation(() => PlanMeasureRegistrationRequest)
  @UseGuards(GqlAuthGuard)
  async createPlanMeasureRegistrationRequest(
    @CurrentUser() user: JWTPayload,
    @Args('createPlanMeasureRegistrationRequestInput')
    createPlanMeasureRegistrationRequestInput: CreatePlanMeasureRegistrationRequestInput,
  ) {
    return await this.planMeasureRegistrationRequestService.create(
      user,
      createPlanMeasureRegistrationRequestInput,
    );
  }
}
