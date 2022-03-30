import { Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { Position } from './position.entity';
import { PositionService } from './position.service';

@Resolver()
export class PositionResolver {
  constructor(private readonly positionService: PositionService) {}

  @Query(() => [Position])
  @UseGuards(GqlAuthGuard)
  async findAllPositions(@CurrentUser() user: JWTPayload) {
    return this.positionService.findAll(user);
  }
}
