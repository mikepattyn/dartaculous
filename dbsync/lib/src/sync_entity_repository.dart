import 'package:meta/meta.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

abstract class SyncEntityRepository<TEntity> {
  const SyncEntityRepository({
    required this.syncHandler,
    required this.database,
    required this.isOffline,
  });

  final SyncTypeHandler<TEntity> syncHandler;
  final Database database;
  final bool isOffline;

  Future<TEntity> get(String id) async {
    if (!isOffline) {
      final remote = await getRemote(id);
      if (remote != null) {
        return remote;
      }
    }
    return await syncHandler.getLocal(database, id);
  }

  @protected
  Future<TEntity?> getRemote(String id) async {
    final e = await syncHandler.getRemote(id);
    return e;
  }

  Future<TEntity> create(TEntity entity) async {
    final remoteCreated = isOffline ? null : await createRemote(entity);
    final created = remoteCreated ?? entity;

    await database.transaction((txn) async {
      await syncHandler.upsertLocal(txn, entity);
      if (remoteCreated == null) {
        final localChange = LocalChange.create(
          protoBytes: syncHandler.marshal(entity),
          entityType: TEntity,
          entityId: syncHandler.getId(entity),
          entityRev: syncHandler.getRev(entity),
        );
        await SyncLocalRepository.insertChange(txn, localChange);
      }
    });

    return created;
  }

  @protected
  Future<TEntity?> createRemote(TEntity entity) async {
    final created = await syncHandler.createRemote(entity);
    return created;
  }

  Future<TEntity> update(TEntity entity) async {
    TEntity? remoteUpdated = isOffline ? null : await updateRemote(entity);
    final updated = remoteUpdated ?? entity;

    await database.transaction((txn) async {
      await syncHandler.upsertLocal(txn, updated);
      if (remoteUpdated == null) {
        final localChange = LocalChange.update(
          entityType: TEntity,
          protoBytes: syncHandler.marshal(entity),
          entityId: syncHandler.getId(entity),
          entityRev: syncHandler.getRev(entity),
        );
        await SyncLocalRepository.insertChange(txn, localChange);
      }
    });

    return updated;
  }

  /// Tries to update remotely.
  /// Returns:
  /// - The updated entity if succeed
  /// - null if unavailable
  /// throws if any other exception
  @protected
  Future<TEntity?> updateRemote(TEntity entity) async {
    final updated = await syncHandler.updateRemote(entity);
    return updated;
  }

  Future<void> delete(String id, String rev) async {
    final synced = isOffline ? false : await deleteRemote(id, rev);

    await database.transaction((txn) async {
      await syncHandler.deleteLocal(txn, id);
      if (!synced) {
        final localChange = LocalChange.delete(
          entityType: TEntity,
          entityId: id,
          entityRev: rev,
        );
        await SyncLocalRepository.insertChange(txn, localChange);
      }
    });
  }

  // Tries to delete the entity remotely
  // Returns:
  // - true if succeeded
  // - false if unavailable
  // throws if any other exception
  Future<bool> deleteRemote(String id, String rev) async {
    await syncHandler.deleteRemote(id, rev);
    return true;
  }
}
