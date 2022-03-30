import {
  ExecutionContext,
  HttpException,
  HttpStatus,
  Injectable,
} from '@nestjs/common';
import { GqlExecutionContext } from '@nestjs/graphql';
import { AuthService } from './auth.service';

@Injectable()
export class GqlAuthGuard {
  constructor(private readonly auth: AuthService) {}

  canActivate(context: ExecutionContext) {
    const ctx = GqlExecutionContext.create(context).getContext();
    const authHeader = context.getArgs()[2].req.headers.authorization as string;
    if (!authHeader) {
      throw new HttpException(
        'Authorization header not found.',
        HttpStatus.UNAUTHORIZED,
      );
    }
    const [type, token] = authHeader.split(' ');
    if (type !== 'Bearer') {
      throw new HttpException(
        `Authentication type \'Bearer\' required. Found \'${type}\'`,
        HttpStatus.BAD_REQUEST,
      );
    }
    const { isValid, payload } = this.auth.validateToken(token);
    if (isValid) {
      ctx.user = payload;
      return true;
    }
    throw new HttpException('Unauthorized', HttpStatus.UNAUTHORIZED);
  }
}
