import { Args, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { BusinessYearService } from './businessYear.service';
import { BusinessYear } from './businessYear.entity';
import { FindBusinessYearsByRangeInput } from './businessYear.input';

@Resolver('BusinessYear')
export class BusinessYearResolver {
  constructor(private readonly businessYearService: BusinessYearService) {
    this.businessYearService = businessYearService;
  }

  @Query(() => [BusinessYear], { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findBusinessYearsByRange(
    @CurrentUser() user: JWTPayload,
    @Args('findBusinessYearsByRangeInput') input: FindBusinessYearsByRangeInput,
  ) {
    return this.businessYearService.findByRange(user, input);
  }

  @Query(() => [BusinessYear])
  @UseGuards(GqlAuthGuard)
  async findAllBusinessYears(@CurrentUser() user: JWTPayload) {
    return this.businessYearService.findAll(user);
  }
}
