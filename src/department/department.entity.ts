import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  OneToMany,
  CreateDateColumn,
  UpdateDateColumn,
  PrimaryGeneratedColumn,
  ManyToOne,
  VersionColumn,
  JoinColumn,
  DeleteDateColumn,
  Tree,
  TreeParent,
  TreeChildren,
} from 'typeorm';
import { Project } from '../project/project.entity';
import { Client } from '../client/client.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { Plan } from '../plan/plan.entity';
import { AnnualPlan } from '../annualPlan/annualPlan.entity';
import { DepartmentLevel } from '../departmentLevel/departmentLevel.entity';

export const DEPARTMENT_TYPE = [
  'hub', //拠点
  'businessUnit', //事業部
  'department', //部
  'division', //課
  'unit', //係
] as const;
export type DepartmentType = typeof DEPARTMENT_TYPE[number];

/**
 *部署
 */
@ObjectType()
@Entity()
@Tree('nested-set')
export class Department {
  /**
   * 部署ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '部署ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, (client) => client.departments, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 部署コード
   */
  @Field({ nullable: true })
  @Column({ length: 20, nullable: true, comment: '部署コード' })
  code: string;

  /**
   * 部署名
   */
  @Field()
  @Column({ length: 50, comment: '部署名' })
  name: string;

  /**
   * 共通組織フラグ
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: false,
    comment: '共通組織フラグ',
  })
  isCommon: boolean;

  /**
   * 組織区分
   */
  // P2FW-719
  // @Field({ nullable: true })
  // @Column({
  //   type: 'enum',
  //   enum: DEPARTMENT_TYPE,
  //   comment: '組織区分',
  //   nullable: true,
  // })
  // category?: DepartmentType;

  /**
   * 事業計画 (年度)
   */
  @Field(() => [AnnualPlan], { nullable: 'itemsAndList' })
  @OneToMany(() => AnnualPlan, (annualPlan) => annualPlan.department, {
    nullable: true,
  })
  annualPlans?: AnnualPlan[];

  /**
   * 利用者部署一覧
   */
  @Field(() => UserDepartment, { nullable: true })
  @OneToMany(
    () => UserDepartment,
    (userDepartment) => userDepartment.department,
  )
  @JoinColumn()
  userDepartments: UserDepartment[];

  /**
   * 企画一覧
   */
  @OneToMany(() => Project, (project) => project.raisedDepartment)
  projects?: Project[];

  @Field(() => [Department], { nullable: 'itemsAndList' })
  @TreeChildren()
  children: Department[];

  @Field({ nullable: true })
  @TreeParent()
  parent: Department;

  /**
   * 適用開始日
   */
  @Field({ nullable: true })
  @Column({
    type: 'date',
    comment: '適用開始日',
    nullable: true,
  })
  enabledAt?: string;

  /**
   * 適用終了日時
   */
  @Field({ nullable: true })
  @Column({
    type: 'date',
    comment: '適用開始日',
    nullable: true,
  })
  disabledAt?: string;

  /**
   * 事業計画
   */
  @Field(() => [Plan], { nullable: 'itemsAndList' })
  @OneToMany(() => Plan, (plan) => plan.department, {
    nullable: true,
    cascade: true,
  })
  plans?: Plan[];

  /**
   組織レベル
   */
  @Field(() => DepartmentLevel, { nullable: true })
  @ManyToOne(() => DepartmentLevel, { nullable: true, eager: true })
  @JoinColumn()
  departmentLevel?: DepartmentLevel;

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
