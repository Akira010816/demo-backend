import { Field, Float, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { Client } from '../client/client.entity';
import { Department } from '../department/department.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { PlanMeasureRegistrationRequest } from '../planMeasureRegistrationRequest/planMeasureRegistrationRequest.entity';

const PLAN_STATUSES = ['inProgress', 'confirmed'] as const;

export type PlanStatus = typeof PLAN_STATUSES[number];

@ObjectType()
@Entity()
export class Plan {
  /**
   * 事業計画 ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '事業計画ID' })
  id: number;

  /**
   * 施策
   */
  @Field(() => [PlanMeasure], { nullable: 'itemsAndList' })
  @ManyToMany(() => PlanMeasure, (planMeasure) => planMeasure.plans, {
    nullable: true,
  })
  planMeasures?: PlanMeasure[];

  /**
   * 施策登録依頼
   */
  @Field(() => [PlanMeasureRegistrationRequest], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureRegistrationRequest,
    (planMeasureRegistrationRequest) => planMeasureRegistrationRequest.plan,
    {
      nullable: true,
    },
  )
  planMeasureRegistrationRequests?: PlanMeasureRegistrationRequest[];

  /**
   * 承認依頼者
   */
  @Field(() => Department, { nullable: true })
  @ManyToOne(() => Department, (department) => department.plans, {
    nullable: true,
  })
  @JoinColumn()
  department: Department;

  /**
   * ステータス
   */
  @Field(() => String)
  @Column({
    type: 'enum',
    enum: PLAN_STATUSES,
    default: 'inProgress',
    nullable: false,
    comment: 'ステータス',
  })
  status: PlanStatus;

  /**
   * 目標売上額
   */
  @Field(() => Float)
  @Column({ type: 'float', nullable: false, default: 0, comment: '目標売上額' })
  targetSales: number;

  /**
   * みなし売上
   */
  @Field(() => Float)
  @Column({ type: 'float', nullable: false, default: 0, comment: 'みなし売上' })
  deemedSales: number;

  /**
   * 目標売上原価
   */
  @Field(() => Float)
  @Column({
    type: 'float',
    nullable: false,
    default: 0,
    comment: '目標売上原価',
  })
  targetSalesCost: number;

  /**
   * 目標販売費
   */
  @Field(() => Float)
  @Column({
    type: 'float',
    nullable: false,
    default: 0,
    comment: '目標販売費',
  })
  targetSellingExpense: number;

  /**
   * 目標販売費（自部門コスト）
   */
  @Field(() => Float)
  @Column({
    type: 'float',
    nullable: false,
    default: 0,
    comment: '目標販売費（自部門コスト）',
  })
  targetSellingExpenseOfOwnDepartment: number;

  /**
   * 目標一般管理費
   */
  @Field(() => Float)
  @Column({
    type: 'float',
    nullable: false,
    default: 0,
    comment: '目標一般管理費',
  })
  targetGeneralAdministrativeExpense: number;

  /**
   * 事業計画(年度)
   */
  @Field(() => AnnualPlan, { nullable: true })
  @ManyToOne(() => AnnualPlan, (annualPlan) => annualPlan.plans, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  annualPlan?: AnnualPlan;

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
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '更新利用者ID' })
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

  /**
   * 削除利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
