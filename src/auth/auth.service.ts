import { BadRequestException, Injectable } from '@nestjs/common';
import { User } from 'src/user/user.entity';
import { UserService } from 'src/user/user.service';
import { JwtService } from '@nestjs/jwt';
import * as bcrypt from 'bcrypt';
import { LoginResponse, PasswordOmitUser } from '../user/user';
import { Client } from '../client/client.entity';
import { Department } from '../department/department.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { Position } from '../position/position.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';

interface JWTPayload {
  userId: User['id'];
  clientId: Client['id'];
  departmentId: Department['id'];
  userDepartmentId: UserDepartment['id'];
  positionWeight: Position['id'];
}

/**
 * 認証サービス
 */
@Injectable()
export class AuthService {
  constructor(
    private jwtService: JwtService,
    private userService: UserService,
    private userDepartmentService: UserDepartmentService,
  ) {}

  // ユーザーを認証する
  async validateUser(
    loginId: User['loginId'],
    password: User['password'],
    //client: Client,
  ): Promise<PasswordOmitUser | null> {
    const user = await this.userService.findOneByLoginIdAndClient(
      loginId,
      //client,
    );
    if (
      user?.hashedPassword &&
      bcrypt.compareSync(password, user.hashedPassword)
    ) {
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      const { password, ...results } = user;
      return results;
    }
    return null;
  }

  validateToken(token: string): { isValid: boolean; payload?: JWTPayload } {
    try {
      const {
        userId,
        clientId,
        departmentId,
        userDepartmentId,
        positionWeight,
      } = this.jwtService.verify<JWTPayload>(token);
      return {
        payload: {
          userId,
          clientId,
          departmentId,
          userDepartmentId,
          positionWeight,
        },
        isValid: true,
      };
    } catch (e) {
      return { isValid: false };
    }
  }

  // ログイン部署を変更する
  async changeDepartment(
    user: JWTPayload,
    departmentId: Department['id'],
  ): Promise<LoginResponse> {
    const myUserDepartments = await this.userDepartmentService.findMyUserDepartments(
      user,
    );
    const userDepartment = myUserDepartments?.filter(
      (ud) => Number(ud.department.id) === departmentId,
    )?.[0];
    const myUserDepartmentId = userDepartment?.id ?? -1;
    const myPositionWeight = userDepartment?.position?.weight ?? -1;
    const payload: JWTPayload = {
      userId: user.userId,
      clientId: user.clientId,
      departmentId: departmentId,
      userDepartmentId: myUserDepartmentId,
      positionWeight: myPositionWeight,
    };
    return {
      accessToken: this.jwtService.sign(payload),
      userId: user.userId,
      departmentId: departmentId,
      userDepartmentId: myUserDepartmentId,
      positionWeight: myPositionWeight || -1,
    };
  }

  // jwt tokenを返す
  async login(user: PasswordOmitUser): Promise<LoginResponse> {
    if (user.userDepartments === undefined || user.userDepartments.length < 1) {
      throw new BadRequestException('Invalid user account');
    }
    const userDepartment = user.userDepartments?.[0];
    const departmentId = userDepartment?.department.id ?? -1;
    const userDepartmentId = userDepartment?.id ?? -1;
    const positionWeight = userDepartment?.position.weight ?? -1;

    // jwtにつけるPayload情報
    const payload: JWTPayload = {
      userId: user.id,
      clientId: user.client?.id,
      departmentId: departmentId,
      userDepartmentId: userDepartmentId,
      positionWeight: positionWeight,
    };

    this.userService.updateLastLoggedInAt(user.loginId);

    return {
      accessToken: this.jwtService.sign(payload),
      userId: user.id,
      departmentId: departmentId,
      userDepartmentId: userDepartmentId,
      positionWeight: positionWeight,
    };
  }
}
