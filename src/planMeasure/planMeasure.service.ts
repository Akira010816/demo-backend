import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { EventEmitter2 } from '@nestjs/event-emitter';
import { In, Repository, SelectQueryBuilder } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasure } from './planMeasure.entity';
import {
  CompleteRegistrationPlanMeasuresInput,
  CopyPlanMeasureInput,
  CopyPlanMeasuresInput,
  CreatePlanMeasureInput,
  DecideTargetPlanMeasuresInput,
  DeletePlanMeasureInput,
  DeletePlanMeasurePricesInput,
  FindPlanMeasuresByDepartmentIdInput,
  FindPlanMeasuresByDepartmentIdsInput,
  FindPlanMeasuresByIdInput,
  UpdatePlanMeasureInput,
} from './planMeasure.input';
import { SequenceService } from '../sequence/sequence.service';
import { PlanMeasureRiskPriceInput } from 'src/planMeasureRiskPrice/planMeasureRiskPrice.input';
import { PlanMeasureRiskAssignInput } from 'src/planMeasureRiskAssign/planMeasureRiskAssign.input';
import { Plan } from '../plan/plan.entity';
import { PlanMeasureCostAssignInput } from 'src/planMeasureCostAssign/planMeasureCostAssign.input';
import { PlanMeasureCostPriceInput } from 'src/planMeasureCostPrice/planMeasureCostPrice.input';
import { PlanMeasureTaskPriceInput } from 'src/planMeasureTaskPrice/planMeasureTaskPrice.input';
import { PlanMeasureTaskAssignInput } from 'src/planMeasureTaskAssign/planMeasureTaskAssign.input';
import { PlanMeasureEffectSaleService } from '../planMeasureEffectSale/planMeasureEffectSale.service';
import { PlanMeasureCostService } from '../planMeasureCost/planMeasureCost.service';
import { PlanMeasureRiskService } from '../planMeasureRisk/planMeasureRisk.service';
import { PlanMeasureTaskService } from '../planMeasureTask/planMeasureTask.service';
import { PlanMeasureEffectSale } from '../planMeasureEffectSale/planMeasureEffectSale.entity';
import { PlanMeasureCost } from '../planMeasureCost/planMeasureCost.entity';
import { PlanMeasureRisk } from '../planMeasureRisk/planMeasureRisk.entity';
import { PlanMeasureTask } from '../planMeasureTask/planMeasureTask.entity';
import { BusinessYearService } from '../businessYear/businessYear.service';
import { generateCreatePlanMeasureTaskInputFromEntity } from '../planMeasureTask/planMeasureTask.input';
import { generateCreatePlanMeasureEffectSaleInputFromEntity } from '../planMeasureEffectSale/planMeasureEffectSale.input';
import { generateCreatePlanMeasureCostInputFromEntity } from '../planMeasureCost/planMeasureCost.input';
import { generateCreatePlanMeasureRiskInputFromEntity } from '../planMeasureRisk/planMeasureRisk.input';
import { PlanMeasureSalePriceInput } from 'src/planMeasureEffectSalePrice/planMeasureEffectSalePrice.input';
import { PlanMeasureTaskAllocationInput } from 'src/planMeasureTaskAllocation/planMeasureTaskAllocation.input';
import { PlanFormulationRequest } from '../planFormulationRequest/planFormulationRequest.entity';
import { PlanFormulationCompletedEvent } from '../planFormulation/events/planFormulationCompleted.event';
import { PLAN_FORMULATION_COMPLETED_EVENT_NAME } from '../planFormulation/listeners/planFormulationCompleted.listener';
import { PlanMeasureRegistrationCompletedEvent } from '../planMeasureRegistration/events/planMeasureRegistrationCompleted.event';
import { PLAN_MEASURE_REGISTRATION_COMPLETED_EVENT_NAME } from '../planMeasureRegistration/listeners/planMeasureRegistrationCompleted.listener';
import { PlanMeasureRegistrationRequest } from '../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';
import { TenancyService } from '../tenancy/tenancy.service';
import { PlanMeasureRegistrationCompletedListener } from '../planMeasureRegistration/listeners/planMeasureRegistrationCompleted.listener';
import { PlanFormulationCompletedListener } from '../planFormulation/listeners/planFormulationCompleted.listener';
import { PlanFormulationEmailService } from '../planFormulationEmail/planFormulationEmail.service';
import { NotificationService } from '../notification/notification.service';

