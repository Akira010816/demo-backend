import {
  BadRequestException,
  HttpException,
  HttpStatus,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { In, Repository, Transaction, TransactionRepository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { CauseConditionInput } from './causeCondition.input';
import { CauseCondition } from './causeCondition.entity';
import { CauseInput } from '../cause/cause.input';

@Injectable()
export class CauseConditionService {
  constructor(
    @InjectRepository(CauseCondition)
    private readonly causeConditionRepository: Repository<CauseCondition>,
  ) {}

  find(user: JWTPayload, ids: CauseInput['id'][]): Promise<CauseCondition[]> {
    return this.causeConditionRepository.find({
      where: { id: In(ids), client: { id: user.clientId } },
    });
  }

  findAll(
    user: JWTPayload,
    causeId: CauseInput['id'],
  ): Promise<CauseCondition[]> {
    return this.causeConditionRepository.find({
      where: { causeId, client: { id: user.clientId } },
    });
  }

  findOne(
    user: JWTPayload,
    id: CauseConditionInput['id'],
  ): Promise<CauseCondition | undefined> {
    return this.causeConditionRepository.findOne(id, {
      where: { client: { id: user.clientId } },
    });
  }

  @Transaction({ isolation: 'SERIALIZABLE' })
  async create(
    user: JWTPayload,
    input: CauseConditionInput,
    @TransactionRepository(CauseCondition)
    causeConditionRepository?: Repository<CauseCondition>,
  ): Promise<CauseCondition> {
    if (!causeConditionRepository) {
      throw new BadRequestException('no transaction');
    }
    const client = { id: user.clientId };
    return causeConditionRepository.save({ ...input, client });
  }

  async update(
    user: JWTPayload,
    input: CauseConditionInput,
  ): Promise<CauseCondition> {
    if (!input.id) {
      throw new BadRequestException(input.id);
    }
    const current = await this.causeConditionRepository.findOne(input.id);
    if (!current) {
      throw new NotFoundException();
    }
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { id, ...updateSet } = input;
    this.causeConditionRepository.merge(current, updateSet);
    return this.causeConditionRepository.save(current);
  }

  async delete(
    user: JWTPayload,
    input: CauseConditionInput,
  ): Promise<CauseCondition> {
    const causeCondition = await this.causeConditionRepository.findOne({
      id: input.id,
    });
    if (!causeCondition) {
      throw new HttpException(
        '原因解決条件がありません',
        HttpStatus.BAD_REQUEST,
      );
    }
    causeCondition.deletedAt = new Date();
    return this.causeConditionRepository.save<CauseCondition>(causeCondition);
  }
}
