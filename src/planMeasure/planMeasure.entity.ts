import { Field, Int, ObjectType } from '@nestjs/graphql';
import { BusinessYear } from '../businessYear/businessYear.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  Unique,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Department } from 'src/department/department.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasureRisk } from 'src/planMeasureRisk/planMeasureRisk.entity';
import { PlanMeasureEffectSale } from 'src/planMeasureEffectSale/planMeasureEffectSale.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { Plan } from '../plan/plan.entity';
import { PlanMeasureCost } from '../planMeasureCost/planMeasureCost.entity';
import { PlanMeasureTask } from '../planMeasureTask/planMeasureTask.entity';

/**
 * 分類
 * @value New -> 新規
 * @value Existing -> 既存
 * @value RiskAvoidance -> リスク回避
 * @value LegalComplianceOrEtc -> 法令対応等
 */
export const CLASSIFICATION = [
  'New', // 新規
  'Existing', // 既存
  'RiskAvoidance', // リスク回避
  'LegalComplianceOrEtc', // 法令対応等
] as const;
export type PlanMeasureClassification = typeof CLASSIFICATION[number];

/**
 * 実施対象
 * @value target -> 対象
 * @value nonTarget -> 対象外
 */
export const IMPLEMENTATION_TARGET = [
  'Target', // 対象
  'NonTarget', // 対象外
] as const;
export type PlanMeasureImplementationTarget = typeof IMPLEMENTATION_TARGET[number];

/**
 * 施策
 */
@ObjectType()
@Entity()
@Unique(['code', 'client'])
export class PlanMeasure {
  /**
   * 施策ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '施策ID' })
  id: number;

  /** 施策コード */
  @Field()
  @Column('varchar', { length: 21, comment: '施策コード' })
  code?: string;

  /**
   * リスク
   */
  @Field(() => [PlanMeasureRisk], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureRisk,
    (planMeasureRisk) => planMeasureRisk.planMeasure,
    { nullable: true, cascade: true },
  )
  risks: PlanMeasureRisk[];

  /**
   * 効果(売上)
   */
  @Field(() => [PlanMeasureEffectSale], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureEffectSale,
    (planMeasureEffectSale) => planMeasureEffectSale.planMeasure,
    { nullable: true, cascade: true },
  )
  sales: PlanMeasureEffectSale[];

  /**
   * 効果(コスト)
   */
  @Field(() => [PlanMeasureCost], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureCost,
    (planMeasureRisk) => planMeasureRisk.planMeasure,
    { nullable: true, cascade: true },
  )
  costs: PlanMeasureCost[];

  /**
   * タスク
   */
  @Field(() => [PlanMeasureTask], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureTask,
    (planMeasureRisk) => planMeasureRisk.planMeasure,
    { nullable: true, cascade: true },
  )
  tasks: PlanMeasureTask[];

  /**
   * 事業計画
   */
  @Field(() => [Plan], { nullable: 'itemsAndList' })
  @ManyToMany(() => Plan, (plan) => plan.planMeasures, { nullable: true })
  @JoinTable()
  plans?: Plan[];

  /**
   * 計画年度
   */
  @Field(() => BusinessYear, { nullable: true })
  @ManyToOne(() => BusinessYear, (businessYear) => businessYear.planMeasures, {
    nullable: false,
    eager: true,
  })
  @JoinTable()
  businessYear: BusinessYear;

  /**
   * 組織
   */
  @Field(() => Department, { nullable: true })
  @ManyToOne(() => Department, { nullable: false, eager: true })
  @JoinColumn()
  department: Department;

  /**
   * 施策名
   */
  @Field()
  @Column({ length: 200, nullable: false, comment: '施策名' })
  measureName: string;

  /**
   * 概要
   */
  @Field({ nullable: true })
  @Column({ length: 2048, nullable: true, comment: '概要' })
  overview?: string;

  /**
   * 分類
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: CLASSIFICATION,
    comment: '分類',
    array: false,
    nullable: true,
  })
  classification: PlanMeasureClassification;

  /**
   * 実施対象
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: IMPLEMENTATION_TARGET,
    comment: '実施対象',
    array: false,
    nullable: true,
  })
  implementationTarget?: PlanMeasureImplementationTarget;

  /**
   * 登録者
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(() => UserDepartment, (user) => user.planMeasures, {
    eager: true,
    nullable: false,
  })
  @JoinColumn()
  registeredBy: UserDepartment;

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
