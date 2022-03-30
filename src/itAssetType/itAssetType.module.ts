import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ItAssetType } from './itAssetType.entity';
import { ItAssetTypeService } from './itAssetType.service';
import { ItAssetTypeResolver } from './itAssetType.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * システムモジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([ItAssetType]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [ItAssetTypeService, ItAssetTypeResolver, AuthService],
  exports: [ItAssetTypeService],
})
export class ItAssetTypeModule {}
