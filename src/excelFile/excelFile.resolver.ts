import { Resolver, Query, Args } from '@nestjs/graphql';
import { ExcelFileService } from './excelFile.service';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';

/**
 * Excelファイルリゾルバ
 */
@Resolver()
export class ExcelFileResolver {
  constructor(private readonly excelFileService: ExcelFileService) {}

  /**
   * TODO: Excelファイルの作成サンプルです。実装後は下記のメソッドを削除してください。
   *
   * Excelファイを作成します。
   *
   * @param user 利用者
   * @param id ExcelファイルID
   * @returns Excelファイルのバイナリ(Base64形式)
   */
  @Query(() => String)
  @UseGuards(GqlAuthGuard)
  createSampleExcelFile(
    @CurrentUser() user: JWTPayload,
    @Args('id', { type: () => String }) id: string,
  ): string {
    return this.excelFileService.createSampleExcelFile(user, id);
  }
}
