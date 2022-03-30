import { Field, InputType } from '@nestjs/graphql';
import { ProgressStatus, ProgressUnit } from './projectProgressReport.entity';
import { ProjectStatus } from '../project/project.entity';

@InputType()
export class ProjectProgressReportInput {
  /* id */
  @Field({ nullable: true })
  id?: number;

  /**
   * 基準日
   */
  @Field({ nullable: true })
  targetDate?: string;

  /**
   * 状況
   */
  @Field({ nullable: true })
  status?: ProgressStatus;

  /**
   * 状況
   */
  @Field({ nullable: true })
  projectStatus?: ProjectStatus;

  /**
   * 単位
   */
  @Field({ nullable: true })
  unit?: ProgressUnit;

  /**
   * 遅延
   */
  @Field({ nullable: true })
  delay?: number;

  /**
   * 遅延対策
   */
  @Field({ nullable: true })
  avoidDelayPlan?: string;

  /**
   * 影響
   */
  @Field({ nullable: true })
  impact?: string;

  /**
   * 進捗率
   */
  @Field({ nullable: true })
  progress?: number;

  /**
   * 報告内容
   */
  @Field({ nullable: true })
  reportBody?: string;

  /**
   * 品質
   */
  @Field({ nullable: true })
  quality?: string;

  /**
   * コスト
   */
  @Field({ nullable: true })
  cost?: string;

  /**
   * 要員
   */
  @Field({ nullable: true })
  member?: string;

  /**
   * 報告日時
   */
  @Field({ nullable: true })
  reportedAt?: string;

  /**
   * バージョン
   */
  @Field({ nullable: true })
  version?: number;
}
