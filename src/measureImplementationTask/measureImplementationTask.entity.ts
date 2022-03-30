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
import { Measure } from '../measure/measure.entity';
import { System } from '../system/system.entity';
import { ItAssetType } from '../itAssetType/itAssetType.entity';
import GraphQLJSON from 'graphql-type-json';

export interface ParticipantType {
  name: string;
  role: string;
  location: string;
}

export interface ScopeType {
  name: string;
}

export type ParticipantScopeRoleType = number[];

export const MEASURE_IMPLEMENTATION_TASK_TYPES = [
  'introduceNewSystem',
  'rebuildExistingSystem',
  'modifyExistingSystem',
  'purchase',
  'abandon',
  'implementPoc',
  'investigate',
  'procure',
  'other',
] as const;
export type MeasureImplementationTaskType = typeof MEASURE_IMPLEMENTATION_TASK_TYPES[number];

/**
 * 実施タスク
 */
@ObjectType()
@Entity()
export class MeasureImplementationTask {
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '実施タスクID' })
  id?: number;

  /**
   * ガントID
   */
  @Field({ nullable: true })
  @Column({ comment: 'ガントID', nullable: true })
  ganttId?: string;

  /**
  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 実施タスクタイプ
   */
  @Field({ nullable: true })
  @Column({ enum: MEASURE_IMPLEMENTATION_TASK_TYPES, nullable: true })
  type?: MeasureImplementationTaskType;

  /**
   * 施策案ID
   */
  @Field(() => Int, { nullable: true })
  @Column({ type: 'integer', comment: '施策案ID', nullable: true })
  measureId?: number;

  /**
   * 施策案ID
   */
  @ManyToOne(() => Measure, (measure) => measure.measureImplementationTasks, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  measure?: Measure;

  /**
   * 名称
   */
  @Field()
  @Column({ length: 200, comment: '名称' })
  name: string;

  /**
   * 概要
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '概要', nullable: true })
  overview?: string;

  /**
   * 新システム名称
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '新システム名称', nullable: true })
  newSystemName?: string;

  /**
   * システム概要
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: 'システム概要', nullable: true })
  systemOverview?: string;

  /**
   * 影響のあるシステム
   */
  @Field(() => [System], { nullable: true })
  @ManyToMany(() => System, (system) => system.measureImplementationTasks, {
    nullable: true,
  })
  @JoinTable()
  affectedSystems?: System[];

  /**
   * 対象システム
   */
  @Field(() => System, { nullable: true })
  @ManyToOne(() => System, (system) => system.measureImplementationTasks, {
    nullable: true,
  })
  @JoinColumn({ referencedColumnName: 'id' })
  targetSystem?: System;

  /**
   * 改修内容
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '改修内容', nullable: true })
  modificationDescription?: string;

  /**
   * 購入対象
   */
  @Field(() => [ItAssetType], { nullable: true })
  @ManyToMany(() => ItAssetType, (itAssetType) => itAssetType.purchasePlans, {
    nullable: true,
  })
  purchaseTargets?: ItAssetType[];

  /**
   * 廃棄対象
   */
  @Field(() => [ItAssetType], { nullable: true })
  @ManyToMany(
    () => ItAssetType,
    (itAssetType) => itAssetType.abandonmentPlans,
    {
      nullable: true,
    },
  )
  abandonmentTargets?: ItAssetType[];

  /**
   * 実施内容
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '実施内容', nullable: true })
  implementationDetail?: string;

  /**
   * 調査内容
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '調査内容', nullable: true })
  investigationDescription?: string;

  /**
   * 調達内容
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '調達内容', nullable: true })
  procurementDescription?: string;

  /**
   * 調達範囲
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '調達範囲', nullable: true })
  procurementScope?: string;

  /**
   * 実施対象
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '実施対象', nullable: true })
  implementTarget?: string;

  /**
   * 担当者
   */
  @Field(() => GraphQLJSON, {
    nullable: true,
  })
  @Column({ type: 'simple-json', comment: '担当者', nullable: true })
  participants?: ParticipantType[];

  /**
   * スコープ
   */
  @Field(() => GraphQLJSON, { nullable: true })
  @Column({ type: 'simple-json', comment: 'スコープ', nullable: true })
  scopes?: ScopeType[];

  /**
   * 役割
   */
  @Field(() => GraphQLJSON, { nullable: true })
  @Column({ type: 'simple-json', comment: '役割', nullable: true })
  participantScopeRoles?: ParticipantScopeRoleType[];

  /**
   * 開始日時
   */
  @Field({ nullable: true })
  @Column({ comment: '開始日時', nullable: true })
  startAt?: Date;

  /**
   * 終了日時
   */
  @Field({ nullable: true })
  @Column({ comment: '終了日時', nullable: true })
  endAt?: Date;
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
