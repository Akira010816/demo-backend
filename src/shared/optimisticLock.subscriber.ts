import {
  EntitySubscriberInterface,
  EventSubscriber,
  UpdateEvent,
} from 'typeorm';
import { OptimisticLockVersionMismatchError } from './OptimisticLockVersionMismatchError';

const EXPECTED_VERSION_METADATA = Symbol();

@EventSubscriber()
export class OptimisticLockSubscriber
  implements EntitySubscriberInterface<any> {
  beforeUpdate(event: UpdateEvent<any>) {
    console.log(`更新内容: `, event.entity?.version);
    console.log(`DBに保存されてるデータ `, event.databaseEntity?.version);
    // 更新しようとしている内容のversionから更新後のバージョンを推測しmetadataにセットする
    if (event && event.entity && event.metadata.versionColumn) {
      const currentVersion = Reflect.get(
        event.entity,
        event.metadata.versionColumn.propertyName,
      );
      const expectedVersionAfterUpdate = currentVersion + 1;
      Reflect.defineMetadata(
        EXPECTED_VERSION_METADATA,
        expectedVersionAfterUpdate,
        event.entity,
      );
    }
  }

  afterUpdate(event: UpdateEvent<any>) {
    if (event && event.entity && event.metadata.versionColumn) {
      // beforeUpdateで推測したversionの値を取得する
      const expectedVersion = Reflect.getOwnMetadata(
        EXPECTED_VERSION_METADATA,
        event.entity,
      );
      Reflect.deleteMetadata(EXPECTED_VERSION_METADATA, event.entity);
      const actualVersion = Reflect.get(
        event.entity,
        event.metadata.versionColumn.propertyName,
      );
      if (expectedVersion && expectedVersion != actualVersion) {
        throw new OptimisticLockVersionMismatchError();
      }
    }
  }
}
