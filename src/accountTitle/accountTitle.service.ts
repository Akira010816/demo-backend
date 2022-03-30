import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';
import { AccountTitle } from './accountTitle.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class AccountTitleService {
  constructor(
    @InjectRepository(AccountTitle)
    private readonly accountTitleRepository: Repository<AccountTitle>,
  ) {
    this.accountTitleRepository = accountTitleRepository;
  }

  async findAll(user: JWTPayload): Promise<Array<AccountTitle>> {
    return this.accountTitleRepository.find({
      where: { client: { id: user.clientId } },
      order: { id: 'ASC' },
    });
  }
}
