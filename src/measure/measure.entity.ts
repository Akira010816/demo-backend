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
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { Cause } from '../cause/cause.entity';
import { Target } from '../target/target.entity';
import { Todo } from '../todo/todo.entity';
import { StudyContent } from '../studyContent/studyContent.entity';
import { Other } from '../other/other.entity';
import { MeasureImplementationTask } from '../measureImplementationTask/measureImplementationTask.entity';
import { MeasureImplementationEffect } from '../measureImplementationEffect/measureImplementationEffect.entity';
import { Investigation } from '../investigation/investigation.entity';
import { CauseCondition } from '../causeCondition/causeCondition.entity';
import GraphQLJSON from 'graphql-type-json';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';

export type GanttLink = {
  id: number;
  source: string;
  target: string;
  type: string;
};

/**
 * 施策
 */
@ObjectType()
@Entity()
export class Measure {
  /**
   * 施策ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '施策ID' })
  id?: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 承認依頼
   */
  @Field(() => [ApprovalRequest], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalRequest,
    (approvalRequest) => approvalRequest.project,
    {
      nullable: true,
      onDelete: 'CASCADE',
      orphanedRowAction: 'delete',
    },
  )
  approvalRequests?: ApprovalRequest[];

  /**
   * 施策実施タスク
   */
  @Field(() => [MeasureImplementationTask], { nullable: 'itemsAndList' })
  @OneToMany(
    () => MeasureImplementationTask,
    (measureImplementationTask) => measureImplementationTask.measure,
    {
      nullable: true,
      cascade: true,
    },
  )
  measureImplementationTasks: MeasureImplementationTask[];

  /**
   * 施策実施効果
   */
  @Field(() => [MeasureImplementationEffect], { nullable: 'itemsAndList' })
  @OneToMany(
    () => MeasureImplementationEffect,
    (measureImplementationEffect) => measureImplementationEffect.measure,
    {
      nullable: true,
      cascade: true,
    },
  )
  measureImplementationEffects: MeasureImplementationEffect[];

  /**
   * 課題解決条件
   */
  @Field(() => [CauseCondition], { nullable: 'itemsAndList' })
  @ManyToMany(
    () => CauseCondition,
    (causeCondition) => causeCondition.measures,
    {
      nullable: true,
      cascade: true,
    },
  )
  @JoinTable()
  causeConditions?: CauseCondition[];

  /**
   * 原因
   */
  @Field(() => [Cause], { nullable: 'itemsAndList' })
  @ManyToMany(() => Cause, (cause) => cause.measures, {
    nullable: true,
  })
  causes?: Cause[];

  /**
   * 目標
   */
  @Field(() => [Target], { nullable: 'itemsAndList' })
  @ManyToMany(() => Target, (target) => target.measures, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
    onUpdate: 'CASCADE',
  })
  targets?: Target[];

  /**
   * TODO
   */
  @Field(() => [Todo], { nullable: 'itemsAndList' })
  @ManyToMany(() => Todo, (todo) => todo.measures, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
    onUpdate: 'CASCADE',
  })
  todos?: Todo[];

  /**
   * 対応方針
   */
  @Field(() => [StudyContent], { nullable: 'itemsAndList' })
  @ManyToMany(() => StudyContent, (studyContent) => studyContent.measures, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
    onUpdate: 'CASCADE',
  })
  studyContents?: StudyContent[];

  /**
   * 調査
   */
  @Field(() => [Investigation], { nullable: 'itemsAndList' })
  @ManyToMany(() => Investigation, (investigation) => investigation.measures, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
    onUpdate: 'CASCADE',
  })
  investigations?: Investigation[];

  /**
   * その他ID
   */
  @Field(() => [Other], { nullable: 'itemsAndList' })
  @ManyToMany(() => Other, (other) => other.measures, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
    onUpdate: 'CASCADE',
  })
  others?: Other[];

  /** 課題コード */
  @Field({ nullable: true })
  @Column('varchar', { length: 21, comment: '施策コード' })
  code: string;

  /**
   * 施策名称
   */
  @Field()
  @Column({ length: 200, comment: '施策名称' })
  name: string;

  /**
   * 概要
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '概要', nullable: true })
  overview?: string;

  /**
   * 前提事項
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '前提事項', nullable: true })
  prerequisites?: string;

  /**
   * 効果測定方法
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '効果測定方法', nullable: true })
  effectMethod?: string;
  /**
   * 実施手段
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '実施手段', nullable: true })
  implementationMethod?: string;
  /**
   * 利用技術
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '利用技術', nullable: true })
  usedTechnology?: string;

  /**
   * 他システムとの連携
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '他システムとの連携', nullable: true })
  systemLinking?: string;
  /**
   * 仕様条件
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '仕様条件', nullable: true })
  specification?: string;
  /**
   * 購入量
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '購入量', nullable: true })
  purchaseAmount?: string;

  /**
   * 実施内容
   */
  @Field({ nullable: true })
  @Column({ length: 2048, comment: '実施内容', nullable: true })
  implementationDetail?: string;

  /**
   * 開始日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '開始日' })
  startDate?: string;

  /**
   * 終了日
   */
  @Field({ nullable: true })
  @Column('date', { nullable: true, comment: '終了日' })
  endDate?: string;

  /**
   * 採用／不採用
   */
  @Field({ nullable: true })
  @Column('boolean', { nullable: true, comment: '採用／不採用' })
  isAdopted?: string;

  /**
   * クリティカルパス
   */
  @Field(() => GraphQLJSON, {
    nullable: true,
  })
  @Column({ type: 'simple-json', comment: 'クリティカルパス', nullable: true })
  links?: GanttLink[];

  /**
   * 金額単位
   */
  @Field({ nullable: true })
  @Column('varchar', { length: 200, nullable: true, comment: '金額単位' })
  costUnit?: string;

  /**
   * バージョン
   */
  @Field({ nullable: true })
  @VersionColumn()
  version?: number;

  /**
   * 作成日時
   */
  @Field({ nullable: true })
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
  @Field({ nullable: true })
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '更新利用者ID' })
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
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
