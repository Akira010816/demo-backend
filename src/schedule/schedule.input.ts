import { Field, InputType } from '@nestjs/graphql';

/**
 * スケジュール更新の企画
 */
@InputType()
export class UpdateScheduleProject {
  @Field()
  projectId: number;
  @Field()
  startDate: string;
  @Field()
  endDate: string;
}

/**
 * スケジュール更新の企画マイルストーン
 */
@InputType()
export class UpdateScheduleProjectMilestone {
  @Field()
  projectMilestoneId: number;
  @Field()
  targetDate: string;
}

/**
 * スケジュール更新の課題
 */
@InputType()
export class UpdateScheduleTask {
  @Field()
  taskId: number;
  @Field()
  startDate: string;
  @Field()
  endDate: string;
}

/**
 * スケジュール更新の施策
 */
@InputType()
export class UpdateScheduleMeasure {
  @Field()
  measureId: number;
  @Field()
  startDate: string;
  @Field()
  endDate: string;
}

/**
 * スケジュール更新の実施タスク
 */
@InputType()
export class UpdateScheduleMeasureImplementationTask {
  @Field()
  measureImplementationTaskId: number;
  @Field()
  startDate: string;
  @Field()
  endDate: string;
}

/**
 * スケジュール更新の入力パラメータ
 */
@InputType()
export class UpdateScheduleInput {
  /**
   * 企画一覧
   */
  @Field(() => [UpdateScheduleProject])
  projects: UpdateScheduleProject[];

  /**
   * 企画マイルストーン一覧
   */
  @Field(() => [UpdateScheduleProjectMilestone])
  projectMilestones: UpdateScheduleProjectMilestone[];

  /**
   * 課題一覧
   */
  @Field(() => [UpdateScheduleTask])
  tasks: UpdateScheduleTask[];

  /**
   * 施策一覧
   */
  @Field(() => [UpdateScheduleMeasure])
  measures: UpdateScheduleMeasure[];

  /**
   * 実施タスク一覧
   */
  @Field(() => [UpdateScheduleMeasureImplementationTask])
  measureImplementationTasks: UpdateScheduleMeasureImplementationTask[];
}
