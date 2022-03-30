import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  JoinTable,
  ManyToMany,
  ManyToOne,
  PrimaryGeneratedColumn,
  Unique,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Plan } from '../plan/plan.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { Client } from '../client/client.entity';
import { PlanMeasure } from 'src/planMeasure/planMeasure.entity';

/**
 * 施策登録依頼
 */
@ObjectType()
@Entity()
@Unique(['code', 'client'])
export class PlanMeasureRegistrationRequest {
  /**
   * 依頼ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '依頼ID' })
  id: number;

  /**
   * 依頼コード
   */
  @Field()
  @Column('varchar', { length: 21, comment: '依頼コード' })
  code?: string;

  /**
   * 事業計画
   */
  @Field(() => Plan, { nullable: true })
  @ManyToOne(() => Plan, (plan) => plan.planMeasureRegistrationRequests, {
    nullable: true,
  })
  @JoinColumn()
  plan: Plan;

  /**
   * 施策
   */
  @Field(() => PlanMeasure, { nullable: true })
  @ManyToMany(() => PlanMeasure, {
    nullable: true,
  })
  @JoinTable()
  planMeasure: PlanMeasure[];

  /**
   * 依頼者
   */
  @Field(() => UserDepartment, { nullable: true })
  @ManyToOne(() => UserDepartment, {
    nullable: true,
    cascade: true,
  })
  @JoinTable()
  requestedBy: UserDepartment;

  /**
   * 提出期限
   */
  @Field({ nullable: true })
  @Column({ type: 'date', nullable: true, comment: '提出期限' })
  until: string;

  /**
   * 依頼先利用者
   */
  @Field(() => [UserDepartment], { nullable: 'itemsAndList' })
  @ManyToMany(() => UserDepartment, {
    nullable: true,
  })
  @JoinTable()
  requestedTo: UserDepartment[];

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * バージョン
   */
  @Field()
  @VersionColumn({ default: 1, comment: 'バージョン' })
  version?: number;

  /**
   * 作成日時
   */
  @Field()
  @CreateDateColumn({ comment: '作成日時' })
  createdAt?: Date;

  /**
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新日時
   */
  @Field()
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 更新利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '更新利用者ID' })
  updatedUserId?: number;

  /**
   * 削除日時
   */
  @DeleteDateColumn({ comment: '削除日時' })
  deletedAt?: Date;

  /**
   * 削除利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'integer', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
