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
import { PlanMeasureCostPrice } from '../planMeasureCostPrice/planMeasureCostPrice.entity';
import { PlanMeasureCostAssign } from 'src/planMeasureCostAssign/planMeasureCostAssign.entity';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

/**
 * 項目
 * @value cost -> コスト
 * @value deemedCost -> みなしコスト
 * @value other -> その他
 */
export const PLAN_MEASURE_COST_ITEM = [
  'Cost', // コスト
  'DeemedCost', // みなしコスト
  'Other', // その他
] as const;
export type PlanMeasureCostItem = typeof PLAN_MEASURE_COST_ITEM[number];

/**
 * 効果増減
 * @value increase -> 増加
 * @value decrease -> 減少
 * @value maintainStatusQuo -> 現状維持
 */
export const PLAN_MEASURE_COST_EFFECT_INC_DEC = [
  'Increase', // 増加
  'Decrease', // 減少
  'MaintainStatusQuo', // 現状維持
] as const;
export type PlanMeasureCostEffectIncDec = typeof PLAN_MEASURE_COST_EFFECT_INC_DEC[number];

/**
 * 効果(コスト)
 */
@ObjectType()
@Entity()
export class PlanMeasureCost {
  /**
   * 効果ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '効果ID' })
  id: number;

  /**
   * 施策
   */
  @Field(() => PlanMeasure, { nullable: true })
  @ManyToOne(() => PlanMeasure, (planMeasure) => planMeasure.costs, {
    nullable: false,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  planMeasure: PlanMeasure;

  /**
   * 計画年度
   */
  @Field(() => BusinessYear)
  @ManyToOne(() => BusinessYear, { nullable: false, eager: true })
  @JoinColumn()
  businessYear: BusinessYear;

  /**
   * 組織
   */
  @Field(() => Department)
  @ManyToOne(() => Department, { nullable: false, eager: true })
  @JoinColumn()
  department: Department;

  /**
   * コスト金額
   */
  @Field(() => [PlanMeasureCostPrice], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureCostPrice,
    (planMeasureCostPrice) => planMeasureCostPrice.planMeasureCost,
    {
      nullable: true,
      cascade: true,
    },
  )
  prices: PlanMeasureCostPrice[];

  /**
   * コスト名
   */
  @Field({ nullable: true })
  @Column({ length: 200, nullable: true, comment: 'コスト名' })
  costName?: string;

  /**
   * 項目
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_COST_ITEM,
    comment: '項目',
    array: false,
    nullable: true,
  })
  item?: PlanMeasureCostItem;

  /**
   * 効果増減
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_COST_EFFECT_INC_DEC,
    nullable: true,
    array: false,
    comment: '効果増減',
  })
  effectIncDec?: PlanMeasureCostEffectIncDec;

  /**
   * 勘定科目ID
   */
  @Field({ nullable: true })
  @ManyToOne(() => AccountTitle, { nullable: true, eager: true })
  @JoinColumn()
  accountTitle?: AccountTitle;

  /**
   * リスクコスト計上先
   */
  @Field(() => [PlanMeasureCostAssign], { nullable: true })
  @OneToMany(
    () => PlanMeasureCostAssign,
    (planMeasureCostAssign) => planMeasureCostAssign.cost,
    {
      nullable: true,
      cascade: true,
    },
  )
  assigns?: PlanMeasureCostAssign[];

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
