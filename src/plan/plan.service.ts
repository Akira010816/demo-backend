import { BadRequestException, Injectable } from '@nestjs/common';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { Plan } from './plan.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ConfirmPlansInput,
  FindPlanByDepartmentIdAndBusinessYearInput,
  FindPlansByOrganizationLevelInput,
  UpdatePlansInput,
  CreatePlanInput,
  CreatePlansInput,
} from './plan.input';
import { InjectRepository } from '@nestjs/typeorm';
import { Department } from '../department/department.entity';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { TenancyService } from '../tenancy/tenancy.service';

@Injectable()
export class PlanService {
  constructor(
    @InjectRepository(Plan)
    private readonly planRepository: Repository<Plan>,
    @InjectRepository(Department)
    private readonly departmentRepository: Repository<Department>,
    @InjectRepository(AnnualPlan)
    private readonly annualPlanRepository: Repository<AnnualPlan>,
    private readonly tenancyService: TenancyService,
  ) {
    this.planRepository = planRepository;
  }

  findPlanByDepartmentIdAndBusinessYear(
    user: JWTPayload,
    input: FindPlanByDepartmentIdAndBusinessYearInput,
  ): Promise<Plan | undefined> {
    return this.planRepository.findOne({
      join: {
        alias: 'plan',
        innerJoin: {
          annualPlan: 'plan.annualPlan',
          businessYear: 'annualPlan.businessYear',
        },
      },
      where: (qb: SelectQueryBuilder<Plan>) => {
        qb.where({
          client: { id: user.clientId },
          department: { id: input.departmentId },
        });

        qb.andWhere('businessYear.year = :businessYear', {
          businessYear: input.businessYear,
        });
      },
      relations: [
        'planMeasureRegistrationRequests',
        'planMeasureRegistrationRequests.requestedBy',
        'planMeasureRegistrationRequests.plan',
      ],
    });
  }

  /**
   * Find plans which have a specified organization level
   *
   * @param user
   * @param input
   * @returns Promise<Array<Plan>>
   */
  findPlansByOrganizationLevel(
    user: JWTPayload,
    input: FindPlansByOrganizationLevelInput,
  ): Promise<Array<Plan>> {
    return this.planRepository.find({
      join: {
        alias: 'plan',
        innerJoin: {
          department: 'plan.department',
        },
        leftJoin: {
          departmentLevel: 'department.departmentLevel',
        },
      },
      where: (qb: SelectQueryBuilder<Plan>) => {
        qb.where({
          client: { id: user.clientId },
        });

        qb.andWhere('departmentLevel.order = :departmentLevel', {
          departmentLevel: input.level,
        });
      },
      order: { id: 'DESC' },
      relations: ['department', 'department.departmentLevel'],
    });
  }

  async confirmPlans(
    user: JWTPayload,
    input: ConfirmPlansInput,
  ): Promise<Array<Plan>> {
    return this.updatePlans(user, {
      plans: input.plans.map((confirmPlanInput) => ({
        ...confirmPlanInput,
        status: 'confirmed',
      })),
    });
  }

  /**
   * update plans
   *
   * @param user
   * @param input
   * @returns Promise<Array<Plan>>
   */
  async updatePlans(
    user: JWTPayload,
    input: UpdatePlansInput,
  ): Promise<Array<Plan>> {
    const existingPlans = await this.planRepository.findByIds(
      input.plans.map((plan) => plan.id),
      { relations: ['department', 'annualPlan'] },
    );

    const promises = input.plans.map((inputPlan) => {
      const { id, ...updateSet } = inputPlan;

      const existingPlan = existingPlans.filter(
        (plan) => Number(plan.id) === id,
      )[0];

      const columns = {
        updatedUserId: user.userId,
      };

      this.planRepository.merge(existingPlan, {
        ...updateSet,
        ...columns,
        client: { id: user.clientId },
      });

      return this.planRepository.save(existingPlan);
    });

    return await Promise.all(promises);
  }

  async createPlan(user: JWTPayload, input: CreatePlanInput): Promise<Plan> {
    const [department, annualPlan] = await Promise.all([
      this.departmentRepository.findOne(input.departmentId, {
        where: { client: { id: user.clientId } },
      }),
      this.annualPlanRepository.findOne(input.annualPlanId, {
        where: { client: { id: user.clientId } },
      }),
    ]);

    if (!department) {
      throw new BadRequestException('invalid department ID');
    }

    if (!annualPlan) {
      throw new BadRequestException('invalid annual plan ID');
    }

    const existingPlan = await this.planRepository.findOne({
      join: {
        alias: 'plan',
        innerJoin: {
          department: 'plan.department',
          annualPlan: 'plan.annualPlan',
        },
      },
      where: (qb: SelectQueryBuilder<Plan>) => {
        qb.where({ client: { id: user.clientId } });
        qb.andWhere('department.id = :departmentId', {
          departmentId: input.departmentId,
        });
        qb.andWhere('annualPlan.id = :annualPlanId', {
          annualPlanId: input.annualPlanId,
        });
      },
      relations: ['department', 'annualPlan'],
    });

    if (existingPlan) {
      return existingPlan;
    }

    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
    };

    const connection = await this.tenancyService.getCurrentConnection();
    return await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        const plan = new Plan();
        transactionalEntityManager.merge(Plan, plan, {
          ...columns,
          department,
          targetSales: input.targetSales ?? 0,
          deemedSales: input.deemedSales ?? 0,
          targetSalesCost: input.targetSalesCost ?? 0,
          targetSellingExpense: input.targetSellingExpense ?? 0,
          targetGeneralAdministrativeExpense:
            input.targetGeneralAdministrativeExpense ?? 0,
          annualPlan,
          client,
        });
        return transactionalEntityManager.save(plan);
      },
    );
  }

  async createPlans(
    user: JWTPayload,
    input: CreatePlansInput,
  ): Promise<Plan[]> {
    const plans: Plan[] = [];
    for (let i = 0; i < input.plans.length; i++) {
      plans.push(await this.createPlan(user, input.plans[i]));
    }
    return plans;
  }
}
