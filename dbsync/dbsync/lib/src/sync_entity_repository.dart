import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

abstract class SyncEntityRepository<TEntity extends SyncEntity> {
  const SyncEntityRepository({
    required this.syncHandler,
    required this.syncLocalRepository,
    required this.database,
    required this.isOffline,
  });

  final SyncTypeHandler<TEntity> syncHandler;
  final SyncLocalRepository syncLocalRepository;
  final Database database;
  final bool isOffline;

  Future<TEntity> get(String id) async {
    if (!isOffline) return await syncHandler.getRemote(id);
    return await syncHandler.getLocal(database, id);
  }

  Future<TEntity> create(TEntity entity) async {
    final created = isOffline ? entity : await syncHandler.createRemote(entity);

    await database.transaction((txn) async {
      await syncHandler.upsertLocal(txn, entity);
      if (isOffline) {
        final localChange = LocalChange.create(
          protoBytes: syncHandler.marshal(entity),
          entityType: TEntity,
          entityId: entity.id,
          entityRev: entity.rev,
        );
        await syncLocalRepository.insertChange(txn, localChange);
      }
    });

    return created;
  }

  Future<TEntity> update(TEntity entity) async {
    final updated = isOffline ? entity : await syncHandler.updateRemote(entity);

    await database.transaction((txn) async {
      await syncHandler.upsertLocal(txn, updated);
      if (isOffline) {
        final localChange = LocalChange.update(
          entityType: TEntity,
          protoBytes: syncHandler.marshal(entity),
          entityId: entity.id,
          entityRev: entity.rev,
        );
        await syncLocalRepository.insertChange(txn, localChange);
      }
    });

    return updated;
  }

  Future<void> delete(String id, String rev) async {
    if (!isOffline) {
      await syncHandler.deleteRemote(id, rev);
    }

    await database.transaction((txn) async {
      await syncHandler.deleteLocal(txn, id);
      if (isOffline) {
        final localChange = LocalChange.delete(
          entityType: TEntity,
          entityId: id,
          entityRev: rev,
        );
        await syncLocalRepository.insertChange(txn, localChange);
      }
    });
  }
}
