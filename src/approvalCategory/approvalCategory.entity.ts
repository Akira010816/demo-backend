import { Field, Int, ObjectType } from '@nestjs/graphql';
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
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';
import { Client } from '../client/client.entity';
import { ApprovalEmailTemplate } from '../approvalEmailTemplate/approvalEmailTemplate.entity';
import { ApprovalRequestMessageTemplate } from '../approvalRequestMessageTemplate/approvalRequestMessageTemplate.entity';

export const APPROVAL_TARGET_SLUGS = [
  'plan', // 事業計画
  'plan_project', // 事業計画 (企画)
  'plan_modification', // 事業計画 (修正)
  'project', // 企画
  'task', // 課題
  'measure', // 施策
  'proposal_evaluation', // 提案評価
] as const;

export type ApprovalCategorySlug = typeof APPROVAL_TARGET_SLUGS[number];

/**
 * 承認区分
 */
@ObjectType()
@Entity()
export class ApprovalCategory {
  /**
   * 承認区分ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認対象ID' })
  id: number;

  /**
   * 承認区分スラッグ
   */
  @Field({ nullable: false })
  @Column({
    type: 'enum',
    enum: APPROVAL_TARGET_SLUGS,
    nullable: false,
    array: false,
    comment: '承認対象スラッグ (承認区分スラッグ)',
  })
  slug: ApprovalCategorySlug;

  /**
   * 承認区分名
   */
  @Field({ nullable: false })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: false,
    comment: '承認対象名 (承認区分名)',
  })
  name: string;

  /**
   * 承認依頼
   */
  @Field(() => [ApprovalRequest], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalRequest,
    (approvalRequest) => approvalRequest.approvalCategory,
  )
  approvalRequests?: Array<ApprovalRequest>;

  /**
   * 承認依頼メールテンプレート
   */
  @Field(() => ApprovalEmailTemplate, { nullable: true })
  @OneToOne(
    () => ApprovalEmailTemplate,
    (approvalEmailTemplate) => approvalEmailTemplate.approvalCategory,
    { nullable: true },
  )
  @JoinColumn()
  approvalEmailTemplate?: ApprovalEmailTemplate;

  /**
   * 承認依頼メッセージテンプレート
   */
  @Field(() => ApprovalRequestMessageTemplate, { nullable: true })
  @OneToOne(
    () => ApprovalRequestMessageTemplate,
    (approvalRequestMessageTemplate) =>
      approvalRequestMessageTemplate.approvalCategory,
    { nullable: true },
  )
  @JoinColumn()
  approvalRequestMessageTemplate?: ApprovalRequestMessageTemplate;

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
