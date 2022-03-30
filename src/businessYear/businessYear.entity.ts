import { Field, Int, ObjectType } from '@nestjs/graphql';
import { Client } from 'src/client/client.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';

/**
 * 年度マスタ
 */
@ObjectType()
@Entity()
export class BusinessYear {
  /**
   * 年度ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '年度ID' })
  id: number;

  /**
   * 事業計画年度
   */
  @Field(() => [AnnualPlan], { nullable: 'itemsAndList' })
  @OneToMany(() => AnnualPlan, (annualPlan) => annualPlan.businessYear, {
    nullable: true,
  })
  annualPlans?: AnnualPlan[];

  /**
   * 施策
   */
  @Field(() => [PlanMeasure], { nullable: 'itemsAndList' })
  @OneToMany(() => PlanMeasure, (planMeasure) => planMeasure.businessYear, {
    nullable: true,
  })
  planMeasures?: PlanMeasure[];

  /**
   * 年度名称
   */
  @Field()
  @Column({ length: 50, comment: '年度名称' })
  name: string;

  /**
   * 年度
   */
  @Field({ nullable: false })
  @Index()
  @Column({ type: 'int', nullable: false, comment: '年度' })
  year: number;

  /**
   * 開始年
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '開始年' })
  startYear: number;

  /**
   * 開始月
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '開始月' })
  startMonth: number;

  /**
   * 開始日
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '開始日' })
  startDate: number;

  /**
   * 終了年
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '終了年' })
  endYear: number;

  /**
   * 終了月
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '終了月' })
  endMonth: number;

  /**
   * 終了日
   */
  @Field({ nullable: false })
  @Column({ type: 'int', nullable: false, comment: '終了日' })
  endDate: number;

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
