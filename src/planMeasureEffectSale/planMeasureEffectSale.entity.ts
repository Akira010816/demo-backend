import { Field, Int, ObjectType } from '@nestjs/graphql';
import { BusinessYear } from '../businessYear/businessYear.entity';
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
import { Department } from 'src/department/department.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { PlanMeasureEffectSalePrice } from 'src/planMeasureEffectSalePrice/planMeasureEffectSalePrice.entity';

/**
 * 項目
 * @value sales -> 売上
 * @value deemedSales -> みなし売上
 */
export const PLAN_MEASURE_SALE_PROJECT = [
  'Sales', // 売上
  'DeemedSales', // みなし売上
] as const;
export type PlanMeasureEffectSaleProject = typeof PLAN_MEASURE_SALE_PROJECT[number];

/**
 * 効果増減
 * @value increase -> 増加
 * @value decrease -> 減少
 * @value maintainStatusQuo -> 現状維持
 */
export const PLAN_MEASURE_EFFECT_SALE_INC_DEC = [
  'Increase', // 増加
  'Decrease', // 減少
  'MaintainStatusQuo', // 現状維持
] as const;
export type PlanMeasureEffectSaleIncDec = typeof PLAN_MEASURE_EFFECT_SALE_INC_DEC[number];

/**
 * 効果(売上)
 */
@ObjectType()
@Entity()
export class PlanMeasureEffectSale {
  /**
   * 効果ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '効果ID' })
  id: number;

  /**
   * 施策ID
   */
  @Field(() => PlanMeasure, { nullable: true })
  @ManyToOne(() => PlanMeasure, (planMeasure) => planMeasure.sales, {
    nullable: false,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  planMeasure: PlanMeasure;

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
   * 売上金額
   */
  @Field(() => [PlanMeasureEffectSalePrice], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureEffectSalePrice,
    (planMeasureEffectSalePrice) =>
      planMeasureEffectSalePrice.planMeasureEffectSale,
    {
      nullable: true,
      cascade: true,
    },
  )
  prices: PlanMeasureEffectSalePrice[];

  /**
   * 項目
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_SALE_PROJECT,
    comment: '項目',
    array: false,
    nullable: true,
  })
  project?: PlanMeasureEffectSaleProject;

  /**
   * 効果増減
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_EFFECT_SALE_INC_DEC,
    comment: '効果増減',
    array: false,
    nullable: true,
  })
  effectIncDec?: PlanMeasureEffectSaleIncDec;

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
