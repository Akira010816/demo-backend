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
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasureTaskAssign } from 'src/planMeasureTaskAssign/planMeasureTaskAssign.entity';
import { UserDepartment } from 'src/userDepartment/userDepartment.entity';

/**
 * タスクコスト計上先
 */
@ObjectType()
@Entity()
export class PlanMeasureTaskCostTargetIndividual {
  /**
   * タスクコスト計上先ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'タスクコスト計上先ID' })
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
   * タスク
   */
  @Field(() => PlanMeasureTask)
  @ManyToOne(() => PlanMeasureTask, {
    nullable: true,
    orphanedRowAction: 'delete',
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  task?: PlanMeasureTask;

  /**
   * タスクコスト計上先
   */
  @Field(() => PlanMeasureTaskAssign)
  @OneToOne(() => PlanMeasureTaskAssign, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  assign?: PlanMeasureTaskAssign;

  /**
   * 利用者部署
   */
  @Field(() => UserDepartment)
  @ManyToOne(() => UserDepartment, { nullable: false, eager: true })
  @JoinColumn()
  userDpm: UserDepartment;

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
  @Column({ type: 'integer', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
