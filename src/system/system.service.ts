import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { System } from './system.entity';

@Injectable()
export class SystemService {
  constructor(
    @InjectRepository(System)
    private readonly systemRepository: Repository<System>,
  ) {
    this.systemRepository = systemRepository;
  }

  async findAllSystems(user: JWTPayload): Promise<Array<System>> {
    return await this.systemRepository.find({
      where: {
        client: { id: user.clientId },
      },
    });
  }
}
