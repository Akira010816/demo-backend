import { Module } from '@nestjs/common';
import { TenancyService } from './tenancy.service';

@Module({
  imports: [],
  providers: [TenancyService],
  exports: [TenancyService],
})
export class TenancyModule {}
