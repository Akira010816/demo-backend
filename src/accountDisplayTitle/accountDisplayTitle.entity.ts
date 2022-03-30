import { Field, Int, ObjectType } from '@nestjs/graphql';
import { Client } from 'src/client/client.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

export const ACCOUNT_DISPLAY_TITLE_TYPES = [
  'cost',
  'sellingExpense',
  'generalAdministrativeExpense',
] as const;
export type AccountDisplayTitleType = typeof ACCOUNT_DISPLAY_TITLE_TYPES[number];

/**
 * 科目マスタ
 */
@ObjectType()
@Entity()
export class AccountDisplayTitle {
  /**
   * 科目ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '科目ID' })
  id: number;

  /**
   * 科目名
   */
  @Field()
  @Column({ length: 255, nullable: false, comment: '科目名' })
  name: string;

  /**
   * 科目区分
   */
  @Field()
  @Column({
    type: 'enum',
    enum: ACCOUNT_DISPLAY_TITLE_TYPES,
    array: false,
    nullable: true,
    comment: '科目区分',
  })
  type: AccountDisplayTitleType;

  /**
   * 勘定科目
   */
  @Field(() => [AccountTitle])
  @OneToMany(
    () => AccountTitle,
    (accountTitle) => accountTitle.accountDisplayTitle,
    {
      nullable: false,
    },
  )
  accountTitles: [AccountTitle];

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
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
