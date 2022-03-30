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
import { ApprovalStatus } from 'aws-sdk/clients/codepipeline';
import {
  APPROVAL_STATUS,
  ApprovalStepAssignee,
} from '../approvalStepAssignee/approvalStepAssignee.entity';

/**
 * 承認結果
 */
@ObjectType()
@Entity()
export class ApprovalHistory {
  /**
   * 承認結果ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認結果ID' })
  id: number;

  /**
   * ステータス
   */
  @Field({ nullable: false })
  @Column({
    type: 'enum',
    enum: APPROVAL_STATUS,
    comment: '承認ステータス',
  })
  type: ApprovalStatus;

  /**
   * 承認ステップ担当者
   */
  @Field(() => ApprovalStepAssignee)
  @ManyToOne(() => ApprovalStepAssignee)
  @JoinColumn()
  approvalStepAssignee?: ApprovalStepAssignee;

  /**
   * コメント
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: 'コメント',
  })
  comment?: string;

  /**
   * 決定日時
   */
  @Field()
  @Column({
    type: 'timestamp',
    comment: '決定日時',
    default: () => 'CURRENT_TIMESTAMP',
  })
  decidedAt?: Date;

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
