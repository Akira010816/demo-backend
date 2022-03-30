import * as Factory from 'factory.ts';
import { Client } from './client.entity';

export const ClientFactory = Factory.Sync.makeFactory<Client>({
  id: Factory.each((i) => i),
  name: 'テスト企業',
  slug: Factory.each((i) => 'test_company_' + i.toString()),
  createdAt: Factory.each(() => new Date()),
  updatedAt: Factory.each(() => new Date()),
});
