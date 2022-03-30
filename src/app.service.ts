import { Injectable } from '@nestjs/common';
import * as os from 'os';

@Injectable()
export class AppService {
  health(): string {
    return 'OK CPU:' + os.cpus().length;
  }
}
