import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { GraphQLModule } from '@nestjs/graphql';
import { TypeOrmModule } from '@nestjs/typeorm';
import { HealthResolver } from './health';
import { WordFileModule } from './wordFile/wordFile.module';
import { ExcelFileModule } from './excelFile/excelFile.module';
import { join } from 'path';
import { AuthModule } from './auth/auth.module';
import { UserModule } from './user/user.module';
import { DepartmentModule } from './department/department.module';
import { ProjectModule } from './project/project.module';
import { CommandModule } from 'nestjs-command';
import { UserDepartmentModule } from './userDepartment/userDepartment.module';
import { DateScalar } from './graphql/date.scalar';
import { SequenceModule } from './sequence/sequence.module';
import { CompanyModule } from './company/company.module';
import { TaskModule } from './task/task.module';
import { IssueModule } from './issue/issue.module';
import { CauseModule } from './cause/cause.module';
import { CauseConditionModule } from './causeCondition/causeCondition.module';
import { MeasureModule } from './measure/measure.module';
import { ScheduleModule } from './schedule/schedule.module';
import { SystemModule } from './system/system.module';
import { ItAssetTypeModule } from './itAssetType/itAssetType.module';
import { MeasureImplementationTaskModule } from './measureImplementationTask/measureImplementationTask.module';
import { TargetModule } from './target/target.module';
import { TodoModule } from './todo/todo.module';
import { OtherModule } from './other/other.module';
import { StudyContentModule } from './studyContent/studyContent.module';
import { InvestigationModule } from './investigation/investigation.module';
import { ApprovalRequestModule } from './approvalRequest/approvalRequest.module';
import { ApprovalCategoryModule } from './approvalCategory/approvalCategory.module';
import { ApprovalFlowModule } from './approvalFlow/approvalFlow.module';
import { ApprovalStepAssigneeModule } from './approvalStepAssignee/approvalStepAssignee.module';
import { MailModule } from './mail/mail.module';
import { ApprovalEmailModule } from './approvalEmail/approvalEmail.module';
import { EventEmitterModule } from '@nestjs/event-emitter';
import { NotificationModule } from './notification/notification.module';
import { AnnualPlanModule } from './annualPlan/annualPlan.module';
import { PlanModule } from './plan/plan.module';
import { PlanMeasureModule } from './planMeasure/planMeasure.module';
import { PlanMeasureRiskModule } from './planMeasureRisk/planMeasureRisk.module';
import { PositionModule } from './position/position.module';
import { PlanMeasureEffectSaleModule } from './planMeasureEffectSale/planMeasureEffectSale.module';
import { PlanMeasureCostModule } from './planMeasureCost/planMeasureCost.module';
import { PlanMeasureTaskModule } from './planMeasureTask/planMeasureTask.module';
import { BusinessYearModule } from './businessYear/businessYear.module';
import { PlanFormulationRequestModule } from './planFormulationRequest/planFormulationRequest.module';
import { PlanMeasureRegistrationRequestModule } from './planMeasureRegistrationRequest/planMeasureRegistrationRequest.module';
import { PlanFormulationEmailModule } from './planFormulationEmail/planFormulationEmail.module';
import { ApprovedAnnualPlanSnapshotModule } from './approvedAnnualPlanSnapshot/approvedAnnualPlanSnapshot.module';
import { AccountTitleModule } from './accountTitle/accountTitle.module';
import { TenancyModule } from './tenancy/tenancy.module';
import { TenancyService } from './tenancy/tenancy.service';
import { ClientModule } from './client/client.module';
import { PriceUnitModule } from './priceUnit/priceUnit.module';
import apolloServerNewRelicPlugin from '@newrelic/apollo-server-plugin';

@Module({
  imports: [
    ConfigModule.forRoot({
      cache: true,
      isGlobal: true,
      envFilePath: '.env',
    }),
    EventEmitterModule.forRoot(),
    TypeOrmModule.forRootAsync({
      useClass: TenancyService,
    }),
    GraphQLModule.forRoot({
      autoSchemaFile: join(process.cwd(), 'src/schema.gql'),
      path: '/api/graphql',
      context: ({ req }) => ({ req }),
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      plugins: [apolloServerNewRelicPlugin],
    }),
    HealthResolver,
    AuthModule,
    UserModule,
    DepartmentModule,
    UserDepartmentModule,
    WordFileModule,
    ExcelFileModule,
    ProjectModule,
    CommandModule,
    SequenceModule,
    CompanyModule,
    TaskModule,
    IssueModule,
    CauseModule,
    CauseConditionModule,
    MeasureModule,
    ScheduleModule,
    SystemModule,
    ItAssetTypeModule,
    MeasureImplementationTaskModule,
    TargetModule,
    TodoModule,
    OtherModule,
    StudyContentModule,
    InvestigationModule,
    NotificationModule,
    ApprovalRequestModule,
    ApprovalCategoryModule,
    ApprovalFlowModule,
    ApprovalStepAssigneeModule,
    MailModule,
    ApprovalEmailModule,
    PlanModule,
    AnnualPlanModule,
    PositionModule,
    BusinessYearModule,
    PlanFormulationRequestModule,
    PlanMeasureRegistrationRequestModule,
    PlanFormulationEmailModule,
    PlanMeasureModule,
    PlanMeasureRiskModule,
    PlanMeasureCostModule,
    PlanMeasureTaskModule,
    PlanMeasureEffectSaleModule,
    ApprovedAnnualPlanSnapshotModule,
    AccountTitleModule,
    TenancyModule,
    ClientModule,
    PriceUnitModule,
  ],
  controllers: [AppController],
  providers: [AppService, DateScalar],
})
export class AppModule {}
