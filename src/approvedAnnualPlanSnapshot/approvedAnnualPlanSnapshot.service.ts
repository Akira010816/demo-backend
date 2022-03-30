import { Injectable, NotFoundException } from '@nestjs/common';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { InjectRepository } from '@nestjs/typeorm';
import { ApprovedAnnualPlanSnapshot } from './approvedAnnualPlanSnapshot.entity';
import { CreateApprovedAnnualPlanSnapshotInput } from './approvedAnnualPlanSnapshot.input';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';

@Injectable()
export class ApprovedAnnualPlanSnapshotService {
  constructor(
    @InjectRepository(ApprovedAnnualPlanSnapshot)
    private readonly approvedAnnualPlanSnapshotRepository: Repository<ApprovedAnnualPlanSnapshot>,
    @InjectRepository(AnnualPlan)
    private readonly annualPlanRepository: Repository<AnnualPlan>,
  ) {
    this.approvedAnnualPlanSnapshotRepository = approvedAnnualPlanSnapshotRepository;
    this.annualPlanRepository = annualPlanRepository;
  }

  async create(
    user: JWTPayload,
    input: CreateApprovedAnnualPlanSnapshotInput,
  ): Promise<ApprovedAnnualPlanSnapshot> {
    const annualPlan = await this.annualPlanRepository.findOne(
      input.approvedAnnualPlanId,
      {
        where: { client: { id: user.clientId } },
        relations: ['department', 'plans', 'client'],
      },
    );

    if (!annualPlan) {
      throw new NotFoundException();
    }

    return await this.approvedAnnualPlanSnapshotRepository.save({
      client: { id: user.clientId },
      annualPlan: { id: annualPlan.id },
      plans: annualPlan.plans,
      createdUserId: user.userId,
    });
  }
}
