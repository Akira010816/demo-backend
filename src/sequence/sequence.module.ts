import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Sequence } from './sequence.entity';
import { SequenceService } from './sequence.service';

/**
 * 採番モジュール
 */
@Module({
  imports: [TypeOrmModule.forFeature([Sequence])],
  providers: [SequenceService],
  exports: [SequenceService],
})
export class SequenceModule {}
