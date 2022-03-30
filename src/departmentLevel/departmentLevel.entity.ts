import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Check,
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
import { Client } from '../client/client.entity';

/**
 *組織レベル
 */
@ObjectType()
@Entity()
export class DepartmentLevel {
  /**
   * 組織レベルID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '組織レベルID' })
  id: number;

  /**
   * 順序
   */
  @Field()
  @Check('"order" <= 10')
  @Column({ type: 'int', nullable: false, comment: '順序' })
  order: number;

  /**
   * 名前
   */
  @Field()
  @Column({ comment: '名前' })
  name: string;

  /**
   * 事業計画目標設定対象フラグ
   */
  @Field()
  @Column({
    type: 'boolean',
    nullable: false,
    default: false,
    comment: '事業計画目標設定対象フラグ',
  })
  planTargetFlag: boolean;

  /**
   * 導入企業
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
