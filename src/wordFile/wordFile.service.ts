import { Injectable, Logger } from '@nestjs/common';
import { Buffer } from 'buffer';
import Docxtemplater from 'docxtemplater';
import PizZip from 'pizzip';
import fs from 'fs';
import path from 'path';
import { JWTPayload } from '../auth/jwt.strategy';

/**
 * Wordファイルサービス
 */
@Injectable()
export class WordFileService {
  /**
   * 情報提供依頼書(RFI)を作成します。
   *
   * @param user 利用者
   * @param id 情報提供依頼書(RFI)ID
   * @returns 情報提供依頼書(RFI)のWordファイルのバイナリ(Base64形式)
   */
  createRFIWordFile(user: JWTPayload, id: string): string {
    // TODO 未実装
    Logger.debug(
      'call createRFIWordFile. id: ' + id + ', userId: ' + user.userId,
    );

    // テンプレート用Wordファイルの書き方
    // https://docxtemplater.readthedocs.io/en/latest/tag_types.html
    // https://docxtemplater.com/demo#loops
    // https://docxtemplater.com/demo/#loop-table

    // テンプレートファイル名 ( resource/template 配下のファイルを指定)
    const templateFile = 'rfi.docx';

    // 置き換える値
    const data = {
      first_name: '太郎(id: ' + id + ')',
      last_name: '山田',
      phone: '123123',
      description: 'てすとてすと',
      title: 'Default title',
      products: [
        {
          title: 'タイトル1',
          name: '名前1',
          reference: '111111',
        },
        {
          title: 'タイトル2',
          name: '名前2',
          reference: '222222222',
        },
      ],
      clients: [
        {
          first_name: '太郎1',
          last_name: '山田1',
          phone: '0900000000001',
        },
        {
          first_name: '太郎2',
          last_name: '山田2',
          phone: '0900000000002',
        },
      ],
    };

    return this.createWordFile(templateFile, data);
  }

  /**
   * 提案依頼書(RFP)を作成します。
   *
   * @param user 利用者
   * @param id 提案依頼書(RFP)ID
   * @returns 提案依頼書(RFP)のWordファイルのバイナリ(Base64形式)
   */
  createRFPWordFile(user: JWTPayload, id: string): string {
    // TODO 未実装
    Logger.debug(
      'call createRFPWordFile. id: ' + id + ', userId: ' + user.userId,
    );

    // テンプレートファイル名 ( resource/template 配下のファイルを指定)
    const templateFile = 'rfp.docx';

    // テンプレート用Wordファイルの書き方
    // https://docxtemplater.readthedocs.io/en/latest/tag_types.html
    // https://docxtemplater.com/demo#loops
    // https://docxtemplater.com/demo/#loop-table

    // 置き換える値
    const data = {
      first_name: '太郎(id: ' + id + ')',
      last_name: '山田',
      phone: '123123',
      description: 'てすとてすと',
      title: 'Default title',
      products: [
        {
          title: 'タイトル1',
          name: '名前1',
          reference: '111111',
        },
        {
          title: 'タイトル2',
          name: '名前2',
          reference: '222222222',
        },
      ],
      clients: [
        {
          first_name: '太郎1',
          last_name: '山田1',
          phone: '0900000000001',
        },
        {
          first_name: '太郎2',
          last_name: '山田2',
          phone: '0900000000002',
        },
      ],
    };

    return this.createWordFile(templateFile, data);
  }

  /**
   * テンプレート用WordファイルからWordファイルを作成します。
   *
   * テンプレート用Wordファイルの書き方
   * https://docxtemplater.readthedocs.io/en/latest/tag_types.html
   * https://docxtemplater.com/demo#loops
   * https://docxtemplater.com/demo/#loop-table
   *
   * @param templateFile テンプレートファイル名 ( resource/template 配下のファイルを指定)
   * @param data 置き換えデータ
   * @returns Wordファイルのバイナリ(Base64形式)
   */
  createWordFile(templateFile: string, data: any): string {
    const templateData = fs.readFileSync(
      path.resolve('resource/template', templateFile),
      'binary',
    );
    const zip = new PizZip(templateData);
    const doc = new Docxtemplater(zip);
    doc.setData(data);
    doc.render();
    const outputFileBase64 = doc.getZip().generate({ type: 'base64' });

    // TODO 開発用に data/temp 配下に Wordファイルを保存 (完成後は下記を削除)
    const dataDir = process.env.DATA_DIR as string;
    const tempDir = path.resolve(dataDir, 'temp');
    fs.mkdirSync(tempDir, { recursive: true });
    const tempFile = path.resolve(tempDir, 'output_' + templateFile);
    fs.writeFileSync(tempFile, Buffer.from(outputFileBase64, 'base64'));

    return outputFileBase64;
  }
}
