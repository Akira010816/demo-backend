import { Injectable } from '@nestjs/common';
import { JWTPayload } from '../auth/jwt.strategy';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { Position } from './position.entity';

@Injectable()
export class PositionService {
  constructor(
    @InjectRepository(Position)
    private readonly positionRepository: Repository<Position>,
  ) {}

  findAll(user: JWTPayload): Promise<Position[]> {
    return this.positionRepository.find({
      where: { client: { id: user.clientId } },
      order: { weight: 'DESC' },
    });
  }
}
