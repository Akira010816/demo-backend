// import先が'passport-local'では無い事に注意！
import { ExtractJwt, Strategy } from 'passport-jwt';
import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { User } from 'src/user/user.entity';
import { jwtConstants } from './constants';
import { Client } from '../client/client.entity';
import { Department } from '../department/department.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { Position } from '../position/position.entity';

// JwtについているPayload情報の型
export interface JWTPayload {
  userId: User['id'];
  clientId: Client['id'];
  departmentId: Department['id'];
  userDepartmentId: UserDepartment['id'];
  positionWeight: Position['id'];
}

/**
 * @description JWTの認証処理を行うクラス
 */
@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor() {
    super({
      // Authorization bearerからトークンを読み込む関数を返す
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      // 有効期間を無視するかどうか
      ignoreExpiration: false,
      // 環境変数から秘密鍵を渡す
      secretOrKey: jwtConstants.secret,
    });
  }
  async validate(payload: JWTPayload): Promise<JWTPayload> {
    return {
      userId: payload.userId,
      clientId: payload.clientId,
      departmentId: payload.departmentId,
      userDepartmentId: payload.userDepartmentId,
      positionWeight: payload.positionWeight,
    };
  }
}
