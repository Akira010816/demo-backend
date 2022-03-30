import { Args, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ApprovalCategory,
  ApprovalCategorySlug,
} from './approvalCategory.entity';
import { ApprovalCategoryService } from './approvalCategory.service';

@Resolver('ApprovalCategory')
export class ApprovalCategoryResolver {
  constructor(
    private readonly approvalCategoryService: ApprovalCategoryService,
  ) {
    this.approvalCategoryService = approvalCategoryService;
  }

  @Query(() => ApprovalCategory, { nullable: true })
  @UseGuards(GqlAuthGuard)
  async findApprovalCategoryBySlug(
    @CurrentUser() user: JWTPayload,
    @Args('slug', { type: () => String }) slug: ApprovalCategorySlug,
  ) {
    return await this.approvalCategoryService.findBySlug(user, slug);
  }
}
