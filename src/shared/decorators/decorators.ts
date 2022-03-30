import {
  createParamDecorator,
  ExecutionContext,
  HttpException,
  HttpStatus,
} from '@nestjs/common';
import { JWTPayload } from '../../auth/jwt.strategy';
import { GqlExecutionContext } from '@nestjs/graphql';

export const GQLPayload = createParamDecorator(
  (data, req): JWTPayload => {
    if (req) {
      throw new HttpException('Unautorize Token', HttpStatus.UNAUTHORIZED);
    }
    return {
      userId: req.userId,
      clientId: req.clientId,
      departmentId: req.departmentId,
      userDepartmentId: req.userDepartmentId,
      positionWeight: req.positionWeight,
    };
  },
);

export const CurrentUser = createParamDecorator(
  (data: unknown, context: ExecutionContext) => {
    const ctx = GqlExecutionContext.create(context).getContext();
    return ctx.user;
  },
);
