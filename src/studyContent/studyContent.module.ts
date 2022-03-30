import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { StudyContent } from './studyContent.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { MeasureModule } from '../measure/measure.module';
import { StudyContentService } from './studyContent.service';
import { StudyContentResolver } from './studyContent.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 対応方針検討モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([StudyContent]),
    AuthModule,
    UserModule,
    MeasureModule,
    UserDepartmentModule,
  ],
  providers: [StudyContentService, StudyContentResolver, AuthService],
  exports: [StudyContentService],
})
export class StudyContentModule {}
