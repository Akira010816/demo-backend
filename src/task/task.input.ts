import { Field, InputType } from '@nestjs/graphql';
import { TaskStatus } from './task.entity';
import { TargetInput } from '../target/target.input';
import { IssueInput } from '../issue/issue.input';
import { TodoInput } from '../todo/todo.input';
import { OtherInput } from '../other/other.input';
import { InvestigationInput } from '../investigation/investigation.input';
import { StudyContentInput } from '../studyContent/studyContent.input';

@InputType()
export class TaskInput {
  /* id */
  @Field({ nullable: true })
  id?: number;

  /* 課題名 */
  @Field({ nullable: true })
  name?: string;

  /** ステータス */
  @Field({ nullable: true })
  taskStatus?: TaskStatus;

  /** 目標  */
  @Field(() => [TargetInput], { nullable: 'itemsAndList' })
  targets?: TargetInput[];

  /** 調査  */
  @Field(() => [InvestigationInput], { nullable: 'itemsAndList' })
  investigations?: InvestigationInput[];

  /** 方針検討  */
  @Field(() => [StudyContentInput], { nullable: 'itemsAndList' })
  studyContents?: StudyContentInput[];

  /** ToDo  */
  @Field(() => [TodoInput], { nullable: 'itemsAndList' })
  todos?: TodoInput[];

  /** その他  */
  @Field(() => [OtherInput], { nullable: 'itemsAndList' })
  others?: OtherInput[];

  /** 問題 */
  @Field(() => IssueInput, { nullable: true })
  issue?: IssueInput;

  /** 予定開始日 */
  @Field({ nullable: true })
  startDate?: string;

  /** 課題の解決期限 */
  @Field({ nullable: true })
  endDate?: string;

  /** 課題タイプ */
  @Field({ nullable: true })
  taskType?: number;

  /** 企画ID */
  @Field({ nullable: true })
  project_id?: number;

  /** 企画ID */
  @Field({ nullable: true })
  version?: number;
}
