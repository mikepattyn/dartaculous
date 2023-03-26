import 'dart:async';
import 'dart:typed_data';

import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqfsync/sqfsync.dart';

mixin SqfLocalRepository<TEntity> on SyncTypeHandler<TEntity> {
  String get tableName;
  Database get database;

  @override
  Future<void> deleteLocal(Context context, String id) async {
    final executor = _getExecutor(context);
    await executor.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<TEntity> getLocal(String id) async {
    final executor = _getExecutor();
    final q = await executor.query(tableName, where: 'id = ?', whereArgs: [id]);
    if (q.isEmpty) throw 'Not found';
    final ret = unmarshal(q.first['proto'] as Uint8List);
    return ret;
  }

  @override
  FutureOr<void> clearAllLocal(Context context) async {
    final executor = _getExecutor(context);
    await executor.delete(tableName);
  }

  Map<String, Object?> mapCustomFields(TEntity entity) => {};

  @override
  Future<void> upsertLocal(Context context, TEntity entity) async {
    final executor = _getExecutor(context);
    await executor.insert(
      tableName,
      {
        'id': getId(entity),
        'proto': marshal(entity),
        ...mapCustomFields(entity)
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  DatabaseExecutor _getExecutor([Context? context]) {
    if (context is TransactionContext) return context.transaction;
    return database;
  }
}
