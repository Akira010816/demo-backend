import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Notification } from './notification.entity';
import { AuthModule } from '../auth/auth.module';
import { UserModule } from '../user/user.module';
import { NotificationService } from './notification.service';
import { NotificationResolver } from './notification.resolver';
import { AuthService } from '../auth/auth.service';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';
import { NotificationTemplate } from '../notificationTemplate/notificationTemplate.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([
      Notification,
      NotificationTemplate,
      UserDepartment,
    ]),
    AuthModule,
    UserModule,
    UserDepartmentModule,
  ],
  providers: [NotificationService, NotificationResolver, AuthService],
  exports: [NotificationService],
})
export class NotificationModule {}
