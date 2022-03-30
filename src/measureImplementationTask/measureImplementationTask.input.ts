import { Field, InputType, Int } from '@nestjs/graphql';
import { System } from 'src/system/system.entity';
import { ItAssetType } from 'src/itAssetType/itAssetType.entity';
import { MeasureImplementationTaskType } from './measureImplementationTask.entity';

const ItAssetTypeId = Int;
const SystemId = Int;

@InputType()
export class SetSystemsAndItAssetTypesInput {
  @Field({ nullable: false })
  id: number;

  @Field(() => [Int], { nullable: true })
  affectedSystems: System['id'][];

  @Field(() => [Int], { nullable: true })
  abandonmentTargets: ItAssetType['id'][];

  @Field(() => [Int], { nullable: true })
  purchaseTargets: ItAssetType['id'][];
}

@InputType()
class ParticipantInput {
  @Field({ nullable: true })
  name?: string;

  @Field({ nullable: true })
  role?: string;

  @Field({ nullable: true })
  location?: string;
}

@InputType()
class ScopeInput {
  @Field({ nullable: true })
  name?: string;
}

const ParticipantScopeRole = Int;

@InputType()
export class CreateMeasureImplementationTaskInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  ganttId?: string;

  @Field({ nullable: true })
  type?: MeasureImplementationTaskType;

  @Field({ nullable: true })
  name?: string;

  @Field({ nullable: true })
  overview?: string;

  @Field({ nullable: true })
  newSystemName?: string;

  @Field({ nullable: true })
  systemOverview?: string;

  @Field(() => SystemId, { nullable: true })
  targetSystem?: number;

  @Field(() => [SystemId], { nullable: 'itemsAndList' })
  affectedSystems?: number[];

  @Field({ nullable: true })
  modificationDescription?: string;

  @Field(() => [ItAssetTypeId], { nullable: 'itemsAndList' })
  purchaseTargets?: number[];

  @Field(() => [ItAssetTypeId], { nullable: 'itemsAndList' })
  abandonmentTargets?: number[];

  @Field({ nullable: true })
  implementationDetail?: string;

  @Field({ nullable: true })
  investigationDescription?: string;

  @Field({ nullable: true })
  procurementDescription?: string;

  @Field({ nullable: true })
  procurementScope?: string;

  @Field({ nullable: true })
  implementTarget?: string;

  @Field(() => [ParticipantInput], { nullable: true })
  participants?: ParticipantInput[];

  @Field(() => [ScopeInput], { nullable: true })
  scopes?: ScopeInput[];

  @Field(() => [[ParticipantScopeRole]], { nullable: true })
  participantScopeRoles?: number[][];

  @Field({ nullable: true })
  startAt?: string;

  @Field({ nullable: true })
  endAt?: string;
}

@InputType()
export class UpdateMeasureImplementationTaskInput {
  @Field({ nullable: true })
  id?: number;

  @Field({ nullable: true })
  ganttId?: string;

  @Field({ nullable: true })
  type?: MeasureImplementationTaskType;

  @Field({ nullable: true })
  name?: string;

  @Field({ nullable: true })
  overview?: string;

  @Field({ nullable: true })
  newSystemName?: string;

  @Field({ nullable: true })
  systemOverview?: string;

  @Field(() => [SystemId], { nullable: true })
  targetSystem?: number;

  @Field(() => [SystemId], { nullable: 'itemsAndList' })
  affectedSystems?: number[];

  @Field({ nullable: true })
  modificationDescription?: string;

  @Field(() => [ItAssetTypeId], { nullable: 'itemsAndList' })
  purchaseTargets?: number[];

  @Field(() => [ItAssetTypeId], { nullable: 'itemsAndList' })
  abandonmentTargets?: number[];

  @Field({ nullable: true })
  implementationDetail?: string;

  @Field({ nullable: true })
  investigationDescription?: string;

  @Field({ nullable: true })
  procurementDescription?: string;

  @Field({ nullable: true })
  procurementScope?: string;

  @Field({ nullable: true })
  implementTarget?: string;

  @Field(() => [ParticipantInput], { nullable: true })
  participants?: ParticipantInput[];

  @Field(() => [ScopeInput], { nullable: true })
  scopes?: ScopeInput[];

  @Field(() => [[ParticipantScopeRole]], { nullable: true })
  participantScopeRoles?: number[][];

  @Field({ nullable: true })
  startAt?: string;

  @Field({ nullable: true })
  endAt?: string;
}
