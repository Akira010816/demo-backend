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
import { ApprovalCategory } from '../approvalCategory/approvalCategory.entity';
import { ApprovalFlow } from '../approvalFlow/approvalFlow.entity';
import { Project } from '../project/project.entity';
import { Task } from '../task/task.entity';
import { Measure } from '../measure/measure.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';

export const APPROVAL_REQUEST_STATUS = [
  'waitingForApprove', // 承認依頼作成
  'canceled', // 承認依頼取消済み
] as const;
export type ApprovalRequestStatusType = typeof APPROVAL_REQUEST_STATUS[number];

/**
 * 承認依頼
 */
@ObjectType()
@Entity()
export class ApprovalRequest {
  /**
   * 承認依頼ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認依頼ID' })
  id: number;

  /**
   * 承認依頼コード
   */
  @Field()
  @Column('varchar', { length: 21, comment: '承認依頼コード' })
  code: string;

  /**
   * ステータス
   */
  @Field({ nullable: false })
  @Column({
    type: 'enum',
    enum: APPROVAL_REQUEST_STATUS,
    default: APPROVAL_REQUEST_STATUS[0],
    comment: '承認依頼ステータス',
  })
  status: ApprovalRequestStatusType;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 承認対象 (承認区分)
   */
  @Field(() => ApprovalCategory, { nullable: true })
  @ManyToOne(
    () => ApprovalCategory,
    (approvalCategory) => approvalCategory.approvalRequests,
    {
      nullable: true,
      cascade: true,
    },
  )
  @JoinColumn()
  approvalCategory: ApprovalCategory;

  /**
   * 承認依頼者
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(() => UserDepartment, (user) => user.approvalRequests, {
    nullable: true,
    cascade: true,
  })
  @JoinColumn()
  requestedBy: UserDepartment;

  /**
   * 承認依頼メッセージ
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    comment: '承認依頼メッセージ',
    nullable: true,
  })
  message?: string;

  /**
   * 承認期限
   */
  @Field({ nullable: true })
  @Column({ type: 'date', nullable: true, comment: '承認期限' })
  until: string;

  /**
   * 企画 (承認対象が「企画立案」の場合)
   */
  @Field(() => Project, { nullable: true })
  @ManyToOne(() => Project, (project) => project.approvalRequests, {
    nullable: true,
    cascade: true,
  })
  @JoinColumn()
  project?: Project;

  /**
   * 課題 (承認対象が「課題分析」の場合)
   */
  @Field(() => Task, { nullable: true })
  @ManyToOne(() => Task, (task) => task.approvalRequests, {
    nullable: true,
    cascade: true,
  })
  @JoinColumn()
  task?: Task;

  /**
   * 施策 (承認対象が「施策決定」の場合)
   */
  @Field(() => Measure, { nullable: true })
  @ManyToOne(() => Measure, (measure) => measure.approvalRequests, {
    nullable: true,
    cascade: true,
  })
  @JoinColumn()
  measure?: Measure;

  /**
   * 事業計画 (承認対象が「事業計画」の場合)
   * TODO: implement later
   */

  /**
   * 事業計画 (企画) (承認対象が「事業計画 (企画)」の場合)
   * TODO: implement later
   */

  /**
   * 事業計画 (承認対象が「事業計画の修正」の場合)
   * TODO: implement later
   */

  /**
   * 提案評価 (承認対象が「提案評価」の場合)
   * TODO: implement later
   */

  /**
   * 承認フロー
   */
  @Field(() => ApprovalFlow, { nullable: true })
  @ManyToOne(
    () => ApprovalFlow,
    (approvalFlow) => approvalFlow.approvalRequests,
    {
      nullable: true,
      cascade: true,
    },
  )
  @JoinColumn()
  approvalFlow?: ApprovalFlow;

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
  @Column({ type: 'integer', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
