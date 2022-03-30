import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  VersionColumn,
  CreateDateColumn,
  UpdateDateColumn,
  DeleteDateColumn,
  JoinColumn,
  OneToOne,
  OneToMany,
  ManyToOne,
} from 'typeorm';
import { Task } from '../task/task.entity';
import { Cause } from '../cause/cause.entity';
import { Client } from '../client/client.entity';

export const OCCUR_STATUSES = ['occurred', 'mayOccur'] as const;
export type OccurStatus = typeof OCCUR_STATUSES[number];

export const OCCUR_FREQUENCIES = ['once', 'multiple'];
export type OccurFrequency = typeof OCCUR_FREQUENCIES[number];

@ObjectType()
@Entity()
export class Issue {
  /**
   * 問題ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '問題ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  client?: Client;

  /**
   * 課題ID
   */
  @Field(() => Int, { nullable: true })
  @Column({ type: 'integer', comment: '課題ID', nullable: true })
  taskId?: number;

  /**
   * 課題
   */
  @Field(() => Task, { nullable: true })
  @OneToOne(() => Task, (task) => task.issue, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  task?: Task;

  /**
   * 原因
   */
  @Field(() => [Cause], { nullable: true })
  @OneToMany(() => Cause, (cause) => cause.issue, {
    cascade: true,
  })
  causes: Cause[];

  /**
   * 発生状況
   */
  @Field()
  @Column({
    type: 'enum',
    enum: OCCUR_STATUSES,
    comment: '発生状況',
    array: false,
    nullable: false,
  })
  occurStatus: OccurStatus;

  /**
   * 発生回数
   */
  @Field()
  @Column({ default: 0, type: 'int', comment: '発生回数' })
  occurCount: number;

  /**
   * 発生頻度
   */
  @Field()
  @Column({
    type: 'enum',
    enum: OCCUR_FREQUENCIES,
    comment: '発生頻度',
    array: false,
    nullable: false,
  })
  occurFrequency: OccurFrequency;

  /**
   * 発生頻度詳細
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 50,
    comment: '発生頻度詳細',
    nullable: true,
  })
  occurFrequencyDetail: string;

  /**
   * 問題内容
   */
  @Field()
  @Column('varchar', { length: 2048, comment: '問題内容', nullable: false })
  contents: string;

  /**
   * 影響
   */
  @Field()
  @Column('varchar', { length: 2048, comment: '影響', nullable: false })
  impact: string;

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
