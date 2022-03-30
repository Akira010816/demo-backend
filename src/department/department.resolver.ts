import { Query, Resolver } from '@nestjs/graphql';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { CurrentUser } from '../shared/decorators/decorators';
import { DepartmentService } from './department.service';
import { JWTPayload } from '../auth/jwt.strategy';
import { Department } from './department.entity';

@Resolver('Department')
export class DepartmentResolver {
  constructor(private readonly departmentService: DepartmentService) {}

  @Query(() => [Department])
  @UseGuards(GqlAuthGuard)
  async findAllDepartments(@CurrentUser() user: JWTPayload) {
    return this.departmentService.findAll(user);
  }
}
