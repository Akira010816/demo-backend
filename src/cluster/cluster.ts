import cluster from 'cluster';
export class Cluster {
  // eslint-disable-next-line @typescript-eslint/ban-types
  static register(workers: number, callback: Function): void {
    if (cluster.isMaster) {
      console.log(`Master server started on ${process.pid}`);

      //ensure workers exit cleanly
      process.on('SIGINT', function () {
        console.log('Cluster shutting down...');
        for (const id in cluster.workers) {
          cluster.workers[id]?.kill();
        }
        // exit the master process
        process.exit(0);
      });

      for (let i = 0; i < workers; i++) {
        cluster.fork();
      }
      cluster.on('online', function (worker) {
        console.log('Worker %s is online', worker.process.pid);
      });
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      cluster.on('exit', (worker, code, signal) => {
        console.log(`Worker ${worker.process.pid} died. Restarting`);
        cluster.fork();
      });
    } else {
      callback();
    }
  }
}
