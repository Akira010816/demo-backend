import { InputType, Field } from '@nestjs/graphql';
import { UpdateMeasureInput } from '../measure/measure.input';

@InputType()
export class InvestigationInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  taskId?: number;

  @Field({ nullable: true })
  text?: string;

  @Field({ nullable: true })
  createdAt?: Date;

  @Field({ nullable: true })
  updatedAt?: Date;

  /* 施策案 */
  @Field(() => [UpdateMeasureInput], { nullable: 'itemsAndList' })
  measures?: UpdateMeasureInput[];
}
