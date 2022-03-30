import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Between, Repository, SelectQueryBuilder } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { BusinessYear } from './businessYear.entity';
import {
  FindBusinessYearByYearInput,
  FindBusinessYearsByRangeInput,
} from './businessYear.input';

@Injectable()
export class BusinessYearService {
  constructor(
    @InjectRepository(BusinessYear)
    private readonly businessYearRepository: Repository<BusinessYear>,
  ) {}

  async findByYear(
    user: JWTPayload,
    input: FindBusinessYearByYearInput,
  ): Promise<BusinessYear | undefined> {
    return this.businessYearRepository.findOne({
      where: {
        client: { id: user.clientId },
        year: input.year,
      },
    });
  }

  async findByRange(
    user: JWTPayload,
    input: FindBusinessYearsByRangeInput,
  ): Promise<Array<BusinessYear>> {
    return this.businessYearRepository.find({
      where: (qb: SelectQueryBuilder<BusinessYear>) => {
        qb.where({
          client: { id: user.clientId },
          year: Between(input.startYear, input.endYear),
        });
      },
    });
  }

  findAll(user: JWTPayload): Promise<Array<BusinessYear>> {
    return this.businessYearRepository.find({
      where: { client: { id: user.clientId } },
      order: { year: 'ASC' },
    });
  }
}
