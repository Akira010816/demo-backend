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
import { Department } from 'src/department/department.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasureCostAssign } from 'src/planMeasureCostAssign/planMeasureCostAssign.entity';
import { PlanMeasureCost } from 'src/planMeasureCost/planMeasureCost.entity';

/**
 * リスクコスト対象(組織)
 */
@ObjectType()
@Entity()
export class PlanMeasureCostTargetDepartment {
  /**
   * リスクコスト対象(組織)ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'リスクコスト対象(組織)ID' })
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
   * 施策
   */
  @Field(() => PlanMeasure)
  @ManyToOne(() => PlanMeasure, { nullable: true })
  @JoinColumn()
  measure?: PlanMeasure;

  /**
   * コスト
   */
  @Field(() => PlanMeasureCost)
  @ManyToOne(() => PlanMeasureCost, {
    nullable: true,
    orphanedRowAction: 'delete',
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  cost: PlanMeasureCost;

  /**
   * リスクコスト計上先
   */
  @Field(() => PlanMeasureCostAssign)
  @OneToOne(() => PlanMeasureCostAssign, (assign) => assign.costTD, {
    nullable: false,
    orphanedRowAction: 'delete',
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  assign?: PlanMeasureCostAssign;

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
