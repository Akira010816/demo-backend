import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  OneToMany,
  CreateDateColumn,
  UpdateDateColumn,
  PrimaryGeneratedColumn,
  ManyToOne,
  ManyToMany,
  VersionColumn,
  JoinColumn,
} from 'typeorm';
import { User } from '../user/user.entity';
import { Project } from '../project/project.entity';
import { Client } from '../client/client.entity';
import { Department } from '../department/department.entity';
import { Position } from '../position/position.entity';
import { ApprovalStepAssignee } from '../approvalStepAssignee/approvalStepAssignee.entity';
import { ApprovalRequest } from '../approvalRequest/approvalRequest.entity';
import { Notification } from '../notification/notification.entity';
import { PlanMeasure } from '../planMeasure/planMeasure.entity';
import { AccessControl } from 'src/accessControl/accessControl.entity';

/**
 * 利用者部署
 */
@ObjectType()
@Entity()
export class UserDepartment {
  /**
   * 利用者部署ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '利用者部署ID' })
  id: number;

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, (client) => client.userDepartments, {
    nullable: false,
  })
  @JoinColumn()
  client?: Client;

  /**
   * 利用者
   */
  @Field(() => User)
  @ManyToOne(() => User, (user) => user.userDepartments, {
    nullable: false,
    eager: true,
  })
  user: User;

  /**
   * 部署
   */
  @Field(() => Department)
  @ManyToOne(() => Department, (department) => department.userDepartments, {
    nullable: false,
    eager: true,
  })
  department: Department;

  /**
   * 役職
   */
  @Field(() => Position)
  @ManyToOne(() => Position, (position) => position.userDepartments, {
    nullable: true,
    eager: true,
  })
  position: Position;

  /**
   * 利用機能制限テーブル
   */
  @Field(() => [AccessControl])
  @OneToMany(
    () => AccessControl,
    (accessControl) => accessControl.userDepartment,
    {
      nullable: true,
      eager: true,
    },
  )
  accessControl: AccessControl[];

  /**
   * 所有している企画
   */
  @Field(() => [Project], { nullable: true })
  @OneToMany(() => Project, (project) => project.owner, { nullable: true })
  ownedProjects?: Project[];

  /**
   * メンバーになっている企画一覧
   */
  @ManyToMany(() => Project, (project) => project.members, {
    nullable: true,
  })
  assignedProjects?: Project[];

  /**
   * 承認ステップ担当者
   */
  @OneToMany(
    () => ApprovalStepAssignee,
    (approvalStepAssignee) => approvalStepAssignee.userDepartment,
    {
      nullable: true,
    },
  )
  approvalStepAssignees?: ApprovalStepAssignee[];

  /**
   * 作成した承認依頼
   */
  @Field(() => [ApprovalRequest], { nullable: 'itemsAndList' })
  @OneToMany(
    () => ApprovalRequest,
    (approvalRequest) => approvalRequest.requestedBy,
    { nullable: true },
  )
  approvalRequests?: ApprovalRequest[];

  /**
   * 作成した施策
   */
  @Field(() => [PlanMeasure], { nullable: 'itemsAndList' })
  @OneToMany(() => PlanMeasure, (planMeasure) => planMeasure.registeredBy, {
    nullable: true,
  })
  planMeasures?: PlanMeasure[];

  /**
   * 通知
   */
  @Field(() => [Notification], { nullable: 'itemsAndList' })
  @OneToMany(() => Notification, (notification) => notification.notifyTo, {
    nullable: true,
    cascade: true,
  })
  notifications?: Notification[];

  /**
   * 適用開始日
   */
  @Field()
  @CreateDateColumn({ comment: '適用開始日', nullable: true, default: null })
  activatedAt?: Date;

  /**
   * 適用終了日
   */
  @Field()
  @CreateDateColumn({ comment: '適用終了日', nullable: false, default: null })
  expiredAt?: Date;

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
   * 更新日時
   */
  @Field()
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;
}
