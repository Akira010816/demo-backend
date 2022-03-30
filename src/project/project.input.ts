import { Field, InputType } from '@nestjs/graphql';
import { DepartmentInput } from '../department/department.input';
import { UserInput } from '../user/user.input';
import { ProjectMilestoneInput } from '../projectMilestone/projectMilestone.input';
import { UserDepartmentInput } from '../userDepartment/userDepartment.input';
import { ProjectAchievementConditionInput } from '../projectAchievementCondition/projectAchievementCondition.input';
import { ProjectScheduleInput } from 'src/projectSchedule/projectSchedule.input';
import { ProjectProgressReportInput } from '../projectProgressReport/projectProgressReport.input';
import { ProjectStatus } from './project.entity';

@InputType()
export class DeleteProjectInput {
  @Field()
  id: number;

  @Field()
  version: number;
}

@InputType()
export class ProjectInput {
  /* id */
  @Field({ nullable: true })
  id?: number;

  /* 企画名 */
  @Field({ nullable: true })
  name?: string;

  /** ステータス */
  @Field({ nullable: true })
  status?: ProjectStatus;

  /** 概要 */
  @Field({ nullable: true })
  description?: string;

  /** 経緯 */
  @Field({ nullable: true })
  impact?: string;

  /** 前提条件 */
  @Field({ nullable: true })
  premiseCondition?: string;

  /** 提起部署 */
  @Field({ nullable: true })
  raised_department_id?: number;
  @Field(() => DepartmentInput, { nullable: true })
  raisedDepartment?: DepartmentInput;

  /** 提起者 */
  @Field({ nullable: true })
  raised_user_id?: number;
  @Field(() => UserInput, { nullable: true })
  raisedUser?: UserInput;

  /** 優先度 */
  @Field({ nullable: true })
  priority?: Priority;

  /** 開始日 */
  @Field({ nullable: true })
  startDate?: string;

  /** 解決条件 */
  @Field(() => [ProjectAchievementConditionInput], { nullable: 'itemsAndList' })
  achievementConditions?: ProjectAchievementConditionInput[];

  /** マイルストーン */
  @Field(() => [ProjectMilestoneInput], { nullable: 'itemsAndList' })
  milestones?: ProjectMilestoneInput[];

  /** 企画オーナー */
  @Field({ nullable: true })
  owner_id?: number;
  @Field(() => UserDepartmentInput, { nullable: true })
  owner?: UserDepartmentInput;

  /** メンバー */
  @Field(() => [UserDepartmentInput], { nullable: 'itemsAndList' })
  members?: UserDepartmentInput[];

  /** スケジュール */
  @Field(() => [ProjectScheduleInput], { nullable: 'itemsAndList' })
  schedules?: ProjectScheduleInput[];

  /** 進捗報告 */
  @Field(() => [ProjectProgressReportInput], { nullable: 'itemsAndList' })
  progressReports?: ProjectProgressReportInput[];

  /** バージョン */
  @Field({ nullable: true })
  version?: number;
}
