import { Resolver, Args, Mutation, Query } from '@nestjs/graphql';
import { ChangeDepartmentInput, LoginInput } from './user.input';
import { LoginResponse, PasswordOmitUser } from './user';
import { AuthService } from '../auth/auth.service';
import { HttpException, HttpStatus, UseGuards } from '@nestjs/common';
import { Auth } from '../auth/auth.entity';
import { Profile, User } from './user.entity';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { UserService } from './user.service';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';

@Resolver()
export class UserResolver {
  constructor(
    private readonly authService: AuthService,
    private readonly userService: UserService,
    private readonly userDepartmentService: UserDepartmentService,
  ) {}
  @Mutation(() => Auth)
  async login(
    @Args('loginInput') loginInput: LoginInput,
  ): Promise<LoginResponse> {
    /* TODO スキーマ別ログイン実装
    const client = await this.clientService.findClientBySlug(
      loginInput.clientSlug,
    );
    if (client === undefined) {
      throw new HttpException(
        JSON.stringify([
          {
            clientSlug: {
              state: 'error',
              message: 'ログイン企業名をご確認ください',
            },
          },
        ]),
        HttpStatus.UNAUTHORIZED,
      );
    }

     */
    const user: PasswordOmitUser | null = await this.authService.validateUser(
      loginInput.loginId,
      loginInput.password,
      //      client,
    );
    if (user) {
      return this.authService.login(user);
    } else {
      throw new HttpException(
        JSON.stringify([
          {
            username: {
              state: 'error',
              message:
                '一致するログイン企業、ログインID、パスワードの組み合わせがありません',
            },
          },
        ]),
        HttpStatus.UNAUTHORIZED,
      );
    }
  }

  @Mutation(() => Auth)
  @UseGuards(GqlAuthGuard)
  async changeLoginDepartment(
    @Args('changeDepartmentInput') changeDepartmentInput: ChangeDepartmentInput,
    @CurrentUser() user: JWTPayload,
  ) {
    return this.authService.changeDepartment(
      user,
      changeDepartmentInput.departmentId,
    );
  }

  @Query(() => Profile)
  @UseGuards(GqlAuthGuard)
  async findProfile(@CurrentUser() user: JWTPayload) {
    const myUserDepartment = await this.userDepartmentService.findCurrentUserDepartment(
      user,
    );
    const result = await this.userService.findOneByUserId(user.userId);
    return {
      ...result,
      currentDepartmentId: myUserDepartment?.department.id,
      currentUserDepartmentId: myUserDepartment?.id,
      currentPositionWeight: myUserDepartment?.position.weight,
    };
  }

  @Query(() => [User])
  @UseGuards(GqlAuthGuard)
  async findAllUsers(@CurrentUser() user: JWTPayload) {
    return this.userService.findAll(user);
  }
}
