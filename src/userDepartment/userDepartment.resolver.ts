import { Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { UserDepartment } from './userDepartment.entity';
import { UserDepartmentService } from './userDepartment.service';

@Resolver('UserDepartment')
export class UserDepartmentResolver {
  constructor(private readonly userDepartmentService: UserDepartmentService) {}

  @Query(() => [UserDepartment])
  @UseGuards(GqlAuthGuard)
  async findMyUserDepartments(@CurrentUser() user: JWTPayload) {
    return this.userDepartmentService.findMyUserDepartments(user);
  }

  @Query(() => [UserDepartment])
  @UseGuards(GqlAuthGuard)
  async findAllUserDepartments(@CurrentUser() user: JWTPayload) {
    return this.userDepartmentService.findAll(user);
  }

  @Query(() => [UserDepartment])
  @UseGuards(GqlAuthGuard)
  async findAllUserDepartmentsWithChildren(@CurrentUser() user: JWTPayload) {
    return this.userDepartmentService.findAllWithChildren(user);
  }
}
