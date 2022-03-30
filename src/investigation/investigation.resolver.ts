import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Investigation } from '../investigation/investigation.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { InvestigationInput } from '../investigation/investigation.input';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { InvestigationService } from '../investigation/investigation.service';

@Resolver('Investigation')
export class InvestigationResolver {
  constructor(private readonly investigationService: InvestigationService) {}

  @Mutation(() => [Investigation])
  @UseGuards(GqlAuthGuard)
  async setMeasuresToInvestigations(
    @Args({ name: 'investigationsInput', type: () => [InvestigationInput] })
    investigationsInput: InvestigationInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.investigationService.setMeasures(
      user,
      investigationsInput,
    );
  }
}
