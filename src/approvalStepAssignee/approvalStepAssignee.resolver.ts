import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ApproveApprovalStepAssigneeInput,
  CancelApprovalStepAssigneeInput,
  RejectApprovalStepAssigneeInput,
  UpdateApprovalStepAssigneeInput,
} from './approvalStepAssignee.input';
import { ApprovalStepAssigneeService } from './approvalStepAssignee.service';
import { ApprovalStepAssignee } from './approvalStepAssignee.entity';

@Resolver()
export class ApprovalStepAssigneeResolver {
  constructor(
    private readonly approvalStepAssigneeService: ApprovalStepAssigneeService,
  ) {
    this.approvalStepAssigneeService = approvalStepAssigneeService;
  }

  @Mutation(() => ApprovalStepAssignee)
  @UseGuards(GqlAuthGuard)
  async rejectApprovalStepAssignee(
    @CurrentUser() user: JWTPayload,
    @Args('rejectApprovalStepAssigneeInput')
    rejectApprovalStepAssigneeInput: RejectApprovalStepAssigneeInput,
  ) {
    return await this.approvalStepAssigneeService.reject(
      user,
      rejectApprovalStepAssigneeInput,
    );
  }

  @Mutation(() => ApprovalStepAssignee)
  @UseGuards(GqlAuthGuard)
  async approveApprovalStepAssignee(
    @CurrentUser() user: JWTPayload,
    @Args('approveApprovalStepAssigneeInput')
    approveApprovalStepAssigneeInput: ApproveApprovalStepAssigneeInput,
  ) {
    return await this.approvalStepAssigneeService.approve(
      user,
      approveApprovalStepAssigneeInput,
    );
  }

  @Mutation(() => ApprovalStepAssignee)
  @UseGuards(GqlAuthGuard)
  async cancelApprovalStepAssignee(
    @CurrentUser() user: JWTPayload,
    @Args('cancelApprovalStepAssigneeInput')
    cancelApprovalStepAssigneeInput: CancelApprovalStepAssigneeInput,
  ) {
    return await this.approvalStepAssigneeService.cancel(
      user,
      cancelApprovalStepAssigneeInput,
    );
  }

  @Mutation(() => ApprovalStepAssignee)
  @UseGuards(GqlAuthGuard)
  async updateApprovalStepAssignee(
    @CurrentUser() user: JWTPayload,
    @Args('updateApprovalStepAssigneeInput')
    updateApprovalStepAssigneeInput: UpdateApprovalStepAssigneeInput,
  ) {
    return await this.approvalStepAssigneeService.update(
      user,
      updateApprovalStepAssigneeInput,
    );
  }
}
