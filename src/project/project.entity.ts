import { Field, ObjectType, Int } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { User } from '../user/user.entity';
import { Client } from '../client/client.entity';
import { Department } from '../department/department.entity';
import { ProjectMilestone } from '../projectMilestone/projectMilestone.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { ProjectAchievementCondition } from '../projectAchievementCondition/projectAchievementCondition.entity';
import { ProjectSchedule } from '../projectSchedule/projectSchedule.entity';
import { Task } from '../task/task.entity';
import { ProjectProgressReport } from '../projectProgressReport/projectProgressReport.entity';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';

/**
 * 企画ステータス
 */
export const PROJECT_STATUS = [
  'planning', // 企画立案中
  'doing', // 課題対応中
  'done', // 完了
  'canceled', // 中止
] as const;
export type ProjectStatus = typeof PROJECT_STATUS[number];

/**
 * 企画
 */
@ObjectType()
@Entity()
export class Project {
  /**
   * 企画ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '企画ID' })
  id?: number;

  /** 企画コード */
  @Field()
  @Column('varchar', { length: 21, comment: '企画コード' })
  projectCode: string;

  /**
   * ステータス
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: ['planning', 'doing', 'done', 'canceled'],
    comment: 'ステータス',
    array: false,
    nullable: true,
  })
  status?: ProjectStatus;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, (client) => client.projects, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 承認依頼
   */
  @Field(() => [ApprovalRequest], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalRequest,
    (approvalRequest) => approvalRequest.project,
    {
      nullable: true,
      onDelete: 'CASCADE',
      orphanedRowAction: 'delete',
    },
  )
  approvalRequests?: ApprovalRequest[];

  /**
   * 前提条件
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '前提条件' })
  premiseCondition?: string;

  /**
   * 影響
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '影響' })
  impact?: string;

  /**
   * 企画立案者利用者ID
   */
  @Column({ type: 'int', nullable: true })
  raised_user_id?: number;

  /**
   * 企画立案者
   */
  @Field(() => User, { nullable: true })
  @ManyToOne(() => User, (user) => user.raisedProjects, { nullable: true })
  @JoinColumn()
  raisedUser?: User;

  /**
   * オーナー
   */
  @Column({ type: 'int', nullable: true })
  owner_id?: number;
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(
    () => UserDepartment,
    (userDepartment) => userDepartment.ownedProjects,
    {
      nullable: true,
      cascade: ['update'],
    },
  )
  @JoinColumn()
  owner?: UserDepartment;

  /**
   * メンバー
   */
  @Field(() => [UserDepartment], { nullable: true })
  @ManyToMany(
    () => UserDepartment,
    (userDepartment) => userDepartment.assignedProjects,
    { nullable: true },
  )
  @JoinTable()
  members?: UserDepartment[];

  /**
   * 提起部署ID
   */
  @Column({ type: 'int', nullable: true })
  raised_department_id?: number;

  /**
   * 提起部署
   */
  @Field(() => Department, { nullable: true })
  @ManyToOne(() => Department, (department) => department.projects, {
    nullable: true,
  })
  @JoinColumn()
  raisedDepartment?: Department;

  /**
   * マイルストーン
   */
  @Field(() => [ProjectMilestone], { nullable: true })
  @OneToMany(() => ProjectMilestone, (milestone) => milestone.project, {
    cascade: true,
  })
  milestones?: ProjectMilestone[];

  /**
   * 課題
   */
  @Field(() => [Task], { nullable: true })
  @OneToMany(() => Task, (task) => task.project, {
    cascade: ['update'],
  })
  tasks?: Task[];

  /**
   * 進捗報告
   */
  @Field(() => [ProjectProgressReport], { nullable: true })
  @OneToMany(
    () => ProjectProgressReport,
    (progressReport) => progressReport.project,
    { cascade: true },
  )
  progressReports?: ProjectProgressReport[];

  /**
   * スケジュール一覧
   */
  @Field(() => [ProjectSchedule], { nullable: true })
  @OneToMany(() => ProjectSchedule, (schedule) => schedule.project, {
    cascade: true,
  })
  schedules?: ProjectSchedule[];

  /**
   * 優先度
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: ['high', 'middle', 'low'],
    comment: '優先度',
    array: false,
    nullable: true,
  })
  priority?: Priority;

  /**
   * 企画名
   */
  @Field({ nullable: true })
  @Column({ length: 200, comment: '企画名', nullable: true })
  name?: string;

  /**
   * 達成条件
   */
  @Field(() => [ProjectAchievementCondition], { nullable: true })
  @OneToMany(
    () => ProjectAchievementCondition,
    (achievementCondition) => achievementCondition.project,
    {
      cascade: true,
    },
  )
  achievementConditions?: ProjectAchievementCondition[];

  /**
   * 開始日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '開始日' })
  startDate?: string;

  /**
   * 概要
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '概要', nullable: true })
  description?: string;

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
