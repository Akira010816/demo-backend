import { Injectable, NotFoundException } from '@nestjs/common';
import { MeasureService } from '../measure/measure.service';
import { InjectRepository } from '@nestjs/typeorm';
import { Todo } from '../todo/todo.entity';
import { Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { TodoInput } from '../todo/todo.input';

@Injectable()
export class TodoService {
  constructor(
    private readonly measureService: MeasureService,
    @InjectRepository(Todo)
    private readonly todoRepository: Repository<Todo>,
  ) {}

  setMeasures(user: JWTPayload, input: Array<TodoInput>): Promise<Todo[]> {
    const client = { id: user.clientId };
    return Promise.all(
      input.map(async (todoinput) => {
        const current = await this.todoRepository.findOne(todoinput.id, {
          where: { client },
          relations: ['measures'],
        });
        if (!current) {
          throw new NotFoundException();
        }
        const measures = await this.measureService.find(
          todoinput.measures?.map((m) => Number(m.id)),
        );
        current.measures = measures;
        return await this.todoRepository.save(current);
      }),
    );
  }
}
