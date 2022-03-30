import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Todo } from '../todo/todo.entity';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from '../auth/graphql-auth.guard';
import { TodoInput } from '../todo/todo.input';
import { CurrentUser } from '../shared/decorators/decorators';
import { JWTPayload } from '../auth/jwt.strategy';
import { TodoService } from '../todo/todo.service';

@Resolver('Todo')
export class TodoResolver {
  constructor(private readonly todoService: TodoService) {}

  @Mutation(() => [Todo])
  @UseGuards(GqlAuthGuard)
  async setMeasuresToTodos(
    @Args({ name: 'todosInput', type: () => [TodoInput] })
    todosInput: TodoInput[],
    @CurrentUser() user: JWTPayload,
  ) {
    return await this.todoService.setMeasures(user, todosInput);
  }
}
