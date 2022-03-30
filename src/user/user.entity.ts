import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Entity,
  Column,
  CreateDateColumn,
  UpdateDateColumn,
  PrimaryGeneratedColumn,
  Index,
  ManyToOne,
  OneToMany,
  JoinColumn,
  DeleteDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { Project } from '../project/project.entity';
import { UserDepartment } from '../userDepartment/userDepartment.entity';
import { Salary } from '../salary/salary.entity';

/**
 * 利用者
 */
@ObjectType()
@Entity({ name: 'users' })
//@Index(['loginId', 'client.id'], { unique: true })
export class User {
  /**
   * 利用者ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '利用者ID' })
  id?: number;

  /**
   * 導入企業
   */
  @Field(() => Client, { nullable: true })
  @ManyToOne(() => Client, (client) => client.users, { nullable: false })
  client?: Client;

  /**
   * 立案した企画
   */
  @Field(() => [Project], { nullable: true })
  @OneToMany(() => Project, (project) => project.raisedUser, { nullable: true })
  raisedProjects?: Project[];

  /**
   * 氏名
   */
  @Field()
  @Column({ length: 50, comment: '氏名' })
  name?: string;

  /**
   * ログインID
   */
  @Column({ length: 100, comment: 'ログインID' })
  @Index({ unique: true })
  loginId: string;

  /**
   * パスワード
   */
  password: string;

  /**
   * ハッシュ化パスワード
   */
  @Column({ length: 60, comment: 'ハッシュ化パスワード' })
  hashedPassword?: string;

  /**
   * 社員BP
   */
  @Field()
  @Column({ comment: '社員BP' })
  isEmployeeBp?: boolean;

  /**
   * メールアドレス
   */
  @Field()
  @Column({ length: 100, nullable: true, comment: 'メールアドレス' })
  mailAddress?: string;

  /**
   * 最終ログイン日時
   */
  @Field()
  @CreateDateColumn({ comment: '最終ログイン日時' })
  lastLoggedInAt?: Date;

  /**
   * 給与等級
   */
  @Field(() => Salary, { nullable: true })
  @ManyToOne(() => Salary, (salary) => salary.users, {
    nullable: true,
    eager: true,
  })
  @JoinColumn()
  salary?: Salary;

  /**
   * 利用者部署一覧
   */
  @Field(() => [UserDepartment], { nullable: true })
  @OneToMany(() => UserDepartment, (userDepartment) => userDepartment.user)
  @JoinColumn()
  userDepartments?: UserDepartment[];

  /**
   * 適用開始日
   */
  @Field()
  @CreateDateColumn({ comment: '適用開始日', default: null, nullable: false })
  activatedAt?: Date;

  /**
   * 適用終了日
   */
  @Field()
  @CreateDateColumn({ comment: '適用終了日', default: null, nullable: false })
  expiredAt?: Date;

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

@ObjectType()
export class Profile extends User {
  @Field()
  currentDepartmentId?: number;

  @Field()
  currentUserDepartmentId?: number;

  @Field()
  currentPositionWeight?: number;
}
