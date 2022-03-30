import { Field, InputType, Int } from '@nestjs/graphql';
import {
  CreateMeasureImplementationTaskInput,
  UpdateMeasureImplementationTaskInput,
} from '../measureImplementationTask/measureImplementationTask.input';
import {
  CreateMeasureImplementationEffectInput,
  UpdateMeasureImplementationEffectInput,
} from '../measureImplementationEffect/measureImplementationEffect.input';

@InputType()
export class FindAllMeasuresInput {
  @Field({ nullable: true })
  name?: string;
}

@InputType()
class GanttLinkInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  source?: string;

  @Field({ nullable: true })
  target?: string;

  @Field({ nullable: true })
  type?: string;
}

@InputType()
export class CreateMeasureInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: false })
  name: string;

  @Field({ nullable: true })
  overview?: string;

  @Field(() => [CreateMeasureImplementationTaskInput], {
    nullable: 'itemsAndList',
  })
  measureImplementationTaskInputs?: CreateMeasureImplementationTaskInput[];

  @Field(() => [CreateMeasureImplementationEffectInput], {
    nullable: 'itemsAndList',
  })
  measureImplementationEffectInputs?: CreateMeasureImplementationEffectInput[];

  @Field(() => [Int], {
    nullable: 'itemsAndList',
  })
  causeConditionInputs?: number[];

  @Field(() => [GanttLinkInput], { nullable: true })
  links?: GanttLinkInput[];

  @Field({ nullable: true })
  costUnit?: string;
}

@InputType()
export class UpdateMeasureInput {
  @Field({ nullable: false })
  id: number;

  @Field({ nullable: true })
  name?: string;

  @Field({ nullable: true })
  overview?: string;

  @Field(() => [UpdateMeasureImplementationTaskInput], {
    nullable: 'itemsAndList',
  })
  measureImplementationTaskInputs?: UpdateMeasureImplementationTaskInput[];

  @Field(() => [UpdateMeasureImplementationEffectInput], {
    nullable: 'itemsAndList',
  })
  measureImplementationEffectInputs?: UpdateMeasureImplementationEffectInput[];

  @Field(() => [Int], {
    nullable: 'itemsAndList',
  })
  causeConditionInputs?: number[];

  @Field(() => [GanttLinkInput], { nullable: true })
  links?: GanttLinkInput[];

  @Field({ nullable: true })
  version: number;

  @Field({ nullable: true })
  costUnit?: string;
}
