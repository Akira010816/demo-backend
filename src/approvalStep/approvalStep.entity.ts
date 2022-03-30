import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { ApprovalFlow } from '../approvalFlow/approvalFlow.entity';
import { ApprovalStepPosition } from '../approvalStepPosition/approvalStepPosition.entity';
import { ApprovalStepOrganization } from '../approvalStepOrganization/approvalStepOrganization.entity';
import { ApprovalStepAssignee } from '../approvalStepAssignee/approvalStepAssignee.entity';
import { Department } from '../department/department.entity';

export const APPROVAL_STEP_TYPES = ['everyone', 'atLeastOne'] as const;
export type ApprovalStepType = typeof APPROVAL_STEP_TYPES[number];

export const APPROVAL_STEP_APPROVER_TYPES = [
  'departments', // 組織全体（全員）？
  'departmentsAndAnySuperior', // 組織の上長一人
  'departmentsAndRecentSuperior', // 直近の上長一人
] as const;
export type ApprovalStepApproverType = typeof APPROVAL_STEP_APPROVER_TYPES[number];

/**
 * 承認ステップ
 */
@ObjectType()
@Entity()
export class ApprovalStep {
  /**
   * 承認ステップID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '承認ステップID' })
  id: number;

  /**
   * 承認ステップ名
   */
  @Field({ nullable: true })
  @Column({
    type: 'varchar',
    length: 2048,
    nullable: true,
    comment: '承認ステップ名',
  })
  name?: string;

  /**
   * 承認順序
   */
  @Field({ nullable: true })
  @Column({ nullable: true, comment: '承認順序' })
  order?: number;

  /**
   * 種別 (全員 / 誰か一人)
   */
  @Field({ nullable: false })
  @Column({
    type: 'enum',
    enum: APPROVAL_STEP_TYPES,
    comment: '種別 (全員/誰か一人)',
  })
  type: ApprovalStepType;

  /**
   * 依頼時経路変更フラグ
   * 承認依頼時に、依頼者が経路を変更することを許可するか否か
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment:
      '依頼時経路変更フラグ: 承認依頼時に、依頼者が経路を変更することを許可するか否か',
  })
  isEditableFlow?: boolean;

  /**
   * 依頼者経路スキップフラグ
   * 承認依頼時に、依頼者が経路をスキップすることを許可するか否か
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment:
      '依頼者経路スキップフラグ: 承認依頼時に、依頼者が経路をスキップすることを許可するか否か',
  })
  isSkippableFlow?: boolean;

  /**
   * 承認者区分
   * - 役職全て
   * - 役職且つ上長
   * - 役職且つ直近の上長一人
   */
  @Field({ nullable: false })
  @Column({
    type: 'enum',
    enum: APPROVAL_STEP_APPROVER_TYPES,
    nullable: false,
    comment: '承認者区分',
  })
  approverType: ApprovalStepApproverType;

  /**
   * 申請者を含めるか否か
   */
  @Field({ nullable: true })
  @Column({
    type: 'boolean',
    default: false,
    nullable: true,
    comment: '申請者を含めるか否か',
  })
  isRequesterIncluded?: boolean;

  /**
   * 承認経路
   */
  @Field(() => ApprovalFlow, { nullable: true })
  @ManyToOne(() => ApprovalFlow, (approvalFlow) => approvalFlow.approvalSteps, {
    nullable: true,
    onDelete: 'CASCADE',
    orphanedRowAction: 'delete',
  })
  @JoinColumn()
  approvalFlow?: ApprovalFlow;

  /**
   * 承認ステップ役職
   */
  @Field(() => [ApprovalStepPosition], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalStepPosition,
    (approvalStepPosition) => approvalStepPosition.approvalStep,
    {
      nullable: true,
      cascade: true,
    },
  )
  approvalStepPositions?: ApprovalStepPosition[];

  /**
   * 承認ステップ組織
   */
  @Field(() => [ApprovalStepOrganization], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalStepOrganization,
    (approvalStepOrganization) => approvalStepOrganization.approvalStep,
    {
      nullable: true,
      cascade: true,
    },
  )
  approvalStepOrganizations?: ApprovalStepOrganization[];

  /**
   * 承認ステップ担当者
   */
  @Field(() => [ApprovalStepAssignee], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalStepAssignee,
    (approvalStepAssignee) => approvalStepAssignee.approvalStep,
    {
      nullable: true,
      cascade: true,
    },
  )
  approvalStepAssignees?: ApprovalStepAssignee[];

  /**
   * 承認ステップ担当組織
   */
  @Field(() => Department, { nullable: true })
  @ManyToOne(() => Department, { nullable: true })
  @JoinColumn()
  department?: Department;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
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

  /**
   * 削除利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
