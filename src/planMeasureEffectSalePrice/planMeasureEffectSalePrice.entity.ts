import { Field, Int, ObjectType } from '@nestjs/graphql';
import { BusinessYear } from '../businessYear/businessYear.entity';
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
import { PlanMeasureEffectSale } from '../planMeasureEffectSale/planMeasureEffectSale.entity';
import { Department } from 'src/department/department.entity';
import { Client } from 'src/client/client.entity';

/**
 * 効果(売上)金額
 */
@ObjectType()
@Entity()
export class PlanMeasureEffectSalePrice {
  /**
   * 効果(売上)金額ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'リスク金額ID' })
  id: number;

  /**
   * 計画年度
   */
  @Field(() => BusinessYear, { nullable: true })
  @ManyToOne(() => BusinessYear, { nullable: false, eager: true })
  @JoinColumn()
  businessYear: BusinessYear;

  /**
   * 組織
   */
  @Field(() => Department, { nullable: true })
  @ManyToOne(() => Department, { nullable: false, eager: true })
  @JoinColumn()
  department: Department;

  /**
   * 効果 (売上)
   */
  @Field(() => PlanMeasureEffectSale)
  @ManyToOne(
    () => PlanMeasureEffectSale,
    (planMeasureEffectSale) => planMeasureEffectSale.prices,
    {
      nullable: false,
      onDelete: 'CASCADE',
      orphanedRowAction: 'delete',
    },
  )
  @JoinColumn()
  planMeasureEffectSale: PlanMeasureEffectSale;

  /**
   * 発生年
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '発生年' })
  yearOfOccurrence: number;

  /**
   * 発生月
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '発生月' })
  monthOfOccurrence: number;

  /**
   * コスト
   */
  @Field({ nullable: true })
  @Column({ type: 'decimal', nullable: false, comment: 'コスト', default: 0 })
  cost: number;

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
  @Column({ type: 'integer', nullable: true, comment: '作成利用者ID' })
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
  @Column({ type: 'integer', nullable: true, comment: '更新利用者ID' })
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
