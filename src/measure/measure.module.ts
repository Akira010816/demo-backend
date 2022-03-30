import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Measure } from './measure.entity';
import { MeasureService } from './measure.service';
import { MeasureResolver } from './measure.resolver';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { SystemModule } from '../system/system.module';
import { ItAssetTypeModule } from '../itAssetType/itAssetType.module';
import { MeasureImplementationTaskModule } from '../measureImplementationTask/measureImplementationTask.module';
import { CauseConditionModule } from '../causeCondition/causeCondition.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { TenancyModule } from 'src/tenancy/tenancy.module'; // P2FW-443

/**
 * 問題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([Measure]),
    AuthModule,
    UserModule,
    SequenceModule,
    SystemModule,
    ItAssetTypeModule,
    MeasureImplementationTaskModule,
    CauseConditionModule,
    UserDepartmentModule,
    TenancyModule,
  ],
  providers: [MeasureService, MeasureResolver, AuthService],
  exports: [MeasureService],
})
export class MeasureModule {}
