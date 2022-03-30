import { forwardRef, Module } from '@nestjs/common';
import { CompanyService } from './company.service';
import { CompanyResolver } from './company.resolver';
import { Company } from './company.entity';
import { Client } from 'src/client/client.entity';
import { AuthModule } from 'src/auth/auth.module';
import { TypeOrmModule } from '@nestjs/typeorm';

/**
 * 事業者モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Company, Client]),
    forwardRef(() => AuthModule),
  ],
  providers: [CompanyService, CompanyResolver],
  exports: [CompanyService],
})
export class CompanyModule {}
