import { InputType, Field } from '@nestjs/graphql';

@InputType()
export class ProjectScheduleInput {
  @Field()
  type: ScheduleType;
  @Field()
  startDate: string;
  @Field()
  endDate: string;
}
