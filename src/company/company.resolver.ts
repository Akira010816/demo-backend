import { UseGuards } from '@nestjs/common';
import { Query, Resolver } from '@nestjs/graphql';
import { GqlAuthGuard } from 'src/auth/graphql-auth.guard';
import { JWTPayload } from 'src/auth/jwt.strategy';
import { CurrentUser } from 'src/shared/decorators/decorators';
import { Company } from './company.entity';
import { CompanyService } from './company.service';

/**
 * 事業者リゾルバ
 */
@Resolver()
export class CompanyResolver {
  constructor(private readonly companyService: CompanyService) {}

  /**
   * 全ての事業者一覧を返します。
   *
   * @param user 利用者
   * @returns 全ての事業者一覧
   */
  @Query(() => [Company])
  @UseGuards(GqlAuthGuard)
  async findAllCompanies(@CurrentUser() user: JWTPayload) {
    return this.companyService.findAllCompanies(user);
  }
}
