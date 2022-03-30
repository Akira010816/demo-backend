import { Field, Int, ObjectType } from '@nestjs/graphql';
import { Project } from 'src/project/project.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { User } from '../user/user.entity';
import { Issue } from '../issue/issue.entity';
import { Target } from '../target/target.entity';
import { Todo } from '../todo/todo.entity';
import { Other } from '../other/other.entity';
import { StudyContent } from '../studyContent/studyContent.entity';
import { Investigation } from '../investigation/investigation.entity';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';

const ALL_TASK_STATUS = [
  'registered', //起票
  'planningCounter', //対策検討中
  'planningMeasure', //施策立案中
  'evaluatingMeasure', //施策評価中
  'fixedMeasure', //施策決定
  'canceled', //中止
] as const;
export type TaskStatus = typeof ALL_TASK_STATUS[number];

/**
 * 課題
 */
@ObjectType()
@Entity()
export class Task {
  /**
   * 課題ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '課題ID' })
  id: number;

  /** 課題コード */
  @Field()
  @Column('varchar', { length: 21, comment: '課題コード' })
  code: string;

  /**
   * 課題名
   */
  @Field({ nullable: true })
  @Column({ length: 50, comment: '課題名', nullable: true })
  name?: string;

  /**
   * 登録日時
   */
  @Field()
  @Column({
    type: 'timestamp',
    comment: '作成日時',
    default: () => 'CURRENT_TIMESTAMP',
  })
  registeredAt?: Date;

  /**
   * 登録者利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '登録利用者ID' })
  registered_user_id?: number;

  @Field(() => User, { nullable: true })
  @ManyToOne(() => User)
  @JoinColumn()
  registeredUser?: User;

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
   * 課題タイプ
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: [
      ...[
        '', //frontnedで1から始まるので
        'issue',
        'target',
        'todo',
        'studyContent',
        'investigation',
        'other',
      ].keys(),
    ],
    comment: '課題タイプ',
    array: false,
    nullable: true,
  })
  taskType?: number;

  /**
   * 問題
   */
  @Field(() => Issue, { nullable: true })
  @OneToOne(() => Issue, (issue) => issue.task, {
    cascade: true,
  })
  issue?: Issue;

  /**
   * 目標
   */
  @Field(() => [Target], { nullable: 'itemsAndList' })
  @OneToMany(() => Target, (target) => target.task, {
    cascade: true,
  })
  @JoinColumn()
  targets?: Target[];

  /**
   * ToDo
   */
  @Field(() => [Todo], { nullable: 'itemsAndList' })
  @OneToMany(() => Todo, (todo) => todo.task, {
    cascade: true,
  })
  @JoinColumn()
  todos?: Todo[];

  /**
   * 方針検討
   */
  @Field(() => [StudyContent], { nullable: 'itemsAndList' })
  @OneToMany(() => StudyContent, (studyContent) => studyContent.task, {
    cascade: true,
  })
  @JoinColumn()
  studyContents?: StudyContent[];

  /**
   * 調査
   */
  @Field(() => [Investigation], { nullable: 'itemsAndList' })
  @OneToMany(() => Investigation, (investigation) => investigation.task, {
    cascade: true,
  })
  @JoinColumn()
  investigations?: Investigation[];

  /**
   * その他
   */
  @Field(() => [Other], { nullable: 'itemsAndList' })
  @OneToMany(() => Other, (other) => other.task, {
    cascade: true,
  })
  @JoinColumn()
  others?: Other[];

  /**
   * ステータス
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: ALL_TASK_STATUS,
    comment: 'status',
    array: false,
    nullable: true,
  })
  taskStatus?: TaskStatus;

  /**
   * 開始日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '開始日' })
  startDate?: string;

  /**
   * 開始日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '終了日' })
  endDate?: string;

  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '企画ID' })
  project_id?: number;
  /**
   * 企画
   */
  @ManyToOne(() => Project, (project) => project.tasks, { nullable: false })
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
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '更新利用者ID' })
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
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
