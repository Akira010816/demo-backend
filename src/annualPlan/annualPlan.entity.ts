import { Field, Int, ObjectType } from '@nestjs/graphql';
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
import { Plan } from '../plan/plan.entity';
import { Client } from '../client/client.entity';
import { Department } from '../department/department.entity';
import { BusinessYear } from '../businessYear/businessYear.entity';
import { ApprovedAnnualPlanSnapshot } from '../approvedAnnualPlanSnapshot/approvedAnnualPlanSnapshot.entity';

const ANNUAL_PLAN_STATUSES = ['inProgress', 'approved'] as const;

type AnnualPlanStatus = typeof ANNUAL_PLAN_STATUSES[number];

@ObjectType()
@Entity()
export class AnnualPlan {
  /**
   * 事業計画(年度) ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '事業計画ID' })
  id: number;

  /**
   * 事業計画年度
   */
  @Field(() => BusinessYear, { nullable: true })
  @ManyToOne(() => BusinessYear, (businessYear) => businessYear.annualPlans, {
    nullable: false,
    eager: true,
  })
  businessYear: BusinessYear;

  /**
   * 承認済み年度計画のスナップショット
   */
  @Field(() => [ApprovedAnnualPlanSnapshot], { nullable: true })
  @OneToMany(
    () => ApprovedAnnualPlanSnapshot,
    (approvedAnnualPlanSnapshot) => approvedAnnualPlanSnapshot.annualPlan,
    { nullable: false },
  )
  snapshots: [ApprovedAnnualPlanSnapshot];

  /**
   * ステータス
   */
  @Field(() => String)
  @Column({
    type: 'enum',
    enum: ANNUAL_PLAN_STATUSES,
    default: 'inProgress',
    comment: 'ステータス',
  })
  status: AnnualPlanStatus;

  /**
   * 組織
   */
  @Field(() => Department, { nullable: true })
  @ManyToOne(() => Department, (department) => department.annualPlans, {
    nullable: true,
  })
  @JoinColumn()
  department?: Department;

  /**
   * 事業計画
   */
  @Field(() => [Plan], { nullable: 'itemsAndList' })
  @OneToMany(() => Plan, (plan) => plan.annualPlan, {
    nullable: true,
  })
  @JoinColumn()
  plans?: Plan[];

  /**
   * 導入企業
   */
  @Field(() => Client, { nullable: true })
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
