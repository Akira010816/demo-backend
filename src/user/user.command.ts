import { Command } from 'nestjs-command';
import { Injectable } from '@nestjs/common';
import { UserFactory } from './user.factory';
import { Repository } from 'typeorm';
import { User } from './user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Client } from '../client/client.entity';
import { ClientFactory } from '../client/client.factory';

@Injectable()
export class UserCommand {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Client)
    private readonly clientRepository: Repository<Client>,
  ) {}
  @Command({
    command: 'create:user',
    describe: 'create users',
    autoExit: true,
  })
  async create() {
    const clientData: Client = ClientFactory.build();
    const client = await this.clientRepository.save(clientData);

    const user: User = UserFactory.build({ client: client });
    return this.userRepository.save(user);
  }
}
