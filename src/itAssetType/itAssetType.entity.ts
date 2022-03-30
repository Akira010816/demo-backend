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
 * IT資産種類マスタ
 */
@ObjectType()
@Entity()
export class ItAssetType {
  /**
   * ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '施策ID' })
  id: number;

  /**
   * 実施タスク（購入対象）
   */
  @Field(() => [MeasureImplementationTask], { nullable: true })
  @ManyToMany(
    () => MeasureImplementationTask,
    (measureImplementationTask) => measureImplementationTask.purchaseTargets,
    { nullable: true },
  )
  @JoinTable()
  purchasePlans?: MeasureImplementationTask[];

  /**
   * 実施タスク（廃棄対象）
   */
  @Field(() => [MeasureImplementationTask], { nullable: true })
  @ManyToMany(
    () => MeasureImplementationTask,
    (measureImplementationTask) => measureImplementationTask.abandonmentTargets,
    { nullable: true },
  )
  @JoinTable()
  abandonmentPlans?: MeasureImplementationTask[];

  /**
   * 種類名
   */
  @Field()
  @Column('varchar', { length: 20, comment: '種類名' })
  code?: string;

  /**
   * 表示順
   */
  @Field()
  @Column('int', { comment: '表示順' })
  displayOrder?: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client)
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
}
