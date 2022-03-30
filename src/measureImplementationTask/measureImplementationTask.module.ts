import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { SequenceModule } from '../sequence/sequence.module';
import { SystemModule } from '../system/system.module';
import { ItAssetTypeModule } from '../itAssetType/itAssetType.module';
import { AuthService } from '../auth/auth.service';
import { MeasureImplementationTaskService } from './measureImplementationTask.service';
import { MeasureImplementationTaskResolver } from './measureImplementationTask.resolver';
import { MeasureImplementationTask } from './measureImplementationTask.entity';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 施策案実施課題モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([MeasureImplementationTask]),
    AuthModule,
    UserModule,
    SequenceModule,
    SystemModule,
    ItAssetTypeModule,
    UserDepartmentModule,
  ],
  providers: [
    MeasureImplementationTaskService,
    MeasureImplementationTaskResolver,
    AuthService,
  ],
  exports: [MeasureImplementationTaskService],
})
export class MeasureImplementationTaskModule {}
