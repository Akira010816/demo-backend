import { Resolver, Query } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { AccountTitleService } from './accountTitle.service';
import { AccountTitle } from './accountTitle.entity';

@Resolver('AccountTitle')
export class AccountTitleResolver {
  constructor(private readonly accountTitleService: AccountTitleService) {
    this.accountTitleService = accountTitleService;
  }

  @Query(() => [AccountTitle], { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findAllAccountTitles(@CurrentUser() user: JWTPayload) {
    return this.accountTitleService.findAll(user);
  }
}
