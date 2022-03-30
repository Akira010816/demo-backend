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
 * 承認メールテンプレート
 */
@ObjectType()
@Entity()
export class ApprovalEmailTemplate {
  /**
   * 承認対象ID (承認区分ID)
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認対象ID' })
  id: number;

  /**
   * 文面 (依頼)
   */
  @Field()
  @Column({ comment: '文面 (依頼)' })
  requestMessage: string;

  /**
   * タイトル (依頼)
   */
  @Field()
  @Column({ comment: 'タイトル (依頼)', nullable: true })
  requestMessageSubject?: string;

  /**
   * 文面 (承認 - 次の人)
   */
  @Field()
  @Column({ comment: '文面 (承認 - 次の人)' })
  approvalNextMessage: string;

  /**
   * タイトル (承認 - 次の人)
   */
  @Field()
  @Column({ comment: 'タイトル (承認 - 次の人)', nullable: true })
  approvalNextMessageSubject?: string;

  /**
   * 文面 (承認 - 依頼元)
   */
  @Field()
  @Column({ comment: '文面 (承認 - 依頼元)' })
  approvalRequesterMessage: string;

  /**
   * タイトル (承認 - 依頼元)
   */
  @Field()
  @Column({ comment: 'タイトル (承認 - 依頼元)', nullable: true })
  approvalRequesterMessageSubject?: string;

  /**
   * 文面 (却下)
   */
  @Field()
  @Column({ comment: '文面 (却下)' })
  rejectMessage: string;

  /**
   * タイトル (却下)
   */
  @Field()
  @Column({ comment: 'タイトル (却下)', nullable: true })
  rejectMessageSubject?: string;

  /**
   * 文面 (依頼取り消し)
   */
  @Field()
  @Column({ comment: '文面 (依頼取り消し)' })
  cancelMessage: string;

  /**
   * タイトル (依頼取り消し)
   */
  @Field()
  @Column({ comment: 'タイトル (依頼取り消し)', nullable: true })
  cancelMessageSubject?: string;

  /**
   * 承認対象
   */
  @Field(() => ApprovalCategory, { nullable: true })
  @OneToOne(
    () => ApprovalCategory,
    (approvalCategory) => approvalCategory.approvalEmailTemplate,
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
