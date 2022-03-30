import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  PrimaryGeneratedColumn,
  ManyToOne,
  VersionColumn,
  JoinColumn,
  DeleteDateColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';

/**
 * 事業者
 */
@ObjectType()
@Entity()
export class Company {
  /**
   * 事業者ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '事業者ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, (client) => client.departments, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 事業者コード
   */
  @Field()
  @Column({ length: 20, comment: '事業者コード' })
  code: string;

  /**
   * 事業者名
   */
  @Field()
  @Column({ length: 200, comment: '事業者名' })
  name: string;

  /**
   * 郵便番号
   */
  @Field()
  @Column({ length: 10, comment: '郵便番号' })
  zipCode: string;

  /**
   * 住所
   */
  @Field()
  @Column({ length: 200, comment: '住所' })
  address: string;

  /**
   * 窓口担当者
   */
  @Field()
  @Column({ length: 50, comment: '窓口担当者' })
  person: string;

  /**
   * 電話番号
   */
  @Field()
  @Column({ length: 20, comment: '電話番号' })
  phone: string;

  /**
   * メールアドレス
   */
  @Field()
  @Column({ length: 100, comment: 'メールアドレス' })
  mailAddress: string;

  /**
   * バージョン
   */
  @Field()
  @VersionColumn({ default: 1, comment: 'バージョン' })
  version?: number;

  /**
   * 作成日時
   */
  @Field()
  @CreateDateColumn({ comment: '作成日時' })
  createdAt?: Date;

  /**
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新日時
   */
  @Field()
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '更新利用者ID' })
  updatedUserId?: number;

  /**
   * 削除日時
   */
  @DeleteDateColumn({ comment: '削除日時' })
  deletedAt?: Date;

  /**
   * 削除利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
