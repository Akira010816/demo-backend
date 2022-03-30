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
import { PlanMeasureRisk } from '../planMeasureRisk/planMeasureRisk.entity';
import { Department } from 'src/department/department.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { Client } from 'src/client/client.entity';
import { PlanMeasureRiskAssign } from 'src/planMeasureRiskAssign/planMeasureRiskAssign.entity';
import { UserDepartment } from 'src/userDepartment/userDepartment.entity';

/**
 * リスクコスト計上先
 */
@ObjectType()
@Entity()
export class PlanMeasureRiskCostTargetIndividual {
  /**
   * リスクコスト計上先ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: 'リスクコスト計上先ID' })
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
   * リスク
   */
  @Field(() => PlanMeasureRisk)
  @ManyToOne(() => PlanMeasureRisk, {
    nullable: true,
    orphanedRowAction: 'delete',
    onDelete: 'CASCADE',
  })
  @JoinColumn()
  risk?: PlanMeasureRisk;

  /**
   * リスクコスト計上先
   */
  @Field(() => PlanMeasureRiskAssign)
  @OneToOne(() => PlanMeasureRiskAssign, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  assign?: PlanMeasureRiskAssign;

  /**
   * 利用者部署
   */
  @Field(() => UserDepartment, { nullable: true })
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
