import { Field, Int, ObjectType } from '@nestjs/graphql';
import { Client } from 'src/client/client.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { AccountDisplayTitle } from '../accountDisplayTitle/accountDisplayTitle.entity';

export const ACCOUNT_TITLE_TYPES = ['laborCost'] as const;
export type AccountTitleType = typeof ACCOUNT_TITLE_TYPES[number];

/**
 * 勘定科目マスタ
 */
@ObjectType()
@Entity()
export class AccountTitle {
  /**
   * 科目ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '科目ID' })
  id: number;

  /**
   * 勘定科目名
   */
  @Field()
  @Column({ length: 255, comment: '勘定科目名' })
  name: string;

  /**
   * 勘定科目区分
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: ACCOUNT_TITLE_TYPES,
    array: false,
    nullable: true,
    comment: '勘定科目区分',
  })
  type?: AccountTitleType;

  /**
   * 科目マスタ
   */
  @Field(() => AccountDisplayTitle)
  @ManyToOne(() => AccountDisplayTitle, { nullable: false, eager: true })
  @JoinColumn()
  accountDisplayTitle: AccountDisplayTitle;

  /**
  導入企業
  */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

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
  @Column({ type: 'integer', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
