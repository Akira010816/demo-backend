import { Field, Int, ObjectType } from '@nestjs/graphql';
import { BusinessYear } from '../businessYear/businessYear.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { PlanMeasureCost } from '../planMeasureCost/planMeasureCost.entity';
import { Department } from 'src/department/department.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasureCostTargetIndividual } from 'src/planMeasureCostTargetIndividual/planMeasureCostTargetIndividual.entity';
import { PlanMeasureCostTargetDepartment } from 'src/planMeasureCostTargetDepartment/planMeasureCostTargetDepartment.entity';

/**
 * 効果(コスト)コスト計上先
 */
@ObjectType()
@Entity()
export class PlanMeasureCostAssign {
  /**
   * 効果(コスト)コスト計上先ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '効果(コスト)コスト計上先ID' })
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
   * コスト
   */
  @Field(() => PlanMeasureCost)
  @ManyToOne(() => PlanMeasureCost, {
    nullable: false,
    orphanedRowAction: 'delete',
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  cost: PlanMeasureCost;

  /**
   * リスクコスト対象(組織)
   */
  @Field(() => PlanMeasureCostTargetDepartment, { nullable: true })
  @OneToOne(() => PlanMeasureCostTargetDepartment, (costTD) => costTD.assign, {
    cascade: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  costTD?: PlanMeasureCostTargetDepartment;

  /**
   * リスクコスト対象(組織)
   */
  @Field(() => PlanMeasureCostTargetIndividual, { nullable: true })
  @OneToOne(() => PlanMeasureCostTargetIndividual, (costTI) => costTI.assign, {
    cascade: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  costTI: PlanMeasureCostTargetIndividual;

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
