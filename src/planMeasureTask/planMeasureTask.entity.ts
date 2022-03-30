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
import { PlanMeasureTaskPrice } from 'src/planMeasureTaskPrice/planMeasureTaskPrice.entity';
import { PlanMeasureTaskAssign } from 'src/planMeasureTaskAssign/planMeasureTaskAssign.entity';
import { PlanMeasureTaskAllocation } from 'src/planMeasureTaskAllocation/planMeasureTaskAllocation.entity';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

/**
 * コスト計上先
 * @value ownDepartment -> 自部門
 * @value common -> 共通
 */
export const PLAN_MEASURE_TASK_COST_RECORDING_DESTINATION = [
  'OwnDepartment', // 自部門
  'Common', // 共通
] as const;
export type PlanMeasureTaskCostRecordingDestination = typeof PLAN_MEASURE_TASK_COST_RECORDING_DESTINATION[number];

/**
 * KPI期間 types
 * @value Monthly -> 毎月
 * @value Quarter -> 四半期
 * @value HalfPeriod -> 半期
 * @value Yearly -> 年間
 */
export const KPI_PERIODS = [
  'Monthly', // 毎月
  'Quarter', // 四半期
  'HalfPeriod', // 半期
  'Yearly', // 年間
] as const;
export type KPIPeriods = typeof KPI_PERIODS[number];

/**
 * KPI種類
 * @value Effect -> 効果
 * @value Schedule -> スケジュール
 * @value Others -> その他
 */
export const KPI_TYPES = [
  'Effect', // 効果
  'Schedule', // スケジュール
  'Others', // その他
] as const;
export type KPITypes = typeof KPI_TYPES[number];

/**
 * タスク
 */
@ObjectType()
@Entity()
export class PlanMeasureTask {
  /**
   * タスクID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'タスクID' })
  id: number;

  /**
   * 施策ID
   */
  @Field(() => PlanMeasure, { nullable: true })
  @ManyToOne(() => PlanMeasure, (planMeasure) => planMeasure.tasks, {
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
   * タスクコスト
   */
  @Field(() => [PlanMeasureTaskPrice], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureTaskPrice,
    (planMeasureTaskPrice) => planMeasureTaskPrice.task,
    { nullable: true, cascade: true },
  )
  prices?: PlanMeasureTaskPrice[];

  /**
   * タスク配賦
   */
  @Field(() => [PlanMeasureTaskAllocation], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureTaskAllocation,
    (planMeasureTaskPrice) => planMeasureTaskPrice.task,
    { nullable: true, cascade: true },
  )
  allocations?: PlanMeasureTaskAllocation[];

  /**
   * タスクコスト計上先
   */
  @Field(() => [PlanMeasureTaskAssign], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureTaskAssign,
    (planMeasureTaskAssign) => planMeasureTaskAssign.task,
    {
      nullable: true,
      cascade: true,
    },
  )
  assigns?: PlanMeasureTaskAssign[];

  /**
   * タスク名
   */
  @Field()
  @Column({ length: 200, comment: 'タスク名' })
  taskName: string;

  /**
   * 勘定科目ID
   */
  @Field({ nullable: true })
  @ManyToOne(() => AccountTitle, { nullable: true, eager: true })
  @JoinColumn()
  accountTitle?: AccountTitle;

  /**
   * コスト計上先
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_TASK_COST_RECORDING_DESTINATION,
    comment: 'コスト計上先',
    array: false,
    nullable: true,
  })
  costRecordingDestination?: PlanMeasureTaskCostRecordingDestination;

  /**
   * KPI種類
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: KPI_TYPES,
    nullable: true,
    array: false,
    comment: 'KPI種類',
  })
  kpiType?: KPITypes;

  /**
   * KPIその他
   */
  @Field({ nullable: true })
  @Column({ length: 50, comment: 'KPIその他', nullable: true })
  kpiOther?: string;

  /**
   * KPI閾値
   */
  @Field({ nullable: true, defaultValue: 0 })
  @Column({ length: 255, nullable: true, comment: 'KPI閾値' })
  kpiThreshold?: string;

  /**
   * KPI期間
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: KPI_PERIODS,
    nullable: true,
    array: false,
    comment: 'KPI期間',
  })
  kpiPeriod?: KPIPeriods;

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
