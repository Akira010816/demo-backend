import { Injectable } from '@nestjs/common';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  FindManyOptions,
  LessThan,
  MoreThan,
  ObjectID,
  Repository,
} from 'typeorm';
import { InjectRepository } from '@nestjs/typeorm';
import { UserDepartment } from './userDepartment.entity';
import { Department } from '../department/department.entity';

@Injectable()
export class UserDepartmentService {
  constructor(
    @InjectRepository(UserDepartment)
    private readonly userDepartmentRepository: Repository<UserDepartment>,
    @InjectRepository(Department)
    private readonly departmentRepository: Repository<Department>,
  ) {}

  findMyUserDepartments(user: JWTPayload): Promise<UserDepartment[]> {
    const now = new Date();
    return this.userDepartmentRepository.find({
      where: {
        client: { id: user.clientId },
        user: { id: user.userId },
        activatedAt: LessThan(now.toISOString()),
        expiredAt: MoreThan(now.toISOString()),
      },
      order: { id: 'ASC' },
    });
  }

  findCurrentUserDepartment(
    user: JWTPayload,
  ): Promise<UserDepartment | undefined> {
    return this.userDepartmentRepository.findOne({
      where: {
        client: { id: user.clientId },
        user: { id: user.userId },
        department: { id: user.departmentId },
      },
      //relations: ['position'],
    });
  }

  findAll(user: JWTPayload): Promise<UserDepartment[]> {
    const now = new Date().toISOString();
    return this.userDepartmentRepository.find({
      where: {
        client: { id: user.clientId },
        activatedAt: LessThan(now),
        expiredAt: MoreThan(now),
      },
      order: { id: 'ASC' },
    });
  }

  async findAllWithChildren(user: JWTPayload): Promise<UserDepartment[]> {
    const now = new Date().toISOString();
    const departmentOfMaxLevel = await this.userDepartmentRepository
      .createQueryBuilder('userDepartment')
      .where(
        'userDepartment.client_id = :clientId AND userDepartment.activatedAt < :now AND userDepartment.expiredAt > :now',
        {
          clientId: user.clientId,
          now: now,
        },
      )
      .leftJoinAndSelect('userDepartment.department', 'department')
      .leftJoin('department.departmentLevel', 'departmentLevel')
      .orderBy('departmentLevel.order')
      .getOne();

    const userDepartments = await this.userDepartmentRepository.find({
      where: { client: { id: user.clientId } },
      order: { id: 'ASC' },
      // relations: ['department.children'] doesn't work
      // because the eager loading option of Department entity has been set to true
      // and also getting children from nested relations doesn't work
    });

    const relations = Array.from({
      length: departmentOfMaxLevel?.department.departmentLevel?.order ?? 0,
    }).map((v, i) => Array.from({ length: i + 1 }, () => 'children').join('.'));

    const departmentsWithChildren = await this.departmentRepository.find({
      where: { client: { id: user.clientId } },
      order: { id: 'ASC' },
      relations,
    });

    return userDepartments.map((userDepartment) => ({
      ...userDepartment,
      department:
        departmentsWithChildren.filter(
          (department) => department.id === userDepartment.department.id,
        )?.[0] ?? null,
    }));
  }

  async findByIds(ids?: Array<number>): Promise<UserDepartment[] | undefined> {
    if (!ids) return undefined;
    return this.userDepartmentRepository.find({
      where: ids.map((id) => ({ id })),
    });
  }

  find(
    args: FindManyOptions<UserDepartment> | undefined,
  ): Promise<UserDepartment[] | undefined> {
    return this.userDepartmentRepository.find(args);
  }

  findOne(
    args: string | number | Date | ObjectID | undefined,
  ): Promise<UserDepartment | undefined> {
    return this.userDepartmentRepository.findOne(args);
  }
}
