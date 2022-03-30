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
import { PlanMeasureRiskPrice } from 'src/planMeasureRiskPrice/planMeasureRiskPrice.entity';
import { PlanMeasureRiskAssign } from 'src/planMeasureRiskAssign/planMeasureRiskAssign.entity';
import { AccountTitle } from '../accountTitle/accountTitle.entity';

/**
 * リスク対象
 * @value riskSales -> 売上
 * @value riskCosts -> コスト
 */
export const RISK_TARGET_TYPES = [
  'RiskSales', // 売上
  'RiskCosts', // コスト
] as const;
export type RiskTargetType = typeof RISK_TARGET_TYPES[number];

/**
 * リスク
 */
@ObjectType()
@Entity()
export class PlanMeasureRisk {
  /**
   * リスクID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'リスクID' })
  id: number;

  /**
   * 施策ID
   */
  @Field(() => PlanMeasure, { nullable: true })
  @ManyToOne(() => PlanMeasure, (planMeasure) => planMeasure.risks, {
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
   * リスク金額
   */
  @Field(() => [PlanMeasureRiskPrice], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureRiskPrice,
    (planMeasureRiskPrice) => planMeasureRiskPrice.risk,
    {
      nullable: true,
      cascade: true,
    },
  )
  prices: PlanMeasureRiskPrice[];

  /**
   * リスク名
   */
  @Field()
  @Column({ length: 200, comment: 'リスク名' })
  riskName: string;

  /**
   * 勘定科目ID
   */
  @Field({ nullable: true })
  @ManyToOne(() => AccountTitle, { nullable: true, eager: true })
  @JoinColumn()
  accountTitle: AccountTitle;

  /**
   * Risk target
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: RISK_TARGET_TYPES,
    comment: 'risk target',
    array: false,
    nullable: true,
  })
  targetType?: RiskTargetType;

  /**
   * リスクコスト計上先
   */
  @Field(() => [PlanMeasureRiskAssign], { nullable: 'itemsAndList' })
  @OneToMany(
    () => PlanMeasureRiskAssign,
    (planMeasureRiskAssign) => planMeasureRiskAssign.risk,
    {
      nullable: true,
      cascade: true,
    },
  )
  assigns?: PlanMeasureRiskAssign[];

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
