import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { SetSystemsAndItAssetTypesInput } from './measureImplementationTask.input';
import { MeasureImplementationTask } from './measureImplementationTask.entity';
import { SystemService } from '../system/system.service';
import { ItAssetTypeService } from '../itAssetType/itAssetType.service';

@Injectable()
export class MeasureImplementationTaskService {
  constructor(
    private readonly systemService: SystemService,
    private readonly itAssetTypeService: ItAssetTypeService,
    @InjectRepository(MeasureImplementationTask)
    private readonly measureImplementationTaskRepository: Repository<MeasureImplementationTask>,
  ) {}

  async setSystemsAndItAssetTypes(
    user: JWTPayload,
    setSystemsAndItAssetTypesInputs: Array<SetSystemsAndItAssetTypesInput>,
  ): Promise<MeasureImplementationTask[]> {
    const client = { id: user.clientId };
    const allSystems = await this.systemService.findAllSystems(user);
    const allItAssetTypes = await this.itAssetTypeService.findAllItAssetTypes(
      user,
    );

    return Promise.all(
      setSystemsAndItAssetTypesInputs.map(async (input) => {
        const measureImplementationTask = await this.measureImplementationTaskRepository.findOne(
          input.id,
          {
            where: { client },
            relations: [
              'affectedSystems',
              'purchaseTargets',
              'abandonmentTargets',
            ],
          },
        );

        if (!measureImplementationTask) {
          throw new NotFoundException();
        }

        measureImplementationTask.affectedSystems = allSystems.filter(
          (system) => input.affectedSystems.includes(Number(system.id)),
        );

        measureImplementationTask.purchaseTargets = allItAssetTypes.filter(
          (itAssetType) =>
            input.purchaseTargets.includes(Number(itAssetType.id)),
        );

        measureImplementationTask.abandonmentTargets = allItAssetTypes.filter(
          (itAssetType) =>
            input.abandonmentTargets.includes(Number(itAssetType.id)),
        );

        return await this.measureImplementationTaskRepository.save(
          measureImplementationTask,
        );
      }),
    );
  }

  // P2FW-443
  async getSystemsAndItAssetTypes(
    user: JWTPayload,
    setSystemsAndItAssetTypesInputs: Array<SetSystemsAndItAssetTypesInput>,
  ): Promise<MeasureImplementationTask[]> {
    const client = { id: user.clientId };
    const allSystems = await this.systemService.findAllSystems(user);
    const allItAssetTypes = await this.itAssetTypeService.findAllItAssetTypes(
      user,
    );
    return await Promise.all(
      setSystemsAndItAssetTypesInputs.map(async (input) => {
        const measureImplementationTask = await this.measureImplementationTaskRepository.findOne(
          input.id,
          {
            where: { client },
            relations: [
              'affectedSystems',
              'purchaseTargets',
              'abandonmentTargets',
            ],
          },
        );
        if (!measureImplementationTask) {
          throw new NotFoundException();
        }

        measureImplementationTask.affectedSystems = allSystems.filter(
          (system) => input.affectedSystems.includes(Number(system.id)),
        );

        measureImplementationTask.purchaseTargets = allItAssetTypes.filter(
          (itAssetType) =>
            input.purchaseTargets.includes(Number(itAssetType.id)),
        );

        measureImplementationTask.abandonmentTargets = allItAssetTypes.filter(
          (itAssetType) =>
            input.abandonmentTargets.includes(Number(itAssetType.id)),
        );

        return measureImplementationTask;
      }),
    );
  }
}
