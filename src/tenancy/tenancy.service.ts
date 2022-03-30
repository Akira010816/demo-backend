import { Inject, Injectable, Scope } from '@nestjs/common';
import { REQUEST } from '@nestjs/core';
import { Request } from 'express';
import { TypeOrmModuleOptions, TypeOrmOptionsFactory } from '@nestjs/typeorm';
import OrmConfig from '../ormconfig';
import { Connection, createConnection, getConnection } from 'typeorm';

@Injectable({ scope: Scope.REQUEST })
export class TenancyService implements TypeOrmOptionsFactory {
  constructor(@Inject(REQUEST) private readonly request: { req: Request }) {
    this.request = request;
  }

  getTenantNameFromSubdomain(): string {
    const subdomain = new URL(
      this.request.req.headers.origin || '',
    ).hostname.split('.')[0];
    return subdomain === 'localhost' ? 'demo' : subdomain;
  }

  createTypeOrmOptions(): TypeOrmModuleOptions {
    const tenant = this.getTenantNameFromSubdomain();
    const options = {
      ...OrmConfig,
      schema: tenant,
      name: tenant,
    };
    return options;
  }

  async getCurrentConnection(): Promise<Connection> {
    const tenant = this.getTenantNameFromSubdomain();
    if (getConnection(tenant).isConnected) {
      return getConnection(tenant);
    } else {
      return createConnection(tenant);
    }
  }
}
