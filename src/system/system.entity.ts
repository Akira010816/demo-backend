import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { MeasureImplementationTask } from '../measureImplementationTask/measureImplementationTask.entity';

/**
 * システム
 */
@ObjectType()
@Entity()
export class System {
  /**
   * システムID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '施策ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client)
  @JoinColumn()
  client?: Client;

  /**
   * 実施タスク
   */
  @Field(() => [MeasureImplementationTask], { nullable: true })
  @ManyToMany(
    () => MeasureImplementationTask,
    (measureImplementationTask) => measureImplementationTask.affectedSystems,
    { nullable: true },
  )
  @JoinTable()
  measureImplementationTasks?: MeasureImplementationTask[];

  /**
   * 名称
   */
  @Field()
  @Column('varchar', { length: 50, nullable: true, comment: 'システム名称' })
  name?: string;

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
