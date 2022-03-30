import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  ManyToOne,
  JoinColumn,
  VersionColumn,
  CreateDateColumn,
  UpdateDateColumn,
  DeleteDateColumn,
  ManyToMany,
  JoinTable,
} from 'typeorm';
import { Task } from '../task/task.entity';
import { Client } from '../client/client.entity';
import { Measure } from '../measure/measure.entity';

@ObjectType()
@Entity()
export class StudyContent {
  /**
   * 方針検討 ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '方針検討ID' })
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
  @ManyToMany(() => Measure, (measure) => measure.studyContents, {
    nullable: true,
  })
  @JoinTable()
  measures?: Measure[];

  /**
   * 課題ID
   */
  @Field(() => Int, { nullable: true })
  @Column({ type: 'int', comment: '課題ID', nullable: true })
  taskId?: number;

  /**
   * 課題
   */
  @ManyToOne(() => Task, (task) => task.targets, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  task?: Task;

  /**
   * 方針検討 内容
   */
  @Field()
  @Column('varchar', { length: 2048, nullable: true, comment: 'ToDo内容' })
  text?: string;

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
}
