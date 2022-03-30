import { /*Args, */ Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { ApprovalFlow } from './approvalFlow.entity';
import { ApprovalFlowService } from './approvalFlow.service';
//import { UserDepartment } from '../userDepartment/userDepartment.entity';
//import { Department } from '../department/department.entity';

@Resolver('ApprovalFlow')
export class ApprovalFlowResolver {
  constructor(private readonly approvalFlowService: ApprovalFlowService) {}

  @Query(() => ApprovalFlow)
  @UseGuards(GqlAuthGuard)
  async findApprovalFlow(
    @CurrentUser() user: JWTPayload,
    //@Args('issuedFrom', { type: () => Department['id'] }) issuedFrom: Department['id'],
    //@Args('approvalCategorySlug', { type: () => String }) approvalCategorySlug: string,
    //@Args('issuerId', { type: () => User['id'] }) issuerId: User['id'],
  ) {
    return await this.approvalFlowService.build(user, 1); // 依頼対象のオーナー組織を取得予定
  }
}
