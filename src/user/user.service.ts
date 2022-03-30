import { LessThan, MoreThan, Repository, UpdateResult } from 'typeorm';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from './user.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import { Client } from 'src/client/client.entity';

/**
 * 利用者サービス
 */
@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  /**
   * ログインIDから利用者を返します。
   *
   * @param loginId: ログインID
   * @returns User
   */
  async findOneByLoginIdAndClient(
    loginId: User['loginId'],
    //client: Client,
  ): Promise<User | undefined> {
    const now = new Date();
    return this.userRepository.findOne({
      where: {
        loginId: loginId,
        activatedAt: LessThan(now.toISOString()),
        expiredAt: MoreThan(now.toISOString()),
      },
      // client: client,
      relations: ['client', 'userDepartments'],
    });
  }

  /**
   * ユーザーIDから利用者を返します。
   *
   * @param userId: ID
   * @returns User
   */
  async findOneByUserId(userId: User['id']): Promise<User | undefined> {
    const now = new Date().toISOString();
    return (
      this.userRepository
        .createQueryBuilder('user')
        .innerJoinAndSelect('user.client', 'client')
        .innerJoinAndSelect(
          'user.userDepartments',
          'userDepartments',
          'userDepartments.activatedAt < :now AND userDepartments.expiredAt > :now',
          { now: now },
        )
        .innerJoinAndSelect('userDepartments.department', 'department')
        .innerJoin('userDepartments.client', 'userDpmClient')
        .leftJoinAndSelect(
          'userDepartments.accessControl',
          'userDpmAccessControl',
          `userDpmAccessControl.client_id = userDpmClient.id`,
        )
        // P2FW-719
        .leftJoinAndSelect(
          'userDpmAccessControl.targetDepartmentLevel',
          'userDpmAccCtrlDpmLevel',
        )
        .innerJoinAndSelect('userDepartments.position', 'position')
        .leftJoinAndSelect(
          'position.accessControl',
          'positionAccessControl',
          `positionAccessControl.client_id = userDpmClient.id`,
        )
        // P2FW-719
        .leftJoinAndSelect(
          'positionAccessControl.targetDepartmentLevel',
          'posAccCtrlDpmLevel',
        )
        .andWhere(`user.id = ${userId}`)
        .getOne()
    );
  }

  /**
   * 利用者を返します。
   *
   * @returns User[]
   */
  async findAll(user: JWTPayload): Promise<Array<User> | undefined> {
    return this.userRepository.find({
      where: {
        client: {
          id: user.clientId,
        },
      },
      relations: ['client', 'departments'],
      order: { id: 'ASC' },
    });
  }

  /**
   * 最終ログイン日時を更新します。
   *
   * @param loginId: ログインID
   * @returns Promise<UpdateResult>
   */
  async updateLastLoggedInAt(loginId: User['loginId']): Promise<UpdateResult> {
    return this.userRepository.update(
      { loginId: loginId },
      { lastLoggedInAt: new Date() },
    );
  }
}
