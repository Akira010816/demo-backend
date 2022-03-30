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
import { Project, ProjectStatus } from '../project/project.entity';
import { Client } from '../client/client.entity';

const PROGRESS_STATUS = [
  'advanced', //前倒し
  'onTime', //オンスケ
  'delayed', //遅延
] as const;
export type ProgressStatus = typeof PROGRESS_STATUS[number];

const PROGRESS_UNIT = [
  'day', //日数
  'manHour', //工数
] as const;
export type ProgressUnit = typeof PROGRESS_UNIT[number];

/**
 * 企画進捗報告履歴
 */
@ObjectType()
@Entity()
export class ProjectProgressReport {
  /**
   * 企画ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '企画進捗履歴ID' })
  id?: number;

  /**
   * 基準日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '基準日' })
  targetDate?: string;

  /**
   * 状況
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PROGRESS_STATUS,
    comment: '状況',
    array: false,
    nullable: true,
  })
  status?: ProgressStatus;

  /**
   * 企画ステータス
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: ['planning', 'doing', 'done', 'canceled'],
    comment: '企画ステータス',
    array: false,
    nullable: true,
  })
  projectStatus?: ProjectStatus;

  /**
   * 単位
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PROGRESS_UNIT,
    comment: '単位',
    array: false,
    nullable: true,
  })
  unit?: ProgressUnit;

  /**
   * 遅延
   */
  @Field({ nullable: true })
  @Column('int', { nullable: true, comment: '遅延' })
  delay?: number;

  /**
   * 遅延対策
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '遅延対策' })
  avoidDelayPlan: string;

  /**
   * 影響
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '影響' })
  impact?: string;

  /**
   * 進捗
   */
  @Field({ nullable: true })
  @Column('int', { nullable: true, comment: '進捗率' })
  progress?: number;

  /**
   * 報告内容
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '報告内容' })
  reportBody?: string;

  /**
   * 品質
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '品質' })
  quality?: string;

  /**
   * コスト
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: 'コスト' })
  cost?: string;

  /**
   * 要員
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '要員' })
  member?: string;

  /**
   * 報告日時
   */
  @Field({ nullable: true })
  @Column({
    type: 'timestamp',
    comment: '作成日時',
    default: () => 'CURRENT_TIMESTAMP',
  })
  reportedAt?: Date;

  /**
   * 企画
   */
  @ManyToOne(() => Project, (project) => project.progressReports, {
    nullable: false,
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  project?: Project;

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
