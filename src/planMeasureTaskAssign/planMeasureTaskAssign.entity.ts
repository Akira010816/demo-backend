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
import { PlanMeasureTask } from '../planMeasureTask/planMeasureTask.entity';
import { Department } from 'src/department/department.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasureTaskCostTargetDepartment } from 'src/planMeasureTaskCostTargetDepartment/planMeasureTaskCostTargetDepartment.entity';
import { PlanMeasureTaskCostTargetIndividual } from 'src/planMeasureTaskCostTargetIndividual/planMeasureTaskCostTargetIndividual.entity';

/**
 * タスク担当
 */
@ObjectType()
@Entity()
export class PlanMeasureTaskAssign {
  /**
   * タスク担当ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'タスク担当ID' })
  id: number;

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
   * タスク
   */
  @Field(() => PlanMeasureTask)
  @ManyToOne(() => PlanMeasureTask, {
    nullable: false,
    orphanedRowAction: 'delete',
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  task: PlanMeasureTask;

  /**
   * タスクコスト対象(組織)
   */
  @Field(() => PlanMeasureTaskCostTargetDepartment, { nullable: true })
  @OneToOne(
    () => PlanMeasureTaskCostTargetDepartment,
    (costTD) => costTD.assign,
    {
      cascade: true,
      onDelete: 'CASCADE',
      orphanedRowAction: 'delete',
    },
  )
  costTD?: PlanMeasureTaskCostTargetDepartment;

  /**
   * タスクコスト対象(組織)
   */
  @Field(() => PlanMeasureTaskCostTargetIndividual, { nullable: true })
  @OneToOne(
    () => PlanMeasureTaskCostTargetIndividual,
    (costTI) => costTI.assign,
    {
      cascade: true,
      onDelete: 'CASCADE',
      orphanedRowAction: 'delete',
    },
  )
  costTI?: PlanMeasureTaskCostTargetIndividual;

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
