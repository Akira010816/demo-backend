import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  VersionColumn,
  DeleteDateColumn,
  OneToMany,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
  ManyToMany,
  JoinTable,
} from 'typeorm';
import { CauseCondition } from '../causeCondition/causeCondition.entity';
import { Issue } from '../issue/issue.entity';
import { Client } from '../client/client.entity';
import { Measure } from '../measure/measure.entity';

/**
 * 原因
 */
@ObjectType()
@Entity()
export class Cause {
  /**
   * 原因ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '原因ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client)
  @JoinColumn()
  client?: Client;

  /**
   * 施策案
   */
  @Field(() => [Measure], { nullable: 'itemsAndList' })
  @ManyToMany(() => Measure, (measure) => measure.causes, {
    nullable: true,
  })
  @JoinTable()
  measures?: Measure[];

  /**
   * 問題ID
   */
  @Field(() => Int, { nullable: true })
  @Column({ type: 'integer', comment: '問題ID', nullable: true })
  issueId?: number;

  /**
   * 問題
   */
  @ManyToOne(() => Issue, (issue) => issue.causes, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  issue?: Issue;

  /**
   * 原因解決条件
   */
  @Field(() => [CauseCondition], { nullable: true })
  @OneToMany(() => CauseCondition, (causeCondition) => causeCondition.cause, {
    cascade: true,
  })
  causeConditions?: CauseCondition[];

  /**
   * 原因
   */
  @Field()
  @Column({ type: 'varchar', length: 2048, comment: '原因' })
  text: string;

  /**
   * 仮説
   */
  @Field()
  @Column({ type: 'boolean', comment: '仮説', default: false })
  isHypothesis: boolean;

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
  @Field({ nullable: true })
  @CreateDateColumn({ comment: '作成日時' })
  createdAt?: Date;

  /**
   * 更新日時
   */
  @Field({ nullable: true })
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
