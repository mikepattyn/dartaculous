import 'package:meta/meta.dart';
//import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

enum DataSource {
  remote,
  local,
}

enum DataDestination { local, both }

abstract class SyncEntityRepository<TEntity> {
  const SyncEntityRepository({
    required this.syncHandler,
    required this.localChangeHandler,
    required this.entityType,
  });

  final SyncTypeHandler<TEntity> syncHandler;
  final LocalChangeHandler localChangeHandler;
  final String entityType;

  Future<(TEntity, DataSource)> get(String id) async {
    final remote = await getRemote(id);
    if (remote != null) {
      await syncHandler.upsertLocal(Context.background(), remote);
      return (remote, DataSource.remote);
    }
    final local = await syncHandler.getLocal(id);
    return (local, DataSource.local);
  }

  @protected
  Future<TEntity?> getRemote(String id) async {
    try {
      final e = await syncHandler.getRemote(id);
      return e;
    } on UnavailableException catch (_) {
      return null;
    }
  }

  Future<(TEntity, DataDestination)> create(TEntity entity) async {
    final remoteCreated = await createRemote(entity);
    final created = remoteCreated ?? entity;
    final ds =
        remoteCreated != null ? DataDestination.both : DataDestination.local;

    await localChangeHandler.transaction((txn) async {
      await syncHandler.upsertLocal(txn, entity);
      if (remoteCreated == null) {
        final localChange = LocalChange.create(
          protoBytes: syncHandler.marshal(entity),
          entityType: this.entityType,
          entityId: syncHandler.getId(entity),
          entityRev: syncHandler.getRev(entity),
        );
        await localChangeHandler.insertLocalChange(txn, localChange);
      }
    });

    return (created, ds);
  }

  @protected
  Future<TEntity?> createRemote(TEntity entity) async {
    try {
      final created = await syncHandler.createRemote(entity);
      return created;
    } on UnavailableException catch (_) {
      return null;
    }
  }

  Future<(TEntity, DataDestination)> update(TEntity entity) async {
    TEntity? remoteUpdated = await updateRemote(entity);
    final updated = remoteUpdated ?? entity;
    final ds =
        remoteUpdated == null ? DataDestination.local : DataDestination.both;

    await localChangeHandler.transaction((txn) async {
      await syncHandler.upsertLocal(txn, updated);
      if (remoteUpdated == null) {
        final localChange = LocalChange.update(
          entityType: this.entityType,
          protoBytes: syncHandler.marshal(entity),
          entityId: syncHandler.getId(entity),
          entityRev: syncHandler.getRev(entity),
        );
        await localChangeHandler.insertLocalChange(txn, localChange);
      }
    });

    return (updated, ds);
  }

  /// Tries to update remotely.
  /// Returns:
  /// - The updated entity if succeed
  /// - null if unavailable
  /// throws if any other exception
  @protected
  Future<TEntity?> updateRemote(TEntity entity) async {
    try {
      final updated = await syncHandler.updateRemote(entity);
      return updated;
    } on UnavailableException catch (_) {
      return null;
    }
  }

  Future<DataDestination> delete(TEntity entity) async {
    final synced = await deleteRemote(entity);
    final ds = synced ? DataDestination.both : DataDestination.local;

    await localChangeHandler.transaction((txn) async {
      await syncHandler.deleteLocal(txn, entity);
      if (!synced) {
        final localChange = LocalChange.delete(
          entityType: this.entityType,
          protoBytes: syncHandler.marshal(entity),
          entityId: syncHandler.getId(entity),
          entityRev: syncHandler.getRev(entity),
        );
        await localChangeHandler.insertLocalChange(txn, localChange);
      }
    });

    return ds;
  }

  // Tries to delete the entity remotely
  // Returns:
  // - true if succeeded
  // - false if unavailable
  // throws if any other exception
  Future<bool> deleteRemote(TEntity entity) async {
    try {
      await syncHandler.deleteRemote(entity);
      return true;
    } on UnavailableException catch (_) {
      return false;
    }
  }
}