@Injectable()
export class PlanMeasureService {
  private relations = ['department', 'businessYear'];

  constructor(
    @InjectRepository(PlanMeasure)
    private readonly planMeasureRepository: Repository<PlanMeasure>,
    private readonly sequenceService: SequenceService,
    private readonly riskService: PlanMeasureRiskService,
    private readonly costService: PlanMeasureCostService,
    private readonly taskService: PlanMeasureTaskService,
    private readonly saleService: PlanMeasureEffectSaleService,
    private readonly businessYearService: BusinessYearService,
    @InjectRepository(PlanFormulationRequest)
    private readonly planFormulationRequestRepository: Repository<PlanFormulationRequest>,
    @InjectRepository(PlanMeasureRegistrationRequest)
    private readonly planMeasureRegistrationRequestRepository: Repository<PlanMeasureRegistrationRequest>,
    private readonly eventEmitter: EventEmitter2, //private readonly tenancyModule: TenancyModule,
    private readonly tenancyService: TenancyService,
    private readonly planMeasureRegistrationCompletedListener: PlanMeasureRegistrationCompletedListener,
    private readonly planFormulationCompletedListener: PlanFormulationCompletedListener,
    private readonly planFormulationEmailService: PlanFormulationEmailService,
    private readonly notificationService: NotificationService,
  ) {}

  private async decorateAggregations(
    user: JWTPayload,
    planMeasures: Array<PlanMeasure>,
    conditions: {
      startAggregationBusinessYear: number;
      endAggregationBusinessYear: number;
    },
  ): Promise<Array<PlanMeasure>> {
    const aggregationInput = {
      planMeasureIds: planMeasures.map((planMeasure) => planMeasure.id),
      startBusinessYear: conditions.startAggregationBusinessYear,
      endBusinessYear: conditions.endAggregationBusinessYear,
    };

    const salesPromise = this.saleService.findPlanMeasureEffectSalesByPlanMeasureIds(
      user,
      aggregationInput,
    );

    const costsPromise = this.costService.findPlanMeasureCostsByPlanMeasureIds(
      user,
      aggregationInput,
    );

    const risksPromise = this.riskService.findPlanMeasureRisksByPlanMeasureIds(
      user,
      aggregationInput,
    );

    const tasksPromise = this.taskService.findPlanMeasureTasksByPlanMeasureIds(
      user,
      aggregationInput,
    );

    const [sales, costs, risks, tasks]: [
      Array<PlanMeasureEffectSale>,
      Array<PlanMeasureCost>,
      Array<PlanMeasureRisk>,
      Array<PlanMeasureTask>,
    ] = await Promise.all([
      salesPromise,
      costsPromise,
      risksPromise,
      tasksPromise,
    ]);

    return planMeasures.map((planMeasure) => ({
      ...planMeasure,
      risks:
        risks
          ?.filter((risk) => risk.planMeasure.id === planMeasure.id)
          .map((risk) => ({
            ...risk,
            prices:
              risk.prices?.filter(
                (price) =>
                  (conditions.startAggregationBusinessYear && price.businessYear
                    ? price.businessYear.year >=
                      conditions.startAggregationBusinessYear
                    : true) &&
                  (conditions.endAggregationBusinessYear && price.businessYear
                    ? price.businessYear.year <=
                      conditions.endAggregationBusinessYear
                    : true),
              ) ?? [],
          })) ?? [],
      costs:
        costs
          ?.filter((cost) => cost.planMeasure.id === planMeasure.id)
          .map((cost) => ({
            ...cost,
            prices:
              cost.prices?.filter(
                (price) =>
                  (conditions.startAggregationBusinessYear
                    ? price.businessYear.year >=
                      conditions.startAggregationBusinessYear
                    : true) &&
                  (conditions.endAggregationBusinessYear
                    ? price.businessYear.year <=
                      conditions.endAggregationBusinessYear
                    : true),
              ) ?? [],
          })) ?? [],
      tasks:
        tasks
          ?.filter((task) => task.planMeasure.id === planMeasure.id)
          .map((task) => ({
            ...task,
            costs:
              task.prices?.filter(
                (price) =>
                  (conditions.startAggregationBusinessYear
                    ? price.businessYear.year >=
                      conditions.startAggregationBusinessYear
                    : true) &&
                  (conditions.endAggregationBusinessYear
                    ? price.businessYear.year <=
                      conditions.endAggregationBusinessYear
                    : true),
              ) ?? [],
          })) ?? [],
      sales:
        sales
          ?.filter((sale) => sale.planMeasure?.id === planMeasure.id)
          .map((sale) => ({
            ...sale,
            prices:
              sale.prices?.filter(
                (price) =>
                  (conditions.startAggregationBusinessYear && price.businessYear
                    ? price.businessYear.year >=
                      conditions.startAggregationBusinessYear
                    : true) &&
                  (conditions.endAggregationBusinessYear && price.businessYear
                    ? price.businessYear.year <=
                      conditions.endAggregationBusinessYear
                    : true),
              ) ?? [],
          })) ?? [],
    }));
  }

