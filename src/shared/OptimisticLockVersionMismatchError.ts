export class OptimisticLockVersionMismatchError extends Error {
  name = 'OptimisticLockVersionMismatchError';

  constructor() {
    super();
    Reflect.setPrototypeOf(this, OptimisticLockVersionMismatchError.prototype);
    this.message = `対象が更新されているので画面をリロードしてください。`;
  }
}
