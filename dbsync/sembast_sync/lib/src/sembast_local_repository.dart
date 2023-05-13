import 'dart:async';

import 'package:dbsync/dbsync.dart';
import 'package:meta/meta.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

mixin SembastLocalRepository<TEntity> on SyncTypeHandler<TEntity> {
  Database get database;
  StoreRef<String, Map<String, Object?>> get store;

  TEntity fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap(TEntity entity);

  @override
  Future<void> deleteLocal(Context context, String id) async {
    final executor = getExecutor(context);
    await store.record(id).delete(executor);
  }

  @override
  Future<void> deleteLocalBatch(Context context, List<String> ids) async {
    final executor = getExecutor(context);
    await store.records(ids).delete(executor);
  }

  @override
  Future<TEntity> getLocal(String id) async {
    final executor = getExecutor();
    final q = await store.record(id).get(executor);

    if (q == null) throw NotFoundException();
    final ret = fromMap(q);
    return ret;
  }

  @override
  FutureOr<void> clearAllLocal(Context context) async {
    final executor = getExecutor(context);
    await store.delete(executor);
  }

  @override
  Future<void> upsertLocal(Context context, TEntity entity) async {
    final executor = getExecutor(context);

    final id = getId(entity);
    final map = toMap(entity);
    await store.record(id).put(executor, map);
  }

  @override
  int get upsertBatchSize => 10000;

  @override
  int get deleteBatchSize => 10000;

  @override
  Future<void> upsertLocalBatch(Context context, List entities) async {
    final executor = getExecutor(context);

    final ids = entities.map((e) => getId(e)).toList();
    final maps = entities.map((e) => toMap(e)).toList();
    await store.records(ids).put(executor, maps);
  }

  @protected
  DatabaseClient getExecutor([Context? context]) {
    if (context is TransactionContext) return context.transaction;
    return database;
  }
}
