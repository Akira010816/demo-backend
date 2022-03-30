import { Scalar, CustomScalar } from '@nestjs/graphql';
import { Kind, ValueNode } from 'graphql';
import dayjs from 'dayjs';

@Scalar('Date', () => Date)
export class DateScalar implements CustomScalar<string, Date> {
  parseValue(value: string): Date {
    return new Date(value);
  }

  serialize(value: Date): string | null {
    return value instanceof Date ? dayjs(value).format() : null;
  }

  parseLiteral(ast: ValueNode): Date | null {
    if (ast.kind === Kind.INT) {
      return new Date(ast.value);
    }
    return null;
  }
}
