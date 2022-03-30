import { Injectable } from '@nestjs/common';
import { Repository, Connection } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { Sequence } from './sequence.entity';

@Injectable()
export class SequenceService {
  constructor(
    @InjectRepository(Sequence)
    private sequenceRepository: Repository<Sequence>,
  ) {}

  async getCode(
    tableName: string,
    clientId: number,
    sequenceRepository?: Repository<Sequence>,
  ): Promise<Sequence> {
    const repo = sequenceRepository || this.sequenceRepository;
    try {
      const sequence = await repo.findOne({
        where: {
          tableName: tableName,
          client: { id: clientId },
        },
      });

      if (sequence) {
        sequence.nextNumber = Number(sequence.lastInsertedNumber) + 1;
        return sequence;
      } else {
        const newSequence = new Sequence();
        newSequence.nextNumber = 1;
        newSequence.clientId = clientId;
        newSequence.tableName = tableName;
        return newSequence;
      }
    } catch (e) {
      console.log(e);
      throw new Error('can not getCode');
    }
  }

  setupCode(sequence: Sequence, userId: number): Sequence {
    sequence.lastInsertedNumber = sequence.nextNumber;
    sequence.updatedUserId = userId;
    return sequence;
  }

  async saveCode(sequence: Sequence, userId: number): Promise<Sequence> {
    sequence = this.setupCode(sequence, userId);
    return this.sequenceRepository.save(sequence);
  }
}
