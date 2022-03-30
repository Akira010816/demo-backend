import { Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { ItAssetTypeService } from './itAssetType.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { ItAssetType } from './itAssetType.entity';

@Resolver('ItAssetType')
export class ItAssetTypeResolver {
  constructor(private readonly itAssetTypeService: ItAssetTypeService) {}

  @Query(() => [ItAssetType])
  @UseGuards(GqlAuthGuard)
  async findAllItAssetTypes(@CurrentUser() user: JWTPayload) {
    return await this.itAssetTypeService.findAllItAssetTypes(user);
  }
}
