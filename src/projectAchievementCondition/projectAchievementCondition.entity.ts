import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  ManyToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
  DeleteDateColumn,
  JoinColumn,
  CreateDateColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { Project } from '../project/project.entity';

/**
 * 企画達成条件
 */
@ObjectType()
@Entity()
export class ProjectAchievementCondition {
  /*
   * 企画達成条件ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '企画達成条件ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 企画
   */
  @ManyToOne(() => Project, { nullable: false, orphanedRowAction: 'delete' })
  @JoinColumn()
  project?: Project;

  /**
   * 説明
   */
  @Field()
  @Column('varchar', { length: 2048, nullable: true, comment: '説明' })
  description: string;

  /**
   * バージョン
   */
  @Field()
  @VersionColumn({ default: 1, comment: 'バージョン' })
  version?: number;

  /**
   * 作成日時
   */
  @Field()
  @CreateDateColumn({ comment: '作成日時' })
  createdAt?: Date;

  /**
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新日時
   */
  @Field()
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '更新利用者ID' })
  updatedUserId?: number;

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
