import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { MeasureImplementationTaskService } from './measureImplementationTask.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { MeasureImplementationTask } from './measureImplementationTask.entity';
import { SetSystemsAndItAssetTypesInput } from './measureImplementationTask.input';

@Resolver()
export class MeasureImplementationTaskResolver {
  constructor(
    private readonly measureImplementationTaskService: MeasureImplementationTaskService,
  ) {}

  @Mutation(() => [MeasureImplementationTask])
  @UseGuards(GqlAuthGuard)
  async setSystemsAndItAssetTypes(
    @Args({
      name: 'setSystemsAndItAssetTypesInput',
      type: () => [SetSystemsAndItAssetTypesInput],
    })
    setSystemsAndItAssetTypesInput: SetSystemsAndItAssetTypesInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.measureImplementationTaskService.setSystemsAndItAssetTypes(
      user,
      setSystemsAndItAssetTypesInput,
    );
  }
}
