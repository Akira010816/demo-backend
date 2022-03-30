import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { In, Repository, Transaction, TransactionRepository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { Measure } from './measure.entity';
import { CreateMeasureInput, UpdateMeasureInput } from './measure.input';
import { Sequence } from '../sequence/sequence.entity';
import { SequenceService } from '../sequence/sequence.service';
import { SystemService } from '../system/system.service';
import { ItAssetTypeService } from '../itAssetType/itAssetType.service';
import { MeasureImplementationTaskService } from '../measureImplementationTask/measureImplementationTask.service';
import { CauseConditionService } from '../causeCondition/causeCondition.service';
import { TenancyService } from 'src/tenancy/tenancy.service'; // P2FW-443

@Injectable()
export class MeasureService {
  private relations = [
    'causeConditions',
    'measureImplementationEffects',
    'measureImplementationTasks',
    'measureImplementationTasks.affectedSystems',
    'measureImplementationTasks.abandonmentTargets',
    'measureImplementationTasks.targetSystem',
    'measureImplementationTasks.purchaseTargets',
  ];

  constructor(
    @InjectRepository(Measure)
    private readonly measureRepository: Repository<Measure>,
    private readonly systemService: SystemService,
    private readonly measureImplementationTaskService: MeasureImplementationTaskService,
    private readonly itAssetTypeService: ItAssetTypeService,
    private readonly sequenceService: SequenceService,
    private readonly causeConditionService: CauseConditionService,
    private readonly tenancyService: TenancyService,
  ) {}

  async findAllMeasures(user: JWTPayload): Promise<Array<Measure>> {
    return await this.measureRepository.find({
      where: {
        client: { id: user.clientId },
      },
      relations: this.relations,
    });
  }

  async find(ids?: Array<number>): Promise<Measure[] | undefined> {
    if (!ids) return undefined;
    return this.measureRepository.find({
      where: {
        id: In(ids),
      },
      relations: this.relations,
    });
  }

  // P2FW-443
  // @Transaction({ isolation: 'SERIALIZABLE' })
  async create(
    user: JWTPayload,
    input: CreateMeasureInput,
    // @TransactionRepository(Measure) measureRepository?: Repository<Measure>,
    // @TransactionRepository(Sequence) sequenceRepository?: Repository<Sequence>,
  ): Promise<Measure> {
    // if (!measureRepository || !sequenceRepository) {
    //   throw new BadRequestException('no transaction');
    // }

    // const sequence = await this.sequenceService.getCode(
    //   'measure',
    //   user.clientId || 0,
    //   sequenceRepository,
    // );
    const sequence = await this.sequenceService.getCode(
      'measure',
      user.clientId || 0,
    );
    if (!sequence.createdUserId) {
      sequence.createdUserId = user.userId || 0;
    }
    const updateSequence = this.sequenceService.setupCode(
      sequence,
      user.userId || 0,
    );
    const client = { id: user.clientId };
    const columns = {
      createdUserId: user.userId,
      updatedUserId: user.userId,
    };

    const allSystems = await this.systemService.findAllSystems(user);
    const allItAssetTypes = await this.itAssetTypeService.findAllItAssetTypes(
      user,
    );
    const causeConditions = await this.causeConditionService.find(
      user,
      input.causeConditionInputs ?? [],
    );

    // const measure = await this.measureRepository.save({
    //   ...input,
    //   ...columns,
    //   causeConditions,
    //   code: `MESR-${sequence.nextNumber.toString()}`,
    //   causeConditionInputs: input.causeConditionInputs,
    //   measureImplementationEffects: input.measureImplementationEffectInputs?.map(
    //     (measureImplementationEffect) => ({
    //       ...measureImplementationEffect,
    //       client,
    //     }),
    //   ),
    //   measureImplementationTasks: input.measureImplementationTaskInputs?.map(
    //     (measureImplementationTask) => ({
    //       ...measureImplementationTask,
    //       targetSystem: allSystems.filter(
    //         (system) =>
    //           Number(measureImplementationTask.targetSystem) ===
    //           Number(system.id),
    //       )[0],
    //       affectedSystems: allSystems.filter((system) =>
    //         measureImplementationTask.affectedSystems?.includes(
    //           Number(system.id),
    //         ),
    //       ),
    //       purchaseTargets: allItAssetTypes.filter((itAssetType) =>
    //         measureImplementationTask.purchaseTargets?.includes(
    //           Number(itAssetType.id),
    //         ),
    //       ),
    //       abandonmentTargets: allItAssetTypes.filter((itAssetType) =>
    //         measureImplementationTask.abandonmentTargets?.includes(
    //           Number(itAssetType.id),
    //         ),
    //       ),
    //       ...columns,
    //       client,
    //     }),
    //   ),
    //   client,
    // });

    // // ref => https://github.com/typeorm/typeorm/issues/2176#issuecomment-582892524
    // // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // // @ts-ignore
    // measure.measureImplementationTasks = measure.measureImplementationTasks.map(
    //   (task) => ({
    //     ...task,
    //     startAt: task.startAt ? new Date(task.startAt?.toString()) : undefined,
    //     endAt: task.endAt ? new Date(task.endAt?.toString()) : undefined,
    //   }),
    // );

    // if (!sequence.createdUserId) {
    //   sequence.createdUserId = user.userId || 0;
    // }
    // await this.sequenceService.saveCode(sequence, user.userId || 0);

    // if (measure) {
    //   await this.measureImplementationTaskService.setSystemsAndItAssetTypes(
    //     user,
    //     input.measureImplementationTaskInputs?.map(
    //       (measureImplementationTask, index) => ({
    //         id: Number(measure?.measureImplementationTasks?.[index].id ?? 0),
    //         affectedSystems: allSystems
    //           .filter((system) =>
    //             measureImplementationTask.affectedSystems?.includes(
    //               Number(system.id),
    //             ),
    //           )
    //           .map((system) => Number(system.id)),
    //         purchaseTargets: allItAssetTypes
    //           .filter((itAssetType) =>
    //             measureImplementationTask.purchaseTargets?.includes(
    //               Number(itAssetType.id),
    //             ),
    //           )
    //           .map((itAssetType) => Number(itAssetType.id)),
    //         abandonmentTargets: allItAssetTypes
    //           .filter((itAssetType) =>
    //             measureImplementationTask.abandonmentTargets?.includes(
    //               Number(itAssetType.id),
    //             ),
    //           )
    //           .map((itAssetType) => Number(itAssetType.id)),
    //       }),
    //     ) ?? [],
    //   );
    // }

    // measure.causeConditions = causeConditions;

    // return measure;

    const connection = await this.tenancyService.getCurrentConnection();
    return await connection.manager.transaction(
      'SERIALIZABLE',
      async (transactionalEntityManager) => {
        console.log('zoooo 3');

        const measure = new Measure();
        transactionalEntityManager.merge(Measure, measure, {
          ...input,
          ...columns,
          causeConditions,
          code: `MESR-${sequence.nextNumber.toString()}`,
          // cau: input.causeConditionInputs || [],
          measureImplementationEffects: input.measureImplementationEffectInputs?.map(
            (measureImplementationEffect) => ({
              ...measureImplementationEffect,
              client,
            }),
          ),
          measureImplementationTasks: input.measureImplementationTaskInputs?.map(
            (measureImplementationTask) => ({
              ...measureImplementationTask,
              targetSystem: allSystems.filter(
                (system) =>
                  Number(measureImplementationTask.targetSystem) ===
                  Number(system.id),
              )[0],
              affectedSystems: allSystems.filter((system) =>
                measureImplementationTask.affectedSystems?.includes(
                  Number(system.id),
                ),
              ),
              purchaseTargets: allItAssetTypes.filter((itAssetType) =>
                measureImplementationTask.purchaseTargets?.includes(
                  Number(itAssetType.id),
                ),
              ),
              abandonmentTargets: allItAssetTypes.filter((itAssetType) =>
                measureImplementationTask.abandonmentTargets?.includes(
                  Number(itAssetType.id),
                ),
              ),
              ...columns,
              client,
            }),
          ),
          client,
        });

        const savedProject = await transactionalEntityManager.save(measure);
        // ref => https://github.com/typeorm/typeorm/issues/2176#issuecomment-582892524
        // eslint-disable-next-line @typescript-eslint/ban-ts-comment
        // @ts-ignore
        measure.measureImplementationTasks = measure.measureImplementationTasks.map(
          (task) => ({
            ...task,
            startAt: task.startAt
              ? new Date(task.startAt?.toString())
              : undefined,
            endAt: task.endAt ? new Date(task.endAt?.toString()) : undefined,
          }),
        );

        if (measure) {
          const measureImpTasks = await this.measureImplementationTaskService.getSystemsAndItAssetTypes(
            user,
            input.measureImplementationTaskInputs?.map(
              (measureImplementationTask, index) => ({
                id: Number(
                  measure?.measureImplementationTasks?.[index].id ?? 0,
                ),
                affectedSystems: allSystems
                  .filter((system) =>
                    measureImplementationTask.affectedSystems?.includes(
                      Number(system.id),
                    ),
                  )
                  .map((system) => Number(system.id)),
                purchaseTargets: allItAssetTypes
                  .filter((itAssetType) =>
                    measureImplementationTask.purchaseTargets?.includes(
                      Number(itAssetType.id),
                    ),
                  )
                  .map((itAssetType) => Number(itAssetType.id)),
                abandonmentTargets: allItAssetTypes
                  .filter((itAssetType) =>
                    measureImplementationTask.abandonmentTargets?.includes(
                      Number(itAssetType.id),
                    ),
                  )
                  .map((itAssetType) => Number(itAssetType.id)),
              }),
            ) ?? [],
          );
          await transactionalEntityManager.save(measureImpTasks);
        }
        savedProject.causeConditions = causeConditions;
        await transactionalEntityManager.save(updateSequence);
        return savedProject;
      },
    );
  }

  async update(user: JWTPayload, input: UpdateMeasureInput): Promise<Measure> {
    if (!input.id) {
      throw new BadRequestException(input.id);
    }

    const client = { id: Number(user.clientId) };
    const measure = await this.measureRepository.findOne(input.id, {
      where: { client },
    });

    if (!measure) {
      throw new NotFoundException(input.id);
    }

    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    const columns = {
      updatedUserId: user.userId,
      createdUserId: measure.createdUserId ?? user.userId,
    };

    const allSystems = await this.systemService.findAllSystems(user);
    const allItAssetTypes = await this.itAssetTypeService.findAllItAssetTypes(
      user,
    );
    const causeConditions = await this.causeConditionService.find(
      user,
      input.causeConditionInputs ?? [],
    );

    await this.measureRepository.merge(measure, {
      ...updateSet,
      ...columns,
      causeConditions,
      measureImplementationEffects: input.measureImplementationEffectInputs?.map(
        (measureImplementationEffect) => ({
          ...measureImplementationEffect,
          client,
        }),
      ),
      measureImplementationTasks:
        updateSet.measureImplementationTaskInputs?.map(
          (measureImplementationTask) => ({
            ...measureImplementationTask,
            ...columns,
            targetSystem: allSystems.filter(
              (system) =>
                Number(measureImplementationTask.targetSystem) ===
                Number(system.id),
            )[0],
            affectedSystems: allSystems.filter((system) =>
              measureImplementationTask.affectedSystems?.includes(
                Number(system.id),
              ),
            ),
            purchaseTargets: allItAssetTypes.filter((itAssetType) =>
              measureImplementationTask.purchaseTargets?.includes(
                Number(itAssetType.id),
              ),
            ),
            abandonmentTargets: allItAssetTypes.filter((itAssetType) =>
              measureImplementationTask.abandonmentTargets?.includes(
                Number(itAssetType.id),
              ),
            ),
            client,
          }),
        ) ?? [],
      client,
    });

    const updatedMeasure = await this.measureRepository.save(measure);

    // ref => https://github.com/typeorm/typeorm/issues/2176#issuecomment-582892524
    updatedMeasure.measureImplementationTasks = updatedMeasure.measureImplementationTasks.map(
      (task) => ({
        ...task,
        startAt: task.startAt ? new Date(task.startAt?.toString()) : undefined,
        endAt: task.endAt ? new Date(task.endAt?.toString()) : undefined,
      }),
    );

    await this.measureImplementationTaskService.setSystemsAndItAssetTypes(
      user,
      input.measureImplementationTaskInputs?.map(
        (measureImplementationTask, index) => ({
          id: updatedMeasure.measureImplementationTasks?.[index].id ?? 0,
          affectedSystems: allSystems
            .filter((system) =>
              measureImplementationTask.affectedSystems?.includes(
                Number(system.id),
              ),
            )
            .map((system) => Number(system.id)),
          purchaseTargets: allItAssetTypes
            .filter((itAssetType) =>
              measureImplementationTask.purchaseTargets?.includes(
                Number(itAssetType.id),
              ),
            )
            .map((itAssetType) => Number(itAssetType.id)),
          abandonmentTargets: allItAssetTypes
            .filter((itAssetType) =>
              measureImplementationTask.abandonmentTargets?.includes(
                Number(itAssetType.id),
              ),
            )
            .map((itAssetType) => Number(itAssetType.id)),
        }),
      ) ?? [],
    );

    updatedMeasure.causeConditions = causeConditions;
    return updatedMeasure;
  }
}
