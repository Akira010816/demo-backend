import { Injectable } from '@nestjs/common';
import { Department } from './department.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import { Repository } from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class DepartmentService {
  constructor(
    @InjectRepository(Department)
    private readonly departmentRepository: Repository<Department>,
  ) {}
  findAll(user: JWTPayload): Promise<Department[]> {
    return this.departmentRepository.find({
      where: { client: { id: user.clientId } },
      order: { id: 'ASC' },
      relations: ['parent'],
    });
  }
}
