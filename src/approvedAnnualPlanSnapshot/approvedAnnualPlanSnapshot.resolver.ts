import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { CreateApprovedAnnualPlanSnapshotInput } from './approvedAnnualPlanSnapshot.input';
import { ApprovedAnnualPlanSnapshotService } from './approvedAnnualPlanSnapshot.service';
import { ApprovedAnnualPlanSnapshot } from './approvedAnnualPlanSnapshot.entity';

@Resolver('ApprovedAnnualPlanSnapshot')
export class ApprovedAnnualPlanSnapshotResolver {
  constructor(
    private readonly approvedAnnualPlanSnapshotService: ApprovedAnnualPlanSnapshotService,
  ) {
    this.approvedAnnualPlanSnapshotService = approvedAnnualPlanSnapshotService;
  }

  @Mutation(() => ApprovedAnnualPlanSnapshot, { nullable: false })
  @UseGuards(GqlAuthGuard)
  async createApprovedAnnualPlanSnapshot(
    @CurrentUser() user: JWTPayload,
    @Args('createApprovedAnnualPlanSnapshotInput')
    input: CreateApprovedAnnualPlanSnapshotInput,
  ) {
    return this.approvedAnnualPlanSnapshotService.create(user, input);
  }
}
