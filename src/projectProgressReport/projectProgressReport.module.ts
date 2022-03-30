import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { ProjectProgressReport } from './projectProgressReport.entity';

/**
 * 企画進捗報告モジュール
 */
@Module({
  imports: [TypeOrmModule.forFeature([ProjectProgressReport]), AuthModule],
  providers: [AuthService],
  exports: [],
})
export class ProjectProgressReportModule {}
