import { forwardRef, Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { PassportModule } from '@nestjs/passport';
import { AuthService } from './auth.service';
import { UserModule } from 'src/user/user.module';
import { JwtStrategy } from './jwt.strategy';
import { jwtConstants } from './constants';
import { UserDepartmentModule } from '../userDepartment/userDepartment.module';

/**
 * 認証モジュール
 */
@Module({
  imports: [
    forwardRef(() => UserModule),
    forwardRef(() => UserDepartmentModule),
    PassportModule,
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: {
        expiresIn: jwtConstants.expiration, // TODO 現在24hなので短くするためにrefresh tokenを実装する
      },
    }),
  ],
  providers: [AuthService, JwtStrategy],
  exports: [AuthService, JwtModule],
})
export class AuthModule {}
