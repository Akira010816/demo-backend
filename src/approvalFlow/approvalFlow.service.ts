import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ApprovalFlow } from './approvalFlow.entity';
import { In, Repository } from 'typeorm';
import { JWTPayload } from '../auth/jwt.strategy';
import { ApprovalStep } from '../approvalStep/approvalStep.entity';
import { ApprovalStepAssignee } from '../approvalStepAssignee/approvalStepAssignee.entity';
import { UserDepartmentService } from '../userDepartment/userDepartment.service';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { flowPattern, FlowStep } from './flowPattern';
import { Department } from '../department/department.entity';

@Injectable()
export class ApprovalFlowService {
  constructor(
    @InjectRepository(ApprovalFlow)
    private readonly approvalFlowRepository: Repository<ApprovalFlow>,
    private readonly userDepartmentService: UserDepartmentService,
  ) {}

  async selectAuthorizers(
    stepData: FlowStep,
    issueDepartmentId: Department['id'],
  ): Promise<UserDepartment[] | undefined> {
    let targets: UserDepartment[] | undefined;
    // 利用者部門が指定されているとき
    if (
      stepData.approvalUserDepartmentIds &&
      stepData.approvalUserDepartmentIds.length > 0
    ) {
      return this.userDepartmentService.findByIds(
        stepData.approvalUserDepartmentIds,
      );
    }
    // 組織が指定されているとき
    if (
      stepData.approvalDepartmentIds &&
      stepData.approvalDepartmentIds.length > 0
    ) {
      targets = await this.userDepartmentService.find({
        where: {
          department: { id: In(stepData.approvalDepartmentIds) },
        },
      });
    } else {
      targets = await this.userDepartmentService.find({
        where: {
          department: { id: issueDepartmentId },
        },
      });
    }
    if (targets === undefined) return;

    //役職が指定されているとき
    if (
      stepData.approvalPositionIds &&
      stepData.approvalPositionIds.length > 0
    ) {
      targets = targets.filter((ud) =>
        stepData.approvalPositionIds?.includes(Number(ud.position.id)),
      );
    }

    // 承認区分が指定されているとき
    if (stepData.approverType) {
      switch (stepData.approverType) {
        case 'departments':
          break;
        case 'departmentsAndAnySuperior':
          // ログインしているUserDepartment.position.weightが必要
          break;
        case 'departmentsAndRecentSuperior':
          const minPositionWeight = targets.reduce(
            (a, b) => Math.min(a, b.position.weight),
            1000,
          );
          targets = targets.filter(
            (ud) => ud.position.weight === minPositionWeight,
          );
          break;
      }
    }
    return targets;
  }

  async build(
    user: JWTPayload,
    issueFrom: Department['id'],
    //approvalCategoryId: ApprovalCategory['id'],
    //issuerId: User['id'],
    //approvalCategorySlug: ApprovalCategory['slug']
  ): Promise<ApprovalFlow> {
    //const issuer = await this.userDepartmentService.findOne(userDepartmentId);
    //if (issuer === undefined) throw new BadRequestException();
    const flow = new ApprovalFlow();
    flow.name = flowPattern[0].name;
    flow.approvalSteps = await Promise.all(
      flowPattern[0].steps.map(async (stepData, index) => {
        let step = new ApprovalStep();
        step = { ...step, ...stepData };
        const authorizers = await this.selectAuthorizers(stepData, issueFrom);
        if (authorizers === undefined)
          throw new BadRequestException('承認者該当なし');
        const assignees = authorizers.map((at) => {
          const assignee = new ApprovalStepAssignee();
          assignee.userDepartment = at;
          assignee.approvalStatus = 'processing';
          return assignee;
        });
        step.approvalStepAssignees = assignees;
        step.order = index;
        return step;
      }),
    );
    return flow;
  }
}
