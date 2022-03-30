import { Resolver, Query, Args } from '@nestjs/graphql';
import { WordFileService } from './wordFile.service';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';

/**
 * Wordファイルリゾルバ
 */
@Resolver()
export class WordFileResolver {
  constructor(private readonly wordFileService: WordFileService) {}

  /**
   * 情報提供依頼書(RFI)を作成します。
   *
   * @param user 利用者
   * @param id 情報提供依頼書ID
   * @returns 情報提供依頼書(RFI)のWordファイルのバイナリ(Base64形式)
   */
  @Query(() => String)
  @UseGuards(GqlAuthGuard)
  createRFIWordFile(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => String }) id: string,
  ): string {
    return this.wordFileService.createRFIWordFile(user, id);
  }

  /**
   * 提案依頼書(RFP)を作成します。
   *
   * @param user 利用者
   * @param id 提案依頼書ID
   * @returns 提案依頼書(RFP)のWordファイルのバイナリ(Base64形式)
   */
  @Query(() => String)
  @UseGuards(GqlAuthGuard)
  createRFPWordFile(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => String }) id: string,
  ): string {
    return this.wordFileService.createRFPWordFile(user, id);
  }
}
