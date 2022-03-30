import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Target } from '../target/target.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { TargetInput } from '../target/target.input';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { TargetService } from '../target/target.service';

@Resolver('Target')
export class TargetResolver {
  constructor(private readonly targetService: TargetService) {}

  @Mutation(() => [Target])
  @UseGuards(GqlAuthGuard)
  async setMeasuresToTargets(
    @Args({ name: 'targetsInput', type: () => [TargetInput] })
    targetsInput: TargetInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.targetService.setMeasures(user, targetsInput);
  }
}
