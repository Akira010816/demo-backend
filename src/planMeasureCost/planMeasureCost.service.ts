import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasureCost } from './planMeasureCost.entity';
import { FindPlanMeasureCostsByPlanMeasureIdsInput } from './planMeasureCost.input';

@Injectable()
export class PlanMeasureCostService {
  private relations = ['prices', 'assigns', 'assigns.costTD', 'assigns.costTI'];

  constructor(
    @InjectRepository(PlanMeasureCost)
    private readonly planMeasureCostRepository: Repository<PlanMeasureCost>,
  ) {}

  async findByPlanId(
    user: JWTPayload,
    id: number,
  ): Promise<Array<PlanMeasureCost>> {
    if (!id) throw new BadRequestException(id);
    return this.planMeasureCostRepository.find({
      where: { planMeasure: { id: id }, client: { id: user.clientId } },
      relations: this.relations,
    });
  }

  async findPlanMeasureCostsByPlanMeasureIds(
    user: JWTPayload,
    input: FindPlanMeasureCostsByPlanMeasureIdsInput,
  ) {
    return this.planMeasureCostRepository.find({
      join: {
        alias: 'planMeasureCost',
        innerJoin: {
          businessYear: 'planMeasureCost.businessYear',
        },
      },
      where: (qb: SelectQueryBuilder<PlanMeasureCost>) => {
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
      ],
    });
  }
}
