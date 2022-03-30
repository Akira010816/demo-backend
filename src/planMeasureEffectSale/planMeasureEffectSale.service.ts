import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, SelectQueryBuilder } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { PlanMeasureEffectSale } from './planMeasureEffectSale.entity';
import { FindPlanMeasureEffectSalesByPlanMeasureIdsInput } from './planMeasureEffectSale.input';

@Injectable()
export class PlanMeasureEffectSaleService {
  private relations = ['prices'];

  constructor(
    @InjectRepository(PlanMeasureEffectSale)
    private readonly planMeasureEffectSaleRepository: Repository<PlanMeasureEffectSale>,
  ) {}

  async findByPlanId(
    user: JWTPayload,
    id: number,
  ): Promise<Array<PlanMeasureEffectSale>> {
    if (!id) throw new BadRequestException(id);
    return this.planMeasureEffectSaleRepository.find({
      where: { planMeasure: { id: id }, client: { id: user.clientId } },
      relations: this.relations,
    });
  }

  async findPlanMeasureEffectSalesByPlanMeasureIds(
    user: JWTPayload,
    input: FindPlanMeasureEffectSalesByPlanMeasureIdsInput,
  ) {
    return this.planMeasureEffectSaleRepository.find({
      join: {
        alias: 'planMeasureEffectSale',
        innerJoin: {
          businessYear: 'planMeasureEffectSale.businessYear',
        },
      },
      where: (qb: SelectQueryBuilder<PlanMeasureEffectSale>) => {
        qb.where({ client: { id: user.clientId } });
        qb.andWhere('businessYear.year >= :startYear', {
          startYear: input.startBusinessYear,
        });
        qb.andWhere('businessYear.year <= :endYear', {
          endYear: input.endBusinessYear,
        });
      },
      relations: ['prices', 'planMeasure'],
    });
  }
}
