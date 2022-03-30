import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
  CreateDateColumn,
  Unique,
  DeleteDateColumn,
  ManyToOne,
  JoinColumn,
} from 'typeorm';
import { Client } from '../client/client.entity';
import { Field } from '@nestjs/graphql';

@Entity()
@Unique(['tableName', 'clientId'])
export class Sequence {
  @PrimaryGeneratedColumn({ comment: 'ID' })
  id: number;

  @Column('varchar', { length: 20, comment: 'テーブル名' })
  tableName: string;

  @Column('int', { comment: '最大採番値' })
  lastInsertedNumber = 0;

  /* 次の採番値 */
  nextNumber: number;

  /**
   * 導入企業
   */
  @Column()
  clientId: number;
  @ManyToOne(() => Client)
  @JoinColumn()
  client?: Client;

  /**
   * 作成日時
   */
  @CreateDateColumn({ comment: '作成日時' })
  createdAt?: Date;

  /**
   * 作成利用者ID
   */
  @Column({ type: 'int', nullable: true, comment: '作成利用者ID' })
  createdUserId?: number;

  /**
   * 更新日時
   */
  @UpdateDateColumn({ comment: '更新日時' })
  updatedAt?: Date;

  /**
   * 更新利用者ID
   */
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
