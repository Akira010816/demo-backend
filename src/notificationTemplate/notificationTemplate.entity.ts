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

export const NOTIFICATION_TEMPLATE_TYPE = [
  'planMeasureRegistrationCompleted', //施策登録完了報告
  'planMeasureRegistrationRequest', //施策登録依頼
  'planFormulationCompleted', //事業計画策定完了報告
  'planFormulationRequest', //事業計画策定依頼
  'approvalRequest', //承認依頼
  'reviewRequest', // レビュー依頼
  'surveyRequest', // アンケート依頼
  'alert', // アラート
  'assignedTaskOwner', // 課題オーナー
  'assignedMeasureOwner', //施策責任者
  'system', // システム
  'other', //その他
] as const;
export type NotificationTemplateType = typeof NOTIFICATION_TEMPLATE_TYPE[number];

/**
 * 通知テンプレート
 */
@ObjectType()
@Entity()
export class NotificationTemplate {
  /**
   * 通知テンプレートID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '通知テンプレートID' })
  id: number;

  /**
   * 通知本文
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: '通知本文',
  })
  body?: string;

  /**
   * リンク
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: 'リンク',
  })
  link?: string;

  /**
   * 通知タイプ
   */
  @Field()
  @Column({
    type: 'enum',
    enum: NOTIFICATION_TEMPLATE_TYPE,
    comment: '通知タイプ',
  })
  type: NotificationTemplateType;

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
