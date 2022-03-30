import { Module } from '@nestjs/common';
import { ExcelFileService } from './excelFile.service';
import { ExcelFileResolver } from './excelFile.resolver';
import { AuthModule } from '../auth/auth.module';

@Module({
  imports: [AuthModule],
  providers: [ExcelFileService, ExcelFileResolver],
})
export class ExcelFileModule {}