  async findAllPlanMeasures(user: JWTPayload): Promise<Array<PlanMeasure>> {
    return await this.planMeasureRepository.find({
      where: {
        client: { id: user.clientId },
      },
      relations: this.relations,
    });
  }

  async findPlanMeasuresByDepartmentId(
    user: JWTPayload,
    input: FindPlanMeasuresByDepartmentIdInput,
  ): Promise<Array<PlanMeasure>> {
    const planMeasures = await this.planMeasureRepository.find({
      join: {
        alias: 'planMeasure',
        innerJoin: {
          businessYear: 'planMeasure.businessYear',
        },
      },
      where: (qb: SelectQueryBuilder<Plan>) => {
        qb.where({
          department: { id: input.departmentId },
          client: { id: user.clientId },
        });

        if (input.implementationTarget) {
          qb.andWhere(
            'planMeasure.implementation_target = :implementationTarget',
            {
              implementationTarget: input.implementationTarget,
            },
          );
        }

        if (input.createdByMe) {
          qb.andWhere('planMeasure.registered_by_id = :registeredById', {
            registeredById: user.userDepartmentId,
          });
        }

        // 開始年度が指定されている場合は、指定開始年度以降の施策のみ取得
        if (input.startBusinessYear) {
          qb.andWhere('businessYear.year >= :startBusinessYear', {
            startBusinessYear: input.startBusinessYear,
          });
        }

        // 終了年度が指定されている場合は、指定終了年度以降の施策のみ取得
        if (input.endBusinessYear) {
          qb.andWhere('businessYear.year <= :endBusinessYear', {
            endBusinessYear: input.endBusinessYear,
          });
        }
      },
      order: { measureName: 'ASC' },
    });

    return this.decorateAggregations(user, planMeasures, {
      startAggregationBusinessYear: input.startAggregationBusinessYear ?? 0,
      endAggregationBusinessYear: input.endAggregationBusinessYear ?? 0,
    });
  }

  async findByCode(
    user: JWTPayload,
    code: FindPlanMeasuresByIdInput['code'],
  ): Promise<PlanMeasure | undefined> {
    const planMeasure = await this.planMeasureRepository.findOne({
      where: { code, client: { id: user.clientId } },
    });

    if (!planMeasure) throw new Error('Plan measure not existed');

    const [risks, costs, sales, tasks]: [
      Array<PlanMeasureRisk>,
      Array<PlanMeasureCost>,
      Array<PlanMeasureEffectSale>,
      Array<PlanMeasureTask>,
    ] = await Promise.all([
      this.riskService.findByPlanId(user, planMeasure.id),
      this.costService.findByPlanId(user, planMeasure.id),
      this.saleService.findByPlanId(user, planMeasure.id),
      this.taskService.findByPlanId(user, planMeasure.id),
    ]);

    planMeasure.risks = risks;
    planMeasure.costs = costs;
    planMeasure.sales = sales;
    planMeasure.tasks = tasks;
    return planMeasure;
  }

  async create(
    user: JWTPayload,
    input: CreatePlanMeasureInput,
  ): Promise<PlanMeasure> {
    const sequence = await this.sequenceService.getCode(
      'planMeasure',
      user.clientId || 0,
    );
    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
      updatedUserId: user.userId,
    };

