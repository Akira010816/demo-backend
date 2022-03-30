import { Field, Int, ObjectType } from '@nestjs/graphql';
import { Project } from '../project/project.entity';
import { Client } from '../client/client.entity';

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

/**
 * 企画スケジュール
 */
@ObjectType()
@Entity()
export class ProjectSchedule {
  /**
   * 企画スケジュールID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '企画スケジュールID' })
  id?: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /*
   * 企画
   */
  @Field(() => Project)
  @ManyToOne(() => Project, { nullable: false, orphanedRowAction: 'delete' })
  @JoinColumn()
  project?: Project;

  /**
   * スケジュール種類
   */
  @Field()
  @Column({
    type: 'enum',
    enum: [
      'planning', // 企画立案
      'problemAnalysis', // 課題分析
      'measures', // 対策検討
      'policyPlanning', // 施策立案
      'policyDecision', // 施策決定
    ],
    comment: 'スケジュール種類',
  })
  type?: ScheduleType;

  /**
   * 開始日
   */
  @Field()
  @Column('date', { comment: '開始日' })
  startDate?: string;

  /**
   * 終了日
   */
  @Field()
  @Column('date', { comment: '終了日' })
  endDate?: string;

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
