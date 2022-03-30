import { Field, InputType } from '@nestjs/graphql';
import { OccurStatus, OccurFrequency } from './issue.entity';
import { CauseInput } from '../cause/cause.input';

@InputType()
export class IssueInput {
  /* id */
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  taskId?: number;

  /* 発生状況 */
  @Field({ nullable: true })
  occurStatus?: OccurStatus;

  /* 発生回数 */
  @Field({ nullable: true })
  occurCount?: number;

  /* 発生頻度 */
  @Field({ nullable: true })
  occurFrequency?: OccurFrequency;

  /* 発生頻度詳細 */
  @Field({ nullable: true })
  occurFrequencyDetail?: string;

  /** 問題内容 */
  @Field({ nullable: true })
  contents?: string;

  /** 影響 */
  @Field({ nullable: true })
  impact?: string;

  @Field({ nullable: true })
  updatedUserId?: number;

  /** 原因 */
  @Field(() => [CauseInput], { nullable: 'itemsAndList' })
  causes?: CauseInput[];
}
