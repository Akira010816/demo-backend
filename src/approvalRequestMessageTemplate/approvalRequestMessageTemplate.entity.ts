import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { ApprovalCategory } from '../approvalCategory/approvalCategory.entity';

/**
 * 承認依頼メッセージテンプレート
 */
@ObjectType()
@Entity()
export class ApprovalRequestMessageTemplate {
  /**
   * 承認依頼メッセージテンプレートID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認依頼メッセージテンプレートID' })
  id: number;

  /**
   * 承認依頼メッセージ
   */
  @Field()
  @Column({ comment: '承認依頼メッセージ', nullable: true })
  message?: string;

  /**
   * 承認対象
   */
  @Field(() => ApprovalCategory, { nullable: true })
  @OneToOne(
    () => ApprovalCategory,
    (approvalCategory) => approvalCategory.approvalRequestMessageTemplate,
  )
  approvalCategory?: ApprovalCategory;

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
