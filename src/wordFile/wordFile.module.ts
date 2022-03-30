import { Module } from '@nestjs/common';
import { WordFileService } from './wordFile.service';
import { WordFileResolver } from './wordFile.resolver';
import { AuthModule } from '../auth/auth.module';

@Module({
  imports: [AuthModule],
  providers: [WordFileResolver, WordFileService],
})
export class WordFileModule {}
