import 'package:sqflite_common/sqlite_api.dart';
import 'package:dbsync/dbsync.dart';

abstract class SyncEntityRepository<TEntity> {
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

  SyncEntityService<TEntity> get _serviceClient => syncHandler.entityService;
  LocalEntityRepository<TEntity> get _localEntityRepository =>
      syncHandler.localEntityRepository;

  Future<TEntity> get(String id) async {
    if (!isOffline) return await _serviceClient.get(id);
    return await _localEntityRepository.getLocal(database, id);
  }

  Future<TEntity> create(TEntity entity) async {
    final created = isOffline ? entity : await _serviceClient.create(entity);

    // final protoBytes = getProtoBytes(entity);
    final lce = syncHandler.toLocalChangeEntity(entity);
    await database.transaction((txn) async {
      await _localEntityRepository.upsertLocal(txn, entity);
      if (isOffline) {
        final localChange = LocalChange.create(
          entityType: TEntity,
          entity: lce,
        );
        await syncLocalRepository.insertChange(txn, localChange);
      }
    });

    return created;
  }

  Future<TEntity> update(TEntity entity) async {
    final updated = isOffline ? entity : await _serviceClient.update(entity);

    final lce = syncHandler.toLocalChangeEntity(entity);
    await database.transaction((txn) async {
      await _localEntityRepository.upsertLocal(txn, updated);
      if (isOffline) {
        final localChange = LocalChange.update(
          entityType: TEntity,
          entity: lce,
        );
        await syncLocalRepository.insertChange(txn, localChange);
      }
    });

    return updated;
  }

  Future<void> delete(String id, String rev) async {
    if (!isOffline) {
      await _serviceClient.delete(id, rev);
    }

    await database.transaction((txn) async {
      await _localEntityRepository.deleteLocal(txn, id);
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
