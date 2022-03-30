import { Injectable, NotFoundException } from '@nestjs/common';
import { MeasureService } from '../measure/measure.service';
import { InjectRepository } from '@nestjs/typeorm';
import { Other } from '../other/other.entity';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { OtherInput } from '../other/other.input';

@Injectable()
export class OtherService {
  constructor(
    private readonly measureService: MeasureService,
    @InjectRepository(Other)
    private readonly otherRepository: Repository<Other>,
  ) {}

  setMeasures(user: JWTPayload, input: Array<OtherInput>): Promise<Other[]> {
    const client = { id: user.clientId };
    return Promise.all(
      input.map(async (otherinput) => {
        const current = await this.otherRepository.findOne(otherinput.id, {
          where: { client },
          relations: ['measures'],
        });
        if (!current) {
          throw new NotFoundException();
        }
        const measures = await this.measureService.find(
          otherinput.measures?.map((m) => Number(m.id)),
        );
        current.measures = measures;
        return await this.otherRepository.save(current);
      }),
    );
  }
}
