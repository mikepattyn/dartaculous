import 'dart:async';

import 'package:dbsync/dbsync.dart';
import 'package:meta/meta.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

mixin SembastSingleLocalRepository<TEntity> on SyncTypeHandler<TEntity> {
  Map<String, TEntity> _cache = <String, TEntity>{};
  String _k = '';

  Database get database;
  StoreRef<String, Map<String, Object?>> get store;

  TEntity fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap(TEntity entity);

  @override
  Future<void> deleteLocal(Context context, TEntity entity) async {
    final id = getId(entity);
    await deleteLocalBatch(context, [id]);
  }

  @override
  Future<void> deleteLocalBatch(Context context, List entities) async {
    final ids = entities.map((e) => getId(e)).toList();
    Future<void> action(trx) async {
      final currentItems = await getItemMap(trx);
      for (final id in ids) {
        currentItems.remove(id);
      }

      final k = _updateCache(currentItems);

      final entityMaps = currentItems.values.map((e) => toMap(e)).toList();
      final all = <String, dynamic>{'items': entityMaps, 'k': k};
      await store.record('all').put(trx, all);
      await store.record('k').put(trx, {'k': k});
    }

    if (context is TransactionContext) {
      final trx = context.transaction;
      await action(trx);
      return;
    }

    await database.transaction((transaction) async {
      await action(transaction);
    });
  }

  @override
  Future<TEntity> getLocal(String id) async {
    final m = await getItemMap(database);

    final item = m[id];
    return item!;
  }

  @override
  FutureOr<void> clearAllLocal(Context context) async {
    final executor = getExecutor(context);
    await store.delete(executor);
    _k = '';
    _cache = {};
  }

  @override
  Future<void> upsertLocal(Context context, TEntity entity) async {
    await upsertLocalBatch(context, [entity]);
  }

  @override
  int get upsertBatchSize => -1;

  @override
  int get deleteBatchSize => -1;

  @override
  Future<void> upsertLocalBatch(Context context, List entities) async {
    Future<void> action(trx) async {
      final currentItems = await getItemMap(trx);
      for (final e in entities) {
        currentItems[e.id] = e;
      }
      final k = _updateCache(currentItems);

      final entityMaps = currentItems.values.map((e) => toMap(e)).toList();
      final all = <String, dynamic>{'items': entityMaps, 'k': k};
      await store.record('all').put(trx, all);
      await store.record('k').put(trx, {'k': k});
    }

    if (context is TransactionContext) {
      final trx = context.transaction;
      await action(trx);
      return;
    }

    await database.transaction((transaction) async {
      await action(transaction);
    });
  }

  @protected
  DatabaseClient getExecutor([Context? context]) {
    if (context is TransactionContext) return context.transaction;
    return database;
  }

  String _updateCache(Map<String, TEntity> entities, [String? k]) {
    k ??= DateTime.now().microsecondsSinceEpoch.toString();
    while (k == _k) {
      k = DateTime.now().microsecondsSinceEpoch.toString();
    }

    _cache = entities;
    _k = k!;
    return _k;
  }

  Future<Map<String, TEntity>> getItemMap(DatabaseClient txn) async {
    final km = await store.record('k').get(txn);
    final k = km?['k'] as String?;
    if (k == null) {
      _k = '';
      return _cache = {};
    }
    if (k == _k) {
      return _cache;
    }

    final all = await store.record('all').get(txn);
    final allItems = all?['items'] as List?;
    if (allItems == null) {
      _k = '';
      return _cache = {};
    }
    final allK = all?['k'] as String?;
    if (allK == null) {
      _k = '';
      return _cache = {};
    }

    final itemMaps = List<Map<String, dynamic>>.from(allItems);

    final entities = itemMaps.map((e) => fromMap(e)).toList();
    final entityMap = <String, TEntity>{
      for (final e in entities) getId(e): e,
    };
    _updateCache(entityMap, k);

    return _cache;
  }
}
