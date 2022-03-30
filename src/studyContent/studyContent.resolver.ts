import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { StudyContent } from '../studyContent/studyContent.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { StudyContentInput } from '../studyContent/studyContent.input';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { StudyContentService } from '../studyContent/studyContent.service';

@Resolver('StudyContent')
export class StudyContentResolver {
  constructor(private readonly studyContentService: StudyContentService) {}

  @Mutation(() => [StudyContent])
  @UseGuards(GqlAuthGuard)
  async setMeasuresToStudyContents(
    @Args({ name: 'studyContentsInput', type: () => [StudyContentInput] })
    studyContentsInput: StudyContentInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.studyContentService.setMeasures(user, studyContentsInput);
  }
}
