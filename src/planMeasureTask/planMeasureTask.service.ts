import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasureTask } from './planMeasureTask.entity';
import { FindPlanMeasureTasksByPlanMeasureIdsInput } from './planMeasureTask.input';

@Injectable()
export class PlanMeasureTaskService {
  private relations = [
    'prices',
    'allocations',
    'assigns',
    'assigns.costTD',
    'assigns.costTI',
  ];

  constructor(
    @InjectRepository(PlanMeasureTask)
    private readonly planMeasureTaskRepository: Repository<PlanMeasureTask>,
  ) {}

  async findPlanMeasureTasksByPlanMeasureIds(
    user: JWTPayload,
    input: FindPlanMeasureTasksByPlanMeasureIdsInput,
  ) {
    return this.planMeasureTaskRepository.find({
      join: {
        alias: 'planMeasureTask',
        innerJoin: {
          businessYear: 'planMeasureTask.businessYear',
        },
      },
      where: (qb: SelectQueryBuilder<PlanMeasureTask>) => {
        qb.where({ client: { id: user.clientId } });
        qb.andWhere('businessYear.year >= :startYear', {
          startYear: input.startBusinessYear,
        });
        qb.andWhere('businessYear.year <= :endYear', {
          endYear: input.endBusinessYear,
        });
      },
      relations: [
        'planMeasure',
        'prices',
        'assigns',
        'assigns.costTD',
        'assigns.costTI',
        'allocations',
      ],
    });
  }

  async findByPlanId(
    user: JWTPayload,
    id: number,
  ): Promise<Array<PlanMeasureTask>> {
    if (!id) throw new BadRequestException(id);
    return this.planMeasureTaskRepository.find({
      where: { planMeasure: { id: id }, client: { id: user.clientId } },
      relations: this.relations,
    });
  }
}
