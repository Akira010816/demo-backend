import { Field, InputType, Int } from '@nestjs/graphql';
import { BusinessYear } from './businessYear.entity';

@InputType()
export class FindBusinessYearByYearInput {
  @Field(() => Int, { nullable: false })
  year: BusinessYear['year'];
}

@InputType()
export class FindBusinessYearsByRangeInput {
  @Field(() => Int, { nullable: false })
  startYear: BusinessYear['year'];

  @Field(() => Int, { nullable: false })
  endYear: BusinessYear['year'];
}

export const generateBusinessYearInputFromEntity = (
  businessYear: BusinessYear,
) => ({
  id: businessYear.id,
});
