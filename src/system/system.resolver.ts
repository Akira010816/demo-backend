import { Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { SystemService } from './system.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { System } from './system.entity';

@Resolver('System')
export class SystemResolver {
  constructor(private readonly systemService: SystemService) {}

  @Query(() => [System])
  @UseGuards(GqlAuthGuard)
  async findAllSystems(@CurrentUser() user: JWTPayload) {
    return await this.systemService.findAllSystems(user);
  }
}
