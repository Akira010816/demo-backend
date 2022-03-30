import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { JWTPayload } from 'src/auth/jwt.strategy';
import { Repository } from 'typeorm';
import { Company } from './company.entity';

/**
 * 事業者サービス
 */
@Injectable()
export class CompanyService {
  constructor(
    @InjectRepository(Company)
    private readonly companyRepository: Repository<Company>,
  ) {}

  /**
   * 全ての事業者一覧を返します。
   *
   * @param user 利用者
   * @returns 全ての事業者一覧
   */
  async findAllCompanies(
    user: JWTPayload,
  ): Promise<Array<Company> | undefined> {
    return this.companyRepository.find({
      where: { client: { id: user.clientId } },
      order: { id: 'ASC' },
    });
  }
}
