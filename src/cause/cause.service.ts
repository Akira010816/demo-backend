import {
  BadRequestException,
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, Transaction, TransactionRepository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { Issue } from '../issue/issue.entity';
import { CauseInput } from './cause.input';
import { Cause } from './cause.entity';
import { MeasureService } from '../measure/measure.service';

@Injectable()
export class CauseService {
  constructor(
    private readonly measureService: MeasureService,
    @InjectRepository(Cause)
    private readonly causeRepository: Repository<Cause>,
  ) {}

  findAll(user: JWTPayload, issueId: Issue['id']): Promise<Cause[]> {
    return this.causeRepository.find({
      where: { issueId, client: { id: user.clientId } },
      relations: ['causeConditions'],
    });
  }

  findOne(user: JWTPayload, id: CauseInput['id']): Promise<Cause | undefined> {
    return this.causeRepository.findOne(id, {
      where: { client: { id: user.clientId } },
      relations: ['causeConditions'],
    });
  }

  setMeasures(user: JWTPayload, input: Array<CauseInput>): Promise<Cause[]> {
    const client = { id: user.clientId };
    return Promise.all(
      input.map(async (causeInput) => {
        const current = await this.causeRepository.findOne(causeInput.id, {
          where: { client },
        });

        if (!current) {
          throw new NotFoundException();
        }

        current.measures = await this.measureService.find(
          causeInput.measures?.map((m) => Number(m.id)),
        );

        return await this.causeRepository.save(current);
      }),
    );
  }

  @Transaction({ isolation: 'SERIALIZABLE' })
  async create(
    user: JWTPayload,
    input: CauseInput,
    @TransactionRepository(Cause) causeRepository?: Repository<Cause>,
  ): Promise<Cause> {
    if (!causeRepository) {
      throw new BadRequestException('no transaction');
    }
    const client = { id: user.clientId };
    return causeRepository.save({ ...input, client });
  }

  async update(user: JWTPayload, input: CauseInput): Promise<Cause> {
    if (!input.id) {
      throw new BadRequestException(input.id);
    }
    const current = await this.causeRepository.findOne(input.id);
    if (!current) {
      throw new NotFoundException();
    }
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    this.causeRepository.merge(current, updateSet);
    return this.causeRepository.save(current);
  }

  async delete(user: JWTPayload, input: CauseInput): Promise<Cause> {
    const cause = await this.causeRepository.findOne({ id: input.id });
    if (!cause) {
      throw new HttpException('原因がありません', HttpStatus.BAD_REQUEST);
    }
    cause.deletedAt = new Date();
    return this.causeRepository.save<Cause>(cause);
  }
}
