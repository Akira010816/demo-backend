import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  ManyToOne,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from 'src/client/client.entity';
import { Position } from 'src/position/position.entity';
import { UserDepartment } from 'src/userDepartment/userDepartment.entity';
import { DepartmentLevel } from 'src/departmentLevel/departmentLevel.entity';

export const TARGET_DEPARTMENT_TYPES = [
  'hub', //拠点
  'businessUnit', //事業部
  'department', //部
  'division', //課
  'unit', //係
] as const;

export type TargetDepartmentType = typeof TARGET_DEPARTMENT_TYPES[number];

/**
 * 利用制限対象者タイプ
 * @value Position -> 役職
 * @value UserDepartment -> 利用者部署
 */
export const IDENTITY_TYPES = [
  'Position', // 役職
  'UserDepartment', // 利用者部署
] as const;

export type IdentityType = typeof IDENTITY_TYPES[number];

/**
 * 事業計画利用タイプ
 * @value edit -> 編集
 * @value view -> 表示
 * @value deny -> 拒否
 */
export const PLAN_ACCESS_TYPES = [
  'edit', // 編集
  'view', // 表示
  'deny', // 拒否
] as const;
export type PlanAccessType = typeof PLAN_ACCESS_TYPES[number];

/**
 * 施策機能利用タイプ
 * @value edit -> 編集
 * @value view -> 表示
 * @value deny -> 拒否
 */
export const PLAN_MEASURE_ACCESS_TYPES = [
  'edit', // 編集
  'view', // 表示
  'deny', // 拒否
] as const;
export type PlanMeasureAccessType = typeof PLAN_MEASURE_ACCESS_TYPES[number];

/**
 * 利用機能制限テーブル
 */
@ObjectType()
@Entity()
export class AccessControl {
  /**
   * 利用機能制限テーブルID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '利用機能制限テーブルID' })
  id: number;

  /**
   * 利用制限対象者タイプ
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: IDENTITY_TYPES,
    comment: '利用制限対象者タイプ',
    array: false,
    nullable: false,
  })
  identityType: IdentityType;

  /**
   * 事業計画利用タイプ
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_ACCESS_TYPES,
    comment: '事業計画利用タイプ',
    array: false,
    nullable: false,
  })
  planAccessType: PlanAccessType;

  /**
   * 施策機能利用タイプ
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_ACCESS_TYPES,
    comment: '施策機能利用タイプ',
    array: false,
    nullable: false,
  })
  planMeasureAccessType: PlanMeasureAccessType;

  /**
   * 事業計画承認フラグ
   */
  @Field({ nullable: true })
  @Column({
    type: 'enum',
    enum: PLAN_MEASURE_ACCESS_TYPES,
    array: false,
    nullable: true,
    comment: '事業計画承認利用タイプ',
  })
  planApprovalAccessType?: PlanMeasureAccessType;

  /**
   * 計画策定依頼フラグ
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment: '計画策定依頼フラグ',
  })
  planFormulationRequestFlag?: boolean;

  /**
   * フラグ施策登録依頼
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment: 'フラグ施策登録依頼',
  })
  planMeasureRegistrationRequestFlag?: boolean;

  /**
   * 施策決定フラグ
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment: '施策決定フラグ',
  })
  planMeasureConfirmFlag?: boolean;

  /**
   * 対象組織区分
   */
  // P2FW-719
  //  @Field({ nullable: true })
  //  @Column({
  //    type: 'enum',
  //    enum: TARGET_DEPARTMENT_TYPES,
  //    nullable: true,
  //    array: false,
  //    comment: '対象組織区分',
  //  })
  //  targetDepartmentCategory?: TargetDepartmentType;

  @Field(() => DepartmentLevel, { nullable: true })
  @ManyToOne(() => DepartmentLevel, { nullable: true })
  targetDepartmentLevel?: DepartmentLevel;

  /**
   * 職位
   */
  @Field(() => Position)
  @ManyToOne(() => Position, { nullable: true })
  position?: Position;

  /*
   * 利用者部門
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(() => UserDepartment, { nullable: true })
  userDepartment?: UserDepartment;

  /**
   *導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  client: Client;

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
