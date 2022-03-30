import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class CreateMeasureImplementationEffectInput {
  @Field({ nullable: true })
  evaluation: string;

  @Field({ nullable: true })
  valueBeforeImprovement: string;

  @Field({ nullable: true })
  valueAfterImprovement: string;

  @Field({ nullable: true })
  calculationBasis: string;

  @Field({ nullable: true })
  startAt: string;

  @Field({ nullable: true })
  startAtMemo: string;

  @Field({ nullable: true })
  measuringMethod: string;

  @Field({ nullable: true })
  annualCostEffect: number;
}

@InputType()
export class UpdateMeasureImplementationEffectInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  evaluation: string;

  @Field({ nullable: true })
  valueBeforeImprovement: string;

  @Field({ nullable: true })
  valueAfterImprovement: string;

  @Field({ nullable: true })
  calculationBasis: string;

  @Field({ nullable: true })
  startAt: string;

  @Field({ nullable: true })
  startAtMemo: string;

  @Field({ nullable: true })
  measuringMethod: string;

  @Field({ nullable: true })
  annualCostEffect: number;
}
