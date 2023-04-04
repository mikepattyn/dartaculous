import 'dart:async';

import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

mixin SembastLocalRepository<TEntity> on SyncTypeHandler<TEntity> {
  Database get database;
  StoreRef<String, Map<String, Object?>> get store;

  TEntity fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap(TEntity entity);

  @override
  Future<void> deleteLocal(Context context, String id) async {
    final executor = _getExecutor(context);
    await store.record(id).delete(executor);
  }

  @override
  Future<TEntity> getLocal(String id) async {
    final executor = _getExecutor();
    final q = await store.record(id).get(executor);

    if (q == null) throw 'Not found';
    final ret = fromMap(q);
    return ret;
  }

  @override
  FutureOr<void> clearAllLocal(Context context) async {
    final executor = _getExecutor(context);
    await store.delete(executor);
  }

  @override
  Future<void> upsertLocal(Context context, TEntity entity) async {
    final executor = _getExecutor(context);

    final id = getId(entity);
    final map = toMap(entity);
    await store.record(id).put(executor, map);
  }

  DatabaseClient _getExecutor([Context? context]) {
    if (context is TransactionContext) return context.transaction;
    return database;
  }
}
