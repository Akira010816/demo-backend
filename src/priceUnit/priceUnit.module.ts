import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PriceUnit } from '../priceUnit/priceUnit.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { PriceUnitService } from '../priceUnit/priceUnit.service';
import { PriceUnitResolver } from '../priceUnit/priceUnit.resolver';

@Module({
  imports: [TypeOrmModule.forFeature([PriceUnit]), AuthModule, UserModule],
  providers: [PriceUnitService, PriceUnitResolver],
  exports: [PriceUnitService],
})
export class PriceUnitModule {}
