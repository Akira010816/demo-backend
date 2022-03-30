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
import { Position } from '../position/position.entity';

/**
 * 承認ステップ役職
 */
@ObjectType()
@Entity()
export class ApprovalStepPosition {
  /**
   * 承認ステップ役職ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認ステップ役職ID' })
  id: number;

  /**
   * 承認ステップ
   */
  @Field(() => ApprovalStep, { nullable: true })
  @ManyToOne(() => ApprovalStep, { nullable: true })
  @JoinColumn()
  approvalStep?: ApprovalStep;

  /**
   * 役職
   */
  @Field(() => Position)
  @ManyToOne(() => Position, { nullable: false, eager: true })
  @JoinColumn()
  position: Position;

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
