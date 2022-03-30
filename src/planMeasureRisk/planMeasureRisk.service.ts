import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasureRisk } from './planMeasureRisk.entity';
import { FindPlanMeasureRisksByPlanMeasureIdsInput } from './planMeasureRisk.input';
import { PlanMeasureCost } from '../planMeasureCost/planMeasureCost.entity';

@Injectable()
export class PlanMeasureRiskService {
  private relations = ['prices', 'assigns', 'assigns.costTD', 'assigns.costTI'];

  constructor(
    @InjectRepository(PlanMeasureRisk)
    private readonly planMeasureRiskRepository: Repository<PlanMeasureRisk>,
  ) {}

  async findPlanMeasureRisksByPlanMeasureIds(
    user: JWTPayload,
    input: FindPlanMeasureRisksByPlanMeasureIdsInput,
  ) {
    return this.planMeasureRiskRepository.find({
      join: {
        alias: 'planMeasureRisk',
        innerJoin: {
          businessYear: 'planMeasureRisk.businessYear',
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

  async findByPlanId(
    user: JWTPayload,
    id: number,
  ): Promise<Array<PlanMeasureRisk>> {
    if (!id) throw new BadRequestException(id);
    return this.planMeasureRiskRepository.find({
      where: { planMeasure: { id: id }, client: { id: user.clientId } },
      relations: this.relations,
    });
  }
}
