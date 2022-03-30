import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  ManyToOne,
  JoinColumn,
  PrimaryGeneratedColumn,
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
export class Other {
  /**
   * その他 ID
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
  @ManyToMany(() => Measure, (measure) => measure.others, {
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
   * その他 内容
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
}
