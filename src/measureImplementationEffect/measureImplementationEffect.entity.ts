import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
  TableInheritance,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { Measure } from '../measure/measure.entity';

/**
 * 実施効果
 */
@ObjectType()
@Entity()
@TableInheritance({ column: { type: 'varchar', name: 'type' } })
export class MeasureImplementationEffect {
  /**
   * 実施効果ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '実施効果ID' })
  id?: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 施策案ID
   */
  @Field(() => Int, { nullable: true })
  @Column({ type: 'integer', comment: '施策案ID', nullable: true })
  measureId?: number;

  /**
   * 施策案ID
   */
  @ManyToOne(() => Measure, (measure) => measure.measureImplementationEffects, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  measure?: Measure;

  /**
   * 評価項目
   */
  @Field()
  @Column({ length: 200, comment: '名称' })
  evaluation?: string;

  /**
   * 改善前の値
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '改善前の値', nullable: true })
  valueBeforeImprovement?: string;

  /**
   * 改善後の値
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '改善後の値', nullable: true })
  valueAfterImprovement?: string;

  /**
   * 効果算定根拠
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '効果算定根拠', nullable: true })
  calculationBasis?: string;

  /**
   * 効果検証開始時期
   */
  @Field({ nullable: true })
  @CreateDateColumn({ comment: '効果検証開始時期' })
  startAt?: Date;

  /**
   * 効果検証開始時期内容
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '効果検証開始時期内容', nullable: true })
  startAtMemo?: string;

  /**
   * 効果測定方法
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '効果測定方法', nullable: true })
  measuringMethod?: string;

  /**
   * 年間の金額効果
   */
  @Field({ nullable: true })
  @Column({
    type: 'bigint', // P2FW-443
    comment: '年間の金額効果',
    default: 0,
    nullable: true,
  })
  annualCostEffect?: number;

  /**
   * バージョン
   */
  @Field()
  @VersionColumn({ default: 1, comment: 'バージョン' })
  version?: number;

  /**
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '更新利用者ID' })
  updatedUserId?: number;

  /**
   * 作成日時
   */
  @Field()
  @CreateDateColumn({ comment: '作成日時' })
  createdAt?: Date;

  /**
   * 更新日時
   */
  @Field()
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 削除日時
   */
  @DeleteDateColumn({ comment: '削除日時' })
  deletedAt?: Date;
}
