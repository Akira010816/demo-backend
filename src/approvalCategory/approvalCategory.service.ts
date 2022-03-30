import { Injectable } from '@nestjs/common';
import { SequenceService } from '../sequence/sequence.service';
import { JWTPayload } from '../auth/jwt.strategy';
import {
  ApprovalCategory,
  ApprovalCategorySlug,
} from './approvalCategory.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

@Injectable()
export class ApprovalCategoryService {
  constructor(
    private readonly sequenceService: SequenceService,
    @InjectRepository(ApprovalCategory)
    private readonly approvalCategoryRepository: Repository<ApprovalCategory>,
  ) {
    this.sequenceService = sequenceService;
    this.approvalCategoryRepository = approvalCategoryRepository;
  }

  async findBySlug(
    user: JWTPayload,
    slug: ApprovalCategorySlug,
  ): Promise<ApprovalCategory | undefined> {
    return await this.approvalCategoryRepository.findOne({
      where: { client: { id: user.clientId }, slug },
      relations: ['approvalEmailTemplate', 'approvalRequestMessageTemplate'],
    });
  }
}
