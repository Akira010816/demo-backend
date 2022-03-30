import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { AnnualPlan } from './annualPlan.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ApproveAnnualPlanInput,
  CancelApprovedAnnualPlanInput,
  CreateAnnualPlanInput,
  FindAnnualPlanByYearInput,
  UpdateAnnualPlanInput,
} from './annualPlan.input';
import { Plan } from '../plan/plan.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { TenancyService } from '../tenancy/tenancy.service';

@Injectable()
export class AnnualPlanService {
  constructor(
    @InjectRepository(AnnualPlan)
    private readonly annualPlanRepository: Repository<AnnualPlan>,
    @InjectRepository(BusinessYear)
    private readonly businessYearRepository: Repository<BusinessYear>,
    private readonly tenancyService: TenancyService,
  ) {
    this.annualPlanRepository = annualPlanRepository;
  }

  async findAllAnnualPlans(user: JWTPayload): Promise<Array<AnnualPlan>> {
    return this.annualPlanRepository.find({
      where: { client: { id: user.clientId } },
      order: { id: 'ASC' },
      relations: ['department', 'client'],
    });
  }

  /**
   * Find a annualPlan by year
   *
   * @param user
   * @param input
   * @returns Promise<AnnualPlan | undefined>
   */
  async findAnnualPlanByYear(
    user: JWTPayload,
    input: FindAnnualPlanByYearInput,
  ): Promise<AnnualPlan | undefined> {
    const annualPlan = await this.annualPlanRepository.findOne({
      join: {
        alias: 'annualPlan',
        innerJoin: {
          businessYear: 'annualPlan.businessYear',
          plans: 'annualPlan.plans',
          department: 'plans.department',
          departmentLevel: 'department.departmentLevel',
        },
      },

      where: (qb: SelectQueryBuilder<Plan>) => {
        qb.where({ client: { id: user.clientId } });

        qb.andWhere('businessYear.year = :year', {
          year: input.year,
        });

        qb.andWhere('departmentLevel.order = :organizationLevel', {
          organizationLevel: input.organizationLevel,
        });

        qb.andWhere('department.isCommon = :isCommon', {
          isCommon: false,
        });
      },
      relations: ['plans', 'plans.department'],
    });

    if (!annualPlan) {
      return undefined;
    }

    annualPlan.plans =
      annualPlan.plans?.filter(
        (plan) =>
          plan.department.departmentLevel?.order === input.organizationLevel &&
          !plan.department.isCommon,
      ) ?? [];

    return annualPlan;
  }

  async approveAnnualPlan(
    user: JWTPayload,
    input: ApproveAnnualPlanInput,
  ): Promise<AnnualPlan> {
    console.log('input', input);
    const annualPlanToApprove = await this.annualPlanRepository.findOne(
      input.id,
      {
        where: { client: { id: user.clientId } },
        relations: ['plans', 'plans.department'],
      },
    );
    if (!annualPlanToApprove) {
      throw new NotFoundException();
    }
    this.annualPlanRepository.merge(annualPlanToApprove, {
      updatedUserId: user.userId,
      status: 'approved',
      version: input.version,
    });
    return this.annualPlanRepository.save(annualPlanToApprove);
  }
  async cancelApprovedAnnualPlan(
    user: JWTPayload,
    input: CancelApprovedAnnualPlanInput,
  ): Promise<AnnualPlan> {
    const approvedAnnualPlanToCancel = await this.annualPlanRepository.findOne(
      input.id,
      {
        where: { client: { id: user.clientId } },
        relations: ['plans', 'plans.department'],
      },
    );
    if (!approvedAnnualPlanToCancel) {
      throw new NotFoundException();
    }
    this.annualPlanRepository.merge(approvedAnnualPlanToCancel, {
      updatedUserId: user.userId,
      status: 'inProgress',
      version: input.version,
    });
    return this.annualPlanRepository.save(approvedAnnualPlanToCancel);
  }

  async update(
    user: JWTPayload,
    input: UpdateAnnualPlanInput,
  ): Promise<AnnualPlan> {
    const { id, ...updateSet } = input;

    const annualPlan = await this.annualPlanRepository.findOne(id, {
      where: { client: { id: user.clientId } },
      relations: ['plans', 'plans.department'],
    });

    if (!annualPlan) {
      throw new NotFoundException();
    }

    const columns = {
      updatedUserId: user.userId,
      createdUserId: user.userId,
    };

    this.annualPlanRepository.merge(annualPlan, {
      ...updateSet,
      ...columns,
      client: { id: user.clientId },
    });

    return this.annualPlanRepository.save(annualPlan);
  }

  async create(
    user: JWTPayload,
    input: CreateAnnualPlanInput,
  ): Promise<AnnualPlan> {
    const businessYear = await this.businessYearRepository.findOne(
      input.businessYearId,
      {
        where: { client: { id: user.clientId } },
      },
    );

    if (!businessYear) {
      throw new BadRequestException('invalid business year ID');
    }

    const existingAnnualPlan = await this.annualPlanRepository.findOne({
      join: {
        alias: 'annualPlan',
        innerJoin: {
          businessYear: 'annualPlan.businessYear',
        },
      },
      where: (qb: SelectQueryBuilder<Plan>) => {
        qb.where({ client: { id: user.clientId } });
        qb.andWhere('businessYear.id = :businessYearId', {
          businessYearId: input.businessYearId,
        });
      },
    });

    if (existingAnnualPlan) {
      return existingAnnualPlan;
    }

    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
    };

    const connection = await this.tenancyService.getCurrentConnection();
    return await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        const annulPlan = new AnnualPlan();
        transactionalEntityManager.merge(AnnualPlan, annulPlan, {
          ...columns,
          businessYear,
          client,
        });
        return transactionalEntityManager.save(annulPlan);
      },
    );
  }
}
