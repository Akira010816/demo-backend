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
import { Project } from '../project/project.entity';
import { Client } from '../client/client.entity';

/**
 * 企画マイルストーン
 */
@ObjectType()
@Entity()
export class ProjectMilestone {
  /*
   * 企画マイルストーンID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '企画マイルストーンID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /*
   * 企画
   */
  @Field(() => Project)
  @ManyToOne(() => Project, { nullable: false, orphanedRowAction: 'delete' })
  @JoinColumn()
  project?: Project;

  /**
   * マイルストーン種類
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: ['projectEndDate', 'decisionDueDate', 'others'],
    comment: 'マイルストーン種類',
    array: false,
    default: 'others',
  })
  type: MilestoneType;

  /**
   * 説明
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 2048, nullable: true, comment: '説明' })
  description: string;

  /**
   * 目標日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '目標日' })
  targetDate: string;

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
  @Column({ type: 'integer', nullable: true, comment: '作成利用者ID' })
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
