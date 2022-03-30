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
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { NotificationTemplate } from '../notificationTemplate/notificationTemplate.entity';

/**
 * 通知
 */
@ObjectType()
@Entity()
export class Notification {
  /**
   * 通知ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '通知ID' })
  id: number;

  /**
   * 通知日
   */
  @Field({ nullable: true })
  @Column({ nullable: true, comment: '目標日' })
  notifyDate: Date;

  /**
   * 通知対象利用者部門
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(
    () => UserDepartment,
    (userDepartment) => userDepartment.notifications,
    {
      onDelete: 'CASCADE',
      orphanedRowAction: 'delete',
    },
  )
  @JoinColumn()
  notifyTo: UserDepartment;

  /**
   * 通知元利用者部門
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(() => UserDepartment, {
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  raisedBy: UserDepartment;

  /**
   * 通知テンプレート
   */
  @Field(() => NotificationTemplate, { nullable: true })
  @ManyToOne(() => NotificationTemplate, {
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  template: NotificationTemplate;

  /**
   * 通知メッセージ
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: '通知メッセージ',
  })
  message?: string;

  /**
   * 既読フラグ
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment: '既読フラグ',
  })
  isSeen?: boolean;

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
