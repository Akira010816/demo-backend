import { Int, ObjectType } from '@nestjs/graphql';
/**
 * 適用開始日
 */
import { Field } from '@nestjs/graphql';
import { AccessControl } from 'src/accessControl/accessControl.entity';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  JoinColumn,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';

/**
 * 役職
 */
@ObjectType()
@Entity()
export class Position {
  /**
   * 役職ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '役職ID' })
  id: number;

  /**
   * 役職名
   */
  @Field()
  @Column({ length: 50, comment: '役職名' })
  name: string;

  /**
   * 役職
   */
  @Field()
  @Column('int', { comment: '役職' })
  weight: number;

  /**
   * 利用機能制限テーブル
   */
  @Field(() => [AccessControl])
  @OneToMany(() => AccessControl, (accessControl) => accessControl.position, {
    nullable: true,
    eager: true,
  })
  accessControl: AccessControl[];

  /**
   * 利用者部署一覧
   */
  @Field(() => UserDepartment, { nullable: true })
  @OneToMany(
    () => UserDepartment,
    (userDepartment) => userDepartment.position,
    { nullable: true },
  )
  userDepartments?: UserDepartment[];

  /**
   * 導入企業
   */
  @ManyToOne(() => Client, (client) => client.departments, { nullable: false })
  @JoinColumn()
  client?: Client;

  /**
   * 適用開始日
   */
  @Field({ nullable: true })
  @Column({
    type: 'date',
    comment: '適用開始日',
    nullable: true,
  })
  enabledAt?: string;

  /**
   * 適用終了日
   */
  @Field({ nullable: true })
  @Column({
    type: 'date',
    comment: '適用開始日',
    nullable: true,
  })
  disabledAt?: string;

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
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
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
  @Column({ type: 'int', nullable: true, comment: '更新利用者ID' })
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
  @Column({ type: 'int', nullable: true, comment: '削除利用者ID' })
  deletedUserId?: number;
}
