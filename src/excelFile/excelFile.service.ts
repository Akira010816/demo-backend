import { Injectable, Logger } from '@nestjs/common';
import fs from 'fs';
import path from 'path';
import XlsxTemplate from 'xlsx-template';
import { JWTPayload } from '../auth/jwt.strategy';

/**
 * Excelファイルサービス
 */
@Injectable()
export class ExcelFileService {
  /**
   * TODO: Excelファイルの作成サンプルです。実装後は下記のメソッドを削除してください。
   *
   * Excelファイを作成します。
   *
   * @param user 利用者
   * @param id ExcelファイルID
   * @returns Excelファイルのバイナリ(Base64形式)
   */
  createSampleExcelFile(user: JWTPayload, id: string): string {
    // TODO 未実装
    Logger.debug(
      'call createSampleExcelFile. id: ' + id + ', userId: ' + user.userId,
    );

    // テンプレート用Excelファイルの書き方
    // https://github.com/optilude/xlsx-template

    // テンプレートファイル名 ( resource/template 配下のファイルを指定)
    const templateFile = 'example1.xlsx';

    // シート番号
    const sheetNumber = 1;

    // 置き換えデータ
    const data = {
      extractDate: 'てすとてすと',
      name: '名前1',
      description: '説明1',
      people: [
        {
          name: '山田　太郎',
          age: 19,
        },
        {
          name: '鈴木　花子',
          age: 22,
        },
      ],
    };

    return this.createExcelFile(templateFile, sheetNumber, data);
  }

  /**
   * テンプレート用ExcelファイルからExcelファイルを作成します。
   *
   * テンプレート用Excelファイルの書き方
   * https://github.com/optilude/xlsx-template
   *
   * @param templateFile テンプレートファイル名 ( resource/template 配下のファイルを指定)
   * @param data 置き換えデータ
   * @returns Excelファイルのバイナリ(Base64形式)
   */
  createExcelFile(
    templateFile: string,
    sheetNumber: number,
    data: any,
  ): string {
    const templateData = fs.readFileSync(
      path.resolve('resource/template', templateFile),
    );
    const template = new XlsxTemplate(templateData);
    template.substitute(sheetNumber, data);
    const outputFileBase64 = template.generate({ type: 'base64' }) as string;

    // TODO 開発用に data/temp 配下に　Excelファイルを保存 (完成後は下記を削除)
    const dataDir = process.env.DATA_DIR as string;
    const tempDir = path.resolve(dataDir, 'temp');
    fs.mkdirSync(tempDir, { recursive: true });
    const tempFile = path.resolve(tempDir, 'output_' + templateFile);
    fs.writeFileSync(tempFile, Buffer.from(outputFileBase64, 'base64'));

    return outputFileBase64;
  }
}