    const createObj = {
      ...input,
      ...columns,
      code: `PMSR-${sequence.nextNumber.toString()}`,
      client,
      risks:
        input.risks &&
        input.risks.map((risk) => ({
          ...risk,
          ...columns,
          client,
          prices:
            (risk.prices &&
              risk.prices.map((item: PlanMeasureRiskPriceInput) => {
                return {
                  ...item,
                  ...columns,
                  client,
                };
              })) ||
            [],
          assigns:
            (risk.assigns &&
              risk.assigns.map((item: PlanMeasureRiskAssignInput) => {
                if (item.costTD) {
                  return {
                    ...item,
                    costTD: {
                      ...item.costTD,
                      ...columns,
                      client,
                    },
                    ...columns,
                    client,
                  };
                } else if (item.costTI) {
                  return {
                    ...item,
                    costTI: {
                      ...item.costTI,
                      ...columns,
                      client,
                    },
                    ...columns,
                    client,
                  };
                } else {
                  return {
                    ...item,
                    ...columns,
                    client,
                  };
                }
              })) ||
            [],
        })),
      sales:
        input.sales &&
        input.sales.map((sale) => ({
          ...sale,
          ...columns,
          client,
          prices:
            (sale.prices &&
              sale.prices.map((item: PlanMeasureSalePriceInput) => {
                return {
                  ...item,
                  ...columns,
                  client,
                };
              })) ||
            [],
        })),
      costs:
        input.costs &&
        input.costs.map((cost) => ({
          ...cost,
          ...columns,
          client,
          prices:
            (cost.prices &&
              cost.prices.map((item: PlanMeasureCostPriceInput) => {
                return {
                  ...item,
                  ...columns,
                  client,
                };
              })) ||
            [],
          assigns:
            (cost.assigns &&
              cost.assigns.map((item: PlanMeasureCostAssignInput) => {
                if (item.costTD) {
                  return {
                    ...item,
                    costTD: {
                      ...item.costTD,
                      ...columns,
                      client,
                    },
                    ...columns,
                    client,
                  };
                } else if (item.costTI) {
                  return {
                    ...item,
                    costTI: {
                      ...item.costTI,
                      ...columns,
                      client,
                    },
                    ...columns,
                    client,
                  };
                } else {
                  return {
                    ...item,
                    ...columns,
                    client,
                  };
                }
              })) ||
            [],
        })),
      tasks:
        input.tasks &&
        input.tasks.map((task) => ({
          ...task,
          ...columns,
          client,
          prices:
            (task.prices &&
              task.prices.map((item: PlanMeasureTaskPriceInput) => {
                return {
                  ...item,
                  ...columns,
                  client,
                };
              })) ||
            [],
          assigns:
            (task.assigns &&
              task.assigns.map((item: PlanMeasureTaskAssignInput) => {
                if (item.costTD) {
                  return {
                    ...item,
                    costTD: {
                      ...item.costTD,
                      ...columns,
                      client,
                    },
                    ...columns,
                    client,
                  };
                } else if (item.costTI) {
                  return {
                    ...item,
                    costTI: {
                      ...item.costTI,
                      ...columns,
                      client,
                    },
                    ...columns,
                    client,
                  };
                } else {
                  return {
                    ...item,
                    ...columns,
                    client,
                  };
                }
              })) ||
            [],
          allocations:
            (task.allocations &&
              task.allocations.map((item: PlanMeasureTaskAllocationInput) => {
                return {
                  ...item,
                  ...columns,
                  client,
                };
              })) ||
            [],
        })),
    };

    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }

    const updateSequence = this.sequenceService.setupCode(
      sequence,
      user.userId || 0,
    );

    const connection = await this.tenancyService.getCurrentConnection();
    return await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        const planMeasure = new PlanMeasure();
        transactionalEntityManager.merge(PlanMeasure, planMeasure, createObj);
        const savedPlanMeasure = await transactionalEntityManager.save(
          planMeasure,
        );
        await transactionalEntityManager.save(updateSequence);
        return savedPlanMeasure;
      },
    );
  }

  async update(
    user: JWTPayload,
    input: UpdatePlanMeasureInput,
  ): Promise<PlanMeasure> {
    if (!input.code) {
      throw new BadRequestException(input.code);
    }
    const client = { id: Number(user.clientId) };
    const planMeasure:
      | PlanMeasure
      | undefined = await this.planMeasureRepository.findOne({
      where: { code: input.code, client },
    });

    if (!planMeasure) {
      throw new NotFoundException(input.code);
    }

    const columns = {
      createdUserId: planMeasure.createdUserId ?? user.userId,
      updatedUserId: user.userId,
    };

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;

    this.planMeasureRepository.merge(planMeasure, {
      ...updateSet,
      ...columns,
      client,
      risks: updateSet.risks?.map((risk) => ({
        ...risk,
        ...columns,
        client,
        prices:
          (risk.prices &&
            risk.prices.map((item: PlanMeasureRiskPriceInput) => {
              return {
                ...item,
                ...columns,
                department: {
                  id: item.department.id,
                },
                businessYear: {
                  id: item.businessYear.id,
                },
                client,
              };
            })) ||
          [],
        assigns:
          (risk.assigns &&
            risk.assigns.map((pmra) => {
              if (pmra.costTD) {
                return {
                  ...pmra,
                  costTD: {
                    ...pmra.costTD,
                    ...columns,
                    client,
                  },
                  ...columns,
                  client,
                };
              } else pmra.costTI;
              {
                return {
                  ...pmra,
                  costTI: {
                    ...pmra.costTI,
                    ...columns,
                    client,
                  },
                  ...columns,
                  client,
                };
              }
            })) ||
          [],
      })),
      sales:
        input.sales &&
        input.sales.map((sale) => ({
          ...sale,
          ...columns,
          client,
          prices:
            (sale.prices &&
              sale.prices.map((item: PlanMeasureSalePriceInput) => {
                return {
                  ...item,
                  ...columns,
                  client,
                };
              })) ||
            [],
        })),
      costs: updateSet.costs?.map((cost) => ({
        ...cost,
        ...columns,
        client,
        prices:
          (cost.prices &&
            cost.prices.map((item: PlanMeasureCostPriceInput) => {
              return {
                ...item,
                ...columns,
                client,
              };
            })) ||
          [],
        assigns:
          (cost.assigns &&
            cost.assigns.map((assign) => {
              if (assign.costTD) {
                return {
                  ...assign,
                  costTD: {
                    ...assign.costTD,
                    ...columns,
                    client,
                  },
                  ...columns,
                  client,
                };
              } else assign.costTI;
              {
                return {
                  ...assign,
                  costTI: {
                    ...assign.costTI,
                    ...columns,
                    client,
                  },
                  ...columns,
                  client,
                };
              }
            })) ||
          [],
      })),
      tasks: updateSet.tasks?.map((task) => ({
        ...task,
        ...columns,
        client,
        prices:
          (task.prices &&
            task.prices.map((item: PlanMeasureCostPriceInput) => {
              return {
                ...item,
                ...columns,
                client,
              };
            })) ||
          [],
        assigns:
          (task.assigns &&
            task.assigns.map((assign) => {
              if (assign.costTD) {
                return {
                  ...assign,
                  costTD: {
                    ...assign.costTD,
                    ...columns,
                    client,
                  },
                  ...columns,
                  client,
                };
              } else assign.costTI;
              {
                return {
                  ...assign,
                  costTI: {
                    ...assign.costTI,
                    ...columns,
                    client,
                  },
                  ...columns,
                  client,
                };
              }
            })) ||
          [],
        allocations:
          (task.allocations &&
            task.allocations.map((item: PlanMeasureTaskAllocationInput) => {
              return {
                ...item,
                ...columns,
                client,
              };
            })) ||
          [],
      })),
    });

    return await this.planMeasureRepository.save(planMeasure);
  }

  async deletePlanMeasurePrices(
    user: JWTPayload,
    input: DeletePlanMeasurePricesInput,
  ): Promise<PlanMeasure> {
    const existingPlanMeasure = await this.planMeasureRepository.findOne(
      input.planMeasureId,
      { where: { client: { id: user.clientId } } },
    );

    if (!existingPlanMeasure) {
      throw new NotFoundException();
    }

    const existingPlanMeasureWithAggregation = (
      await this.decorateAggregations(user, [existingPlanMeasure], {
        startAggregationBusinessYear: input.startBusinessYear,
        endAggregationBusinessYear: input.endBusinessYear,
      })
    )[0];

    if (!input.aggregationType) {
      existingPlanMeasureWithAggregation.risks = [];
      existingPlanMeasureWithAggregation.costs = [];
      existingPlanMeasureWithAggregation.sales = [];
      existingPlanMeasureWithAggregation.tasks = [];
      return this.planMeasureRepository.save(
        existingPlanMeasureWithAggregation,
      );
    }

    if (input.aggregationType.includes('risks')) {
      existingPlanMeasureWithAggregation.risks = [];
    }

    if (input.aggregationType.includes('costs')) {
      existingPlanMeasureWithAggregation.costs = [];
    }

    if (input.aggregationType.includes('sales')) {
      existingPlanMeasureWithAggregation.sales = [];
    }

    if (input.aggregationType.includes('tasks')) {
      existingPlanMeasureWithAggregation.tasks = [];
    }

    return this.planMeasureRepository.save(existingPlanMeasureWithAggregation);
  }

  async delete(
    user: JWTPayload,
    deletePlanMeasureInput: DeletePlanMeasureInput,
  ): Promise<PlanMeasure> {
    const planMeasure = await this.planMeasureRepository.findOne(
      deletePlanMeasureInput.id,
      {
        where: { client: { id: user.clientId } },
      },
    );

    if (!planMeasure) {
      throw new NotFoundException('施策が見つかりません');
    }

    const audit = { deletedUserId: user.userId, deletedAt: new Date() };

    await this.planMeasureRepository.merge(planMeasure, {
      ...audit,
      version: deletePlanMeasureInput.version,
      risks: [],
      tasks: [],
      sales: [],
      costs: [],
    });

    return this.planMeasureRepository.save(planMeasure);
  }

  async copyPlanMeasure(
    user: JWTPayload,
    input: CopyPlanMeasureInput,
  ): Promise<PlanMeasure> {
    if (!input.planMeasureId && !input.planMeasure) {
      throw new BadRequestException();
    }

    let existingPlanMeasure =
      input.planMeasure ??
      (await this.planMeasureRepository.findOne(input.planMeasureId, {
        where: { client: { id: user.clientId } },
      }));

    if (!existingPlanMeasure) {
      throw new NotFoundException();
    }

    if (!input.planMeasure) {
      existingPlanMeasure = (
        await this.decorateAggregations(user, [existingPlanMeasure], {
          startAggregationBusinessYear: input.startBusinessYear,
          endAggregationBusinessYear: input.endBusinessYear,
        })
      )[0];
    }

    const nextBusinessYear = input.copyToNextYear
      ? // 次年度へのコピーの場合は、次年度のbusinessYearエンティティを取得
        await this.businessYearService.findByYear(user, {
          year: Number(existingPlanMeasure.businessYear.year ?? 0) + 1,
        })
      : undefined;

    const conditions = {
      // 次年度へのコピーの場合は、指定開始年度の翌年度から指定終了年度までをコピー対象とする
      startPriceBusinessYear:
        input.startBusinessYear + (input.copyToNextYear ? 1 : 0),
      endPriceBusinessYear: input.endBusinessYear,
    };

    const createInput: CreatePlanMeasureInput = {
      measureName: `${existingPlanMeasure.measureName} [コピー]`,
      overview: existingPlanMeasure.overview,
      implementationTarget: existingPlanMeasure.implementationTarget,
      businessYear: {
        id: nextBusinessYear?.id ?? existingPlanMeasure.businessYear.id,
      },
      registeredBy: {
        id: existingPlanMeasure.registeredBy.id,
      },
      department: {
        id: existingPlanMeasure.department.id,
      },
      risks:
        !input.aggregationType || input.aggregationType.includes('risks')
          ? existingPlanMeasure.risks?.map((risk) => {
              if (nextBusinessYear) {
                risk.businessYear = nextBusinessYear; // 次年度に変更
              }
              return generateCreatePlanMeasureRiskInputFromEntity(
                risk,
                user.clientId,
                conditions,
              );
            })
          : undefined,
      costs:
        !input.aggregationType || input.aggregationType.includes('costs')
          ? existingPlanMeasure.costs.map((cost) => {
              if (nextBusinessYear) {
                cost.businessYear = nextBusinessYear; // 次年度に変更
              }
              return generateCreatePlanMeasureCostInputFromEntity(
                cost,
                user.clientId,
                conditions,
              );
            })
          : undefined,
      tasks:
        !input.aggregationType || input.aggregationType.includes('tasks')
          ? existingPlanMeasure.tasks.map((task) => {
              if (nextBusinessYear) {
                task.businessYear = nextBusinessYear; // 次年度に変更
              }
              return generateCreatePlanMeasureTaskInputFromEntity(
                task,
                user.clientId,
                conditions,
              );
            })
          : undefined,
      sales:
        !input.aggregationType || input.aggregationType.includes('sales')
          ? existingPlanMeasure.sales.map((sale) => {
              if (nextBusinessYear) {
                sale.businessYear = nextBusinessYear; // 次年度に変更
              }
              return generateCreatePlanMeasureEffectSaleInputFromEntity(
                sale,
                user.clientId,
                conditions,
              );
            })
          : undefined,
      classification:
        existingPlanMeasure.classification === 'New'
          ? 'Existing'
          : existingPlanMeasure.classification,
    };

    return await this.create(user, createInput);
  }

  async copyPlanMeasures(
    user: JWTPayload,
    input: CopyPlanMeasuresInput,
  ): Promise<Array<PlanMeasure>> {
    const existingPlanMeasures = await this.planMeasureRepository.findByIds(
      input.planMeasureIds,
      { where: { client: { id: user.clientId } } },
    );

    if (!existingPlanMeasures.length) {
      throw new NotFoundException();
    }

    const existingPlanMeasuresWithAggregations = await this.decorateAggregations(
      user,
      existingPlanMeasures,
      {
        startAggregationBusinessYear: input.startBusinessYear,
        endAggregationBusinessYear: input.endBusinessYear,
      },
    );

    const newPlanMeasures: Array<PlanMeasure> = [];

    for (const planMeasure of existingPlanMeasuresWithAggregations) {
      const newPlanMeasure = await this.copyPlanMeasure(user, {
        planMeasure: planMeasure,
        startBusinessYear: input.startBusinessYear,
        endBusinessYear: input.endBusinessYear,
        copyToNextYear: input.copyToNextYear,
      });
      newPlanMeasures.push(newPlanMeasure);
    }

    return newPlanMeasures;
  }

  async completeRegistration(
    user: JWTPayload,
    input: CompleteRegistrationPlanMeasuresInput,
  ): Promise<boolean> {
    const planMeasureRegistrationRequest = await this.planMeasureRegistrationRequestRepository.findOne(
      input.planMeasureRegistrationRequestId,
      {
        where: { client: { id: user.clientId } },
        relations: ['requestedBy', 'plan', 'plan.annualPlan'],
      },
    );

    if (!planMeasureRegistrationRequest) {
      throw new BadRequestException();
    }

    // マルチテナント対応に伴いrequest-scopedになってOnEventデコレーターでの
    // 自動リスナー登録が行われなくなった為手動でリスナーを登録。
    // 併せてリスナー側のconstructor()でのDIが効かなくなっており、リスナーが
    // 必要とするサービスクラスはイベントに詰めて渡す。
    this.eventEmitter.addListener(
      PLAN_MEASURE_REGISTRATION_COMPLETED_EVENT_NAME,
      this.planMeasureRegistrationCompletedListener
        .handlePlanMeasureRegistrationCompletedEvent,
    );
    this.eventEmitter.emit(
      PLAN_MEASURE_REGISTRATION_COMPLETED_EVENT_NAME,
      new PlanMeasureRegistrationCompletedEvent(
        this.planFormulationEmailService,
        this.notificationService,
        this.tenancyService.getTenantNameFromSubdomain(),
        user,
        planMeasureRegistrationRequest,
        input.comment,
      ),
    );
    this.eventEmitter.removeListener(
      PLAN_MEASURE_REGISTRATION_COMPLETED_EVENT_NAME,
      this.planMeasureRegistrationCompletedListener
        .handlePlanMeasureRegistrationCompletedEvent,
    );

    return true;
  }

  async decideTargets(
    user: JWTPayload,
    input: DecideTargetPlanMeasuresInput,
  ): Promise<PlanMeasure[]> {
    const client = { id: Number(user.clientId) };

    const columns = {
      updatedUserId: user.userId,
    };

    const planMeasures = await this.planMeasureRepository.find({
      where: {
        id: In(input.targetPlanMeasures.map((value) => value.id)),
        client,
      },
    });

    const connection = await this.tenancyService.getCurrentConnection();
    const savedPlanMeasures = await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        planMeasures.forEach((planMeasure) => {
          const planMeasureUpdate = input.targetPlanMeasures.find(
            (value) => value.id == planMeasure.id,
          );
          return transactionalEntityManager.merge(PlanMeasure, planMeasure, {
            ...columns,
            implementationTarget: planMeasureUpdate?.implementationTarget,
            version: planMeasureUpdate?.version || 1,
          });
        });
        return await transactionalEntityManager.save(planMeasures);
      },
    );

    // 事業計画策定完了報告の宛て先を取得する為、以下の二段階で対応する事業計画策定依頼を特定する。
    // ①事業計画策定依頼の一覧から、当該部署の当該ユーザー(=UserDepartment)宛ての依頼を得る。
    // ここではDBのSELECTにより事業計画策定依頼(=PlanFormulationRequest)の検索を行う。
    const planFormulationRequests = await this.planFormulationRequestRepository.find(
      {
        join: {
          alias: 'planFormulationRequest',
          innerJoin: {
            userDepartment: 'planFormulationRequest.requestedTo',
          },
        },
        where: (qb: SelectQueryBuilder<PlanFormulationRequest>) => {
          qb.where({ client: { id: user.clientId } });
          qb.andWhere('userDepartment.id = :userDepartmentId', {
            userDepartmentId: user.userDepartmentId,
          });
        },
        relations: ['plan', 'plan.annualPlan', 'requestedBy', 'requestedTo'],
      },
    );

    // ②当該UserDepartment宛ての依頼の中で、事業年度が一致する物を取り出す。
    // 尚、この絞り込みを①の中で併せて実施するには、PlanやAnnualPlan、BusinessYearをPlanFormulationRequestの
    // テーブルにjoinする必要があるが、TypeORMでは実現が難しい。
    // その為、①ではPlanやAnnualPlan、BusinessYearの絞り込みは行わず、取得するPlanFormulationRequestのオブジェクトに
    // それらの情報も含まれる様relationsを指定する形にして、②でオブジェクト比較にて二段階目の絞り込みを行っている。
    const planFormulationRequest = planFormulationRequests.find(
      (planFormulationRequest) =>
        planMeasures.length > 0 &&
        planFormulationRequest.plan.annualPlan?.businessYear.year ==
          planMeasures[0].businessYear.year,
    );

    // マルチテナント対応に伴いrequest-scopedになってOnEventデコレーターでの
    // 自動リスナー登録が行われなくなった為手動でリスナーを登録。
    // 併せてリスナー側のconstructor()でのDIが効かなくなっており、リスナーが
    // 必要とするサービスクラスはイベントに詰めて渡す。
    this.eventEmitter.addListener(
      PLAN_FORMULATION_COMPLETED_EVENT_NAME,
      this.planFormulationCompletedListener
        .handlePlanFormulationRequestCompletedEvent,
    );
    planFormulationRequest &&
      this.eventEmitter.emit(
        PLAN_FORMULATION_COMPLETED_EVENT_NAME,
        new PlanFormulationCompletedEvent(
          this.planFormulationEmailService,
          this.notificationService,
          this.tenancyService.getTenantNameFromSubdomain(),
          user,
          planFormulationRequest,
        ),
      );
    this.eventEmitter.removeListener(
      PLAN_FORMULATION_COMPLETED_EVENT_NAME,
      this.planFormulationCompletedListener
        .handlePlanFormulationRequestCompletedEvent,
    );

    return savedPlanMeasures;
  }

  async findPlanMeasuresByDepartmentIds(
    user: JWTPayload,
    input: FindPlanMeasuresByDepartmentIdsInput,
  ): Promise<Array<PlanMeasure>> {
    const { departmentIds, ...findSet } = input;
    const planMeasures = departmentIds.map((id) =>
      this.findPlanMeasuresByDepartmentId(user, {
        departmentId: id,
        ...findSet,
      }),
    );

    return (await Promise.all(planMeasures)).flatMap(
      (planMeasure) => planMeasure,
    );
  }
}
