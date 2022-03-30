import { Module } from '@nestjs/common';
import { User } from '../user/user.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProjectRepository } from './project.repository';
import { ProjectCommand } from './project.command';
import { ProjectResolver } from './project.resolver';
import { ProjectService } from './project.service';
import { AuthService } from '../auth/auth.service';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { Department } from '../department/department.entity';
import { SequenceModule } from '../sequence/sequence.module';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { TenancyModule } from 'src/tenancy/tenancy.module'; // P2FW-443

/**
 * 企画モジュール
 */
@Module({
  imports: [
    TypeOrmModule.forFeature([User, Department]),
    ProjectRepository,
    AuthModule,
    UserModule,
    SequenceModule,
    UserDepartmentModule,
    TenancyModule,
  ],
  providers: [
    AuthService,
    ProjectCommand,
    ProjectResolver,
    ProjectService,
    ProjectRepository,
  ],
  exports: [ProjectCommand, ProjectService, ProjectRepository],
})
export class ProjectModule {}
