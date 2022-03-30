import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Other } from '../other/other.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { OtherInput } from '../other/other.input';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { OtherService } from '../other/other.service';

@Resolver('Other')
export class OtherResolver {
  constructor(private readonly otherService: OtherService) {}

  @Mutation(() => [Other])
  @UseGuards(GqlAuthGuard)
  async setMeasuresToOthers(
    @Args({ name: 'othersInput', type: () => [OtherInput] })
    othersInput: OtherInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.otherService.setMeasures(user, othersInput);
  }
}
