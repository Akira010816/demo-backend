import { Injectable, NotFoundException } from '@nestjs/common';
import { MeasureService } from '../measure/measure.service';
import { InjectRepository } from '@nestjs/typeorm';
import { Target } from '../target/target.entity';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { TargetInput } from '../target/target.input';

@Injectable()
export class TargetService {
  constructor(
    private readonly measureService: MeasureService,
    @InjectRepository(Target)
    private readonly targetRepository: Repository<Target>,
  ) {}

  setMeasures(user: JWTPayload, input: Array<TargetInput>): Promise<Target[]> {
    const client = { id: user.clientId };
    return Promise.all(
      input.map(async (targetinput) => {
        const current = await this.targetRepository.findOne(targetinput.id, {
          where: { client },
          relations: ['measures'],
        });
        if (!current) {
          throw new NotFoundException();
        }
        const measures = await this.measureService.find(
          targetinput.measures?.map((m) => Number(m.id)),
        );
        current.measures = measures;
        return await this.targetRepository.save(current);
      }),
    );
  }
}
