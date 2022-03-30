import { BadRequestException, Injectable } from '@nestjs/common';
import {
  Repository,
  Transaction,
  TransactionRepository,
  Connection,
} from 'typeorm';
import { UpdateScheduleInput } from './schedule.input';
import { Project } from '../project/project.entity';
import { JWTPayload } from '../auth/jwt.strategy';
import { ProjectMilestone } from '../projectMilestone/projectMilestone.entity';
import { Task } from '../task/task.entity';
import { ProjectRepository } from '../project/project.repository';
import { Measure } from '../measure/measure.entity';
import { MeasureImplementationTask } from '../measureImplementationTask/measureImplementationTask.entity';
import dayjs from 'dayjs';

/**
 * スケジュールサービス
 */
@Injectable()
export class ScheduleService {
  constructor(private readonly connection: Connection) {}

  /**
   * スケジュール一覧を取得
   *
   * @param user
   * @returns スケジュール
   */
  findSchedules(user: JWTPayload): Promise<Project[]> {
    const projectRepository = this.connection.getCustomRepository(
      ProjectRepository,
    );
    return projectRepository.findSchedules(user.clientId);
  }

  /**
   * スケジュール一覧を更新
   *
   * @param user
   * @param scheduleInput
   * @param projectRepository
   * @param projectMilestoneRepository
   * @param taskRepository
   * @returns
   */
  @Transaction({ isolation: 'SERIALIZABLE' })
  async updateSchedules(
    user: JWTPayload,
    scheduleInput: UpdateScheduleInput,
    @TransactionRepository(Project) projectRepository?: Repository<Project>,
    @TransactionRepository(ProjectMilestone)
    projectMilestoneRepository?: Repository<ProjectMilestone>,
    @TransactionRepository(Task)
    taskRepository?: Repository<Task>,
    @TransactionRepository(Measure)
    measureRepository?: Repository<Measure>,
    @TransactionRepository(MeasureImplementationTask)
    measureImplementationTaskRepository?: Repository<MeasureImplementationTask>,
  ): Promise<boolean> {
    if (
      !projectRepository ||
      !projectMilestoneRepository ||
      !taskRepository ||
      !measureRepository ||
      !measureImplementationTaskRepository
    ) {
      throw new BadRequestException('no transaction');
    }

    const client = { id: user.clientId };

    // 企画のスケジュールを更新
    for (let i = 0; i < scheduleInput.projects.length; i++) {
      const project = scheduleInput.projects[i];
      const current = await projectRepository.findOne(project.projectId, {
        where: { client: client },
      });
      if (!current) {
        throw new BadRequestException();
      }

      // 企画の開始日を更新
      current.startDate = project.startDate;
      current.updatedUserId = user.userId;
      projectRepository.save(current);

      // 企画の終了日として、マイルストーンの「施策実施完了の期限」を更新
      const projectEndDateMilestone = await projectMilestoneRepository.findOne({
        where: { client: client, project: current, type: 'projectEndDate' },
      });
      if (projectEndDateMilestone) {
        projectEndDateMilestone.targetDate = project.endDate;
        projectEndDateMilestone.updatedUserId = user.userId;
        projectMilestoneRepository.save(projectEndDateMilestone);
      }
    }

    // マイルストーンの日付を更新
    for (let i = 0; i < scheduleInput.projectMilestones.length; i++) {
      const milestone = scheduleInput.projectMilestones[i];

      const current = await projectMilestoneRepository.findOne(
        milestone.projectMilestoneId,
        {
          where: { client: client },
        },
      );
      if (!current) {
        throw new BadRequestException();
      }
      current.targetDate = milestone.targetDate;
      current.updatedUserId = user.userId;
      projectMilestoneRepository.save(current);
    }

    // 課題のスケジュールを更新
    for (let i = 0; i < scheduleInput.tasks.length; i++) {
      const task = scheduleInput.tasks[i];

      const current = await taskRepository.findOne(task.taskId, {
        where: { client: client },
      });
      if (!current) {
        throw new BadRequestException();
      }
      current.startDate = task.startDate;
      current.endDate = task.endDate;
      current.updatedUserId = user.userId;
      taskRepository.save(current);
    }

    // 施策のスケジュールを更新
    for (let i = 0; i < scheduleInput.measures.length; i++) {
      const measure = scheduleInput.measures[i];

      const current = await measureRepository.findOne(measure.measureId, {
        where: { client: client },
      });
      if (!current) {
        throw new BadRequestException();
      }
      current.startDate = measure.startDate;
      current.endDate = measure.endDate;
      current.updatedUserId = user.userId;
      measureRepository.save(current);
    }

    // 実施タスクのスケジュールを更新
    for (let i = 0; i < scheduleInput.measureImplementationTasks.length; i++) {
      const measureImplementationTask =
        scheduleInput.measureImplementationTasks[i];

      const current = await measureImplementationTaskRepository.findOne(
        measureImplementationTask.measureImplementationTaskId,
        {
          where: { client: client },
        },
      );
      if (!current) {
        throw new BadRequestException();
      }
      current.startAt = dayjs(measureImplementationTask.startDate).toDate();
      current.endAt = dayjs(measureImplementationTask.endDate).toDate();
      current.updatedUserId = user.userId;
      measureImplementationTaskRepository.save(current);
    }

    return true;
  }
}
