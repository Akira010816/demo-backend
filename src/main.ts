import { NestFactory } from '@nestjs/core';
import * as bodyParser from 'body-parser';
import { AppModule } from './app.module';
import { Cluster } from './cluster/cluster';

async function bootstrap() {
  if (process.env.NODE_ENV === 'production') {
    require('newrelic');
  }
  const app = await NestFactory.create(AppModule);
  app.use(bodyParser.json({ limit: '10mb' }));
  app.use(bodyParser.urlencoded({ limit: '10mb', extended: true }));
  await app.listen(process.env.PORT || 3000);
}

const processCount = Number(process.env.PROCESS_COUNT) || 1;
Cluster.register(processCount, bootstrap);
