import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { ItAssetType } from './itAssetType.entity';

@Injectable()
export class ItAssetTypeService {
  constructor(
    @InjectRepository(ItAssetType)
    private readonly itAssetTypeRepository: Repository<ItAssetType>,
  ) {
    this.itAssetTypeRepository = itAssetTypeRepository;
  }

  async findAllItAssetTypes(user: JWTPayload): Promise<Array<ItAssetType>> {
    return await this.itAssetTypeRepository.find({
      where: {
        client: { id: user.clientId },
      },
    });
  }
}
