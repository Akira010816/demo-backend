import { Query, Resolver } from '@nestjs/graphql';
import { PriceUnitService } from '../priceUnit/priceUnit.service';
import { PriceUnit } from '../priceUnit/priceUnit.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';

@Resolver('PriceUnit')
export class PriceUnitResolver {
  constructor(private readonly priceUnitService: PriceUnitService) {
    this.priceUnitService = priceUnitService;
  }

  @Query(() => PriceUnit, { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findPriceUnit(@CurrentUser() user: JWTPayload) {
    return this.priceUnitService.findPriceUnit(user);
  }
}
