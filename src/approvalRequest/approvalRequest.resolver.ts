import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { ApprovalRequest } from './approvalRequest.entity';
import {
  CancelApprovalRequestInput,
  CreateApprovalRequestInput,
  DeleteApprovalRequestInput,
  FindApprovalRequestsRequestedByMeInput,
  UpdateApprovalRequestInput,
} from './approvalRequest.input';
import { ApprovalRequestService } from './approvalRequest.service';

@Resolver()
export class ApprovalRequestResolver {
  constructor(private readonly approvalRequestService: ApprovalRequestService) {
    this.approvalRequestService = approvalRequestService;
  }

  @Query(() => [ApprovalRequest])
  @UseGuards(GqlAuthGuard)
  async findApprovalRequestsAssignedToMe(@CurrentUser() user: JWTPayload) {
    return await this.approvalRequestService.findApprovalRequestsAssignedToMe(
      user,
    );
  }

  @Query(() => [ApprovalRequest])
  @UseGuards(GqlAuthGuard)
  async findApprovalRequestsRequestedByMe(
    @CurrentUser() user: JWTPayload,
    @Args('findApprovalRequestsRequestedByMeInput')
    findApprovalRequestsRequestedByMeInput: FindApprovalRequestsRequestedByMeInput,
  ) {
    return await this.approvalRequestService.findApprovalRequestsRequestedByMe(
      user,
      findApprovalRequestsRequestedByMeInput,
    );
  }

  @Mutation(() => ApprovalRequest)
  @UseGuards(GqlAuthGuard)
  async create(
    @CurrentUser() user: JWTPayload,
    @Args('createApprovalRequestInput')
    createApprovalRequestInput: CreateApprovalRequestInput,
  ) {
    return await this.approvalRequestService.create(
      user,
      createApprovalRequestInput,
    );
  }

  @Mutation(() => ApprovalRequest)
  @UseGuards(GqlAuthGuard)
  async cancelApprovalRequest(
    @CurrentUser() user: JWTPayload,
    @Args('cancelApprovalRequestInput')
    cancelApprovalRequestInput: CancelApprovalRequestInput,
  ) {
    return await this.approvalRequestService.cancel(
      user,
      cancelApprovalRequestInput,
    );
  }

  @Mutation(() => ApprovalRequest)
  @UseGuards(GqlAuthGuard)
  async updateApprovalRequest(
    @CurrentUser() user: JWTPayload,
    @Args('updateApprovalRequestInput')
    updateApprovalRequestInput: UpdateApprovalRequestInput,
  ) {
    return await this.approvalRequestService.update(
      user,
      updateApprovalRequestInput,
    );
  }

  @Mutation(() => ApprovalRequest)
  @UseGuards(GqlAuthGuard)
  async delete(
    @CurrentUser() user: JWTPayload,
    @Args('deleteApprovalRequestInput')
    deleteApprovalRequestInput: DeleteApprovalRequestInput,
  ) {
    return await this.approvalRequestService.delete(
      user,
      deleteApprovalRequestInput,
    );
  }
}
