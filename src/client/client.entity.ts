import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  Index,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { User } from '../user/user.entity';
import { Project } from '../project/project.entity';
import { Department } from '../department/department.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { unique } from 'faker';

/**
 * 導入企業
 */
@ObjectType()
@Entity()
export class Client {
  /**
   * 導入企業ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '導入企業ID' })
  id?: number;

  /**
   * 紐づく利用者
   */
  @OneToMany(() => User, (user) => user.client)
  users?: User[];

  /**
   * 紐づく部署
   */
  @OneToMany(() => Department, (deparment) => deparment.client)
  departments?: Department[];

  /**
   * 紐づく利用者部署
   */
  @OneToMany(() => UserDepartment, (userDepartment) => userDepartment.client)
  userDepartments?: UserDepartment[];

  /**
   * 紐づく企画
   */
  @OneToMany(() => Project, (project) => project.client)
  projects?: Project[];

  /**
   * 導入企業名
   */
  @Field()
  @Column({ length: 50, comment: '導入企業名' })
  name?: string;

  /**
   * 導入企業スラグ
   */
  @Field()
  @Index({ unique: true })
  @Column({ length: 50, comment: '導入企業スラグ', nullable: true })
  slug: string;

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
