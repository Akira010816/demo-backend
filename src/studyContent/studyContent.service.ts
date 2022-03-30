import { Injectable, NotFoundException } from '@nestjs/common';
import { MeasureService } from '../measure/measure.service';
import { InjectRepository } from '@nestjs/typeorm';
import { StudyContent } from '../studyContent/studyContent.entity';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { StudyContentInput } from '../studyContent/studyContent.input';

@Injectable()
export class StudyContentService {
  constructor(
    private readonly measureService: MeasureService,
    @InjectRepository(StudyContent)
    private readonly studyContentRepository: Repository<StudyContent>,
  ) {}

  setMeasures(
    user: JWTPayload,
    input: Array<StudyContentInput>,
  ): Promise<StudyContent[]> {
    const client = { id: user.clientId };
    return Promise.all(
      input.map(async (studyContentinput) => {
        const current = await this.studyContentRepository.findOne(
          studyContentinput.id,
          {
            where: { client },
            relations: ['measures'],
          },
        );
        if (!current) {
          throw new NotFoundException();
        }
        const measures = await this.measureService.find(
          studyContentinput.measures?.map((m) => Number(m.id)),
        );
        current.measures = measures;
        return await this.studyContentRepository.save(current);
      }),
    );
  }
}
