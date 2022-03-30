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
import { ApprovalStep } from '../approvalStep/approvalStep.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';

export const APPROVAL_STATUS = [
  'processing', // 承認待ち
  'approved', // 承認済み
  'rejected', // 却下済み
  'canceled', // 承認取消済み
] as const;
export type ApprovalStatusType = typeof APPROVAL_STATUS[number];

/**
 * 承認ステップ担当者
 */
@ObjectType()
@Entity()
export class ApprovalStepAssignee {
  /**
   * 承認ステップ担当者ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認ステップ担当者ID' })
  id: number;

  /**
   * 担当者コメント
   */
  @Field({ nullable: true })
  @Column({ length: 2048, nullable: true, comment: '担当者コメント' })
  comment?: string;

  /*
   * 担当者
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(
    () => UserDepartment,
    (userDepartment) => userDepartment.approvalStepAssignees,
    { nullable: true },
  )
  @JoinColumn()
  userDepartment?: UserDepartment;

  /**
   * 承認ステップ
   */
  @Field(() => ApprovalStep, { nullable: true })
  @ManyToOne(
    () => ApprovalStep,
    (approvalStep) => approvalStep.approvalStepAssignees,
    { nullable: true },
  )
  @JoinColumn()
  approvalStep?: ApprovalStep;

  /**
   * ステータス
   */
  @Field({ nullable: false })
  @Column({
    type: 'enum',
    enum: APPROVAL_STATUS,
    default: APPROVAL_STATUS[0],
    comment: '承認ステータス',
  })
  approvalStatus: ApprovalStatusType;

  /**
   * ステータスの変化日時
   */
  @Field({ nullable: true })
  @Column({
    type: 'timestamp',
    nullable: true,
    comment: '承認/却下等のステータスが変化した日時',
  })
  statusChangedAt?: Date;

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
