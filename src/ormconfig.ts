import { TypeOrmModuleOptions } from '@nestjs/typeorm';
import { SnakeNamingStrategy } from 'typeorm-naming-strategies';

const poolSize = process.env.POSTGRES_POOL_SIZE || 15;

const options: TypeOrmModuleOptions = {
  type: 'postgres',
  useUTC: false,
  host: process.env.POSTGRES_HOST || 'postgres',
  port: Number(process.env.POSTGRES_PORT) || 5432,
  username: process.env.POSTGRES_USERNAME || 'user',
  password: process.env.POSTGRES_PASSWORD || 'pass',
  database: process.env.POSTGRES_DATABASE || 'db',
  entities: ['dist/**/*.entity.js'],
  synchronize: process.env.ORM_SYNCHRONIZE == 'true',
  schema: process.env.POSTGRES_SCHEMA || 'demo',
  migrations: ['dist/database/migrations/*.js'],
  subscribers: ['dist/**/*.subscriber.js'],
  cli: {
    migrationsDir: 'src/database/migrations',
  },
  namingStrategy: new SnakeNamingStrategy(),
  extra: {
    max: poolSize,
    connectionTimeoutMillis: 15000,
  },
  keepConnectionAlive: true,
  maxQueryExecutionTime: 1000,
  logging: false,
};

let OrmConfig: TypeOrmModuleOptions;

if (
  process.env.NODE_ENV !== 'development' &&
  process.env.POSTGRES_SSL_REJECT_UNAUTHORIZED !== 'true'
) {
  OrmConfig = {
    ...options,
    extra: {
      ssl: {
        rejectUnauthorized: false,
      },
      max: poolSize,
      connectionTimeoutMillis: 1000,
    },
  };
} else {
  OrmConfig = options;
}

export = OrmConfig;
