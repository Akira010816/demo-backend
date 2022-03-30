import { Injectable } from '@nestjs/common';
import { JWTPayload } from '../auth/jwt.strategy';
import { PriceUnit } from './priceUnit.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class PriceUnitService {
  constructor(
    @InjectRepository(PriceUnit)
    private readonly priceUnitRepository: Repository<PriceUnit>,
  ) {}

  async findPriceUnit(user: JWTPayload): Promise<PriceUnit | undefined> {
    return this.priceUnitRepository.findOne({
      where: { client: { id: user.clientId } },
    });
  }
}
