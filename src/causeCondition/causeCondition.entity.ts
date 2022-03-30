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
  ManyToOne,
  ManyToMany,
} from 'typeorm';
import { Cause } from '../cause/cause.entity';
import { Client } from '../client/client.entity';
import { Measure } from '../measure/measure.entity';

/**
 * 原因解決条件
 */
@ObjectType()
@Entity()
export class CauseCondition {
  /**
   * 課題解決条件ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '原因解決条件ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 原因ID
   */
  @Field(() => Int, { nullable: true })
  @Column({ type: 'int', comment: '原因ID', nullable: true })
  causeId?: number;

  /**
   * 施策
   */
  @ManyToMany(() => Measure, (measure) => measure.causeConditions, {
    nullable: true,
    onDelete: 'CASCADE',
    onUpdate: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  measures?: Measure[];

  /**
   * 原因
   */
  @ManyToOne(() => Cause, (cause) => cause.causeConditions, {
    nullable: false,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  cause?: Cause;

  /**
   * 達成条件
   */
  @Field()
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: '達成条件',
  })
  achievementCondition: string;

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
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
