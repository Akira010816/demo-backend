import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { Plan } from '../plan/plan.entity';

@ObjectType()
@Entity()
export class ApprovedAnnualPlanSnapshot {
  /**
   * 承認済み年度計画スナップショット ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '事業計画ID' })
  id: number;

  /**
   * 年度計画
   */
  @Field(() => AnnualPlan, { nullable: true })
  @ManyToOne(() => AnnualPlan, (annualPlan) => annualPlan.snapshots, {
    nullable: false,
    eager: true,
  })
  annualPlan: AnnualPlan;

  /**
   * 年度計画に紐づく全計画のスナップショット
   */
  @Field(() => [Plan], { nullable: false })
  @Column({
    type: 'simple-json',
    nullable: false,
    comment: '年度計画に紐づく全計画のスナップショット',
  })
  plans: [Plan];

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
  @Column({ type: 'integer', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '更新利用者ID' })
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
  @Column({ type: 'integer', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
