import { Field, Int, ObjectType } from '@nestjs/graphql';
import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  VersionColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { User } from '../user/user.entity';

/**
 * 給与等級
 */
@ObjectType()
@Entity()
export class Salary {
  /**
   * 給与等級ID
   */
  @Field(() => Int)
  @PrimaryGeneratedColumn({ comment: '給与等級ID' })
  id: number;

  /**
   * 等級名
   */
  @Field(() => String)
  @Column({ length: 255, nullable: false, comment: '等級名' })
  name: string;

  /**
   * 内部原価
   */
  @Field(() => Int)
  @Column({
    type: 'integer',
    nullable: false,
    default: 0,
    comment: '内部原価',
  })
  salary: number;

  /**
   * 利用者
   */
  @Field(() => [User], { nullable: 'itemsAndList' })
  @OneToMany(() => User, (user) => user.salary, { nullable: true })
  users?: User[];

  /**
   * 導入企業
   */
  @Field(() => Client, { nullable: true })
  @ManyToOne(() => Client, (client) => client.users, { nullable: false })
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
   * 更新日時
   */
  @Field()
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 作成利用者ID
   */
  @Field({ nullable: true })
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

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
