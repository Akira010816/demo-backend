import { Injectable, NotFoundException } from '@nestjs/common';
import { MeasureService } from '../measure/measure.service';
import { InjectRepository } from '@nestjs/typeorm';
import { Investigation } from '../investigation/investigation.entity';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { InvestigationInput } from '../investigation/investigation.input';

@Injectable()
export class InvestigationService {
  constructor(
    private readonly measureService: MeasureService,
    @InjectRepository(Investigation)
    private readonly investigationRepository: Repository<Investigation>,
  ) {}

  setMeasures(
    user: JWTPayload,
    input: Array<InvestigationInput>,
  ): Promise<Investigation[]> {
    const client = { id: user.clientId };
    return Promise.all(
      input.map(async (investigationinput) => {
        const current = await this.investigationRepository.findOne(
          investigationinput.id,
          {
            where: { client },
            relations: ['measures'],
          },
        );
        if (!current) {
          throw new NotFoundException();
        }
        const measures = await this.measureService.find(
          investigationinput.measures?.map((m) => Number(m.id)),
        );
        current.measures = measures;
        return await this.investigationRepository.save(current);
      }),
    );
  }
}
