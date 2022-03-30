import { Field, InputType } from '@nestjs/graphql';
import { CauseConditionInput } from '../causeCondition/causeCondition.input';
import { UpdateMeasureInput } from '../measure/measure.input';

@InputType()
export class CauseInput {
  /* id */
  @Field({ nullable: true })
  id?: number;

  /* 原因 */
  @Field({ nullable: true })
  text?: string;

  /* 原因 */
  @Field({ nullable: true })
  isHypothesis?: boolean;

  /* 原因解決条件 */
  @Field(() => [CauseConditionInput], { nullable: 'itemsAndList' })
  causeConditions?: CauseConditionInput[];

  /* 施策案 */
  @Field(() => [UpdateMeasureInput], { nullable: 'itemsAndList' })
  measures?: UpdateMeasureInput[];
}
