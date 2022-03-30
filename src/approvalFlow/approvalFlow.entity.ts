import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';
import { Client } from '../client/client.entity';
import { ApprovalStep } from '../approvalStep/approvalStep.entity';

/**
 * 承認経路
 */
@ObjectType()
@Entity()
export class ApprovalFlow {
  /**
   * 承認経路ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認経路ID' })
  id: number;

  /**
   * 承認経路名
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: '承認経路名',
  })
  name?: string;

  /**
   * 説明
   */
  @Field({ nullable: true })
  @Column({ type: 'varchar', length: 2048, nullable: true, comment: '説明' })
  description?: string;

  /**
   * 承認依頼
   */
  @Field(() => [ApprovalRequest], { nullable: true })
  @OneToMany(
    () => ApprovalRequest,
    (approvalRequest) => approvalRequest.approvalFlow,
    { nullable: true },
  )
  approvalRequests?: ApprovalRequest[];

  /**
   * 承認ステップ
   */
  @Field(() => [ApprovalStep], { nullable: 'itemsAndList' })
  @OneToMany(() => ApprovalStep, (approvalStep) => approvalStep.approvalFlow, {
    nullable: true,
    cascade: true,
  })
  @JoinColumn()
  approvalSteps?: ApprovalStep[];

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
