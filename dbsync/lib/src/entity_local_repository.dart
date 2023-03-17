import 'dart:async';
import 'dart:typed_data';
import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';

mixin EntityLocalRepository<TEntity> on SyncTypeHandler<TEntity> {
  String get tableName;

  @override
  Future<void> deleteLocal(DatabaseExecutor executor, String id) async {
    await executor.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<TEntity> getLocal(DatabaseExecutor executor, String id) async {
    final q = await executor.query(tableName, where: 'id = ?', whereArgs: [id]);
    if (q.isEmpty) throw 'Not found';
    final ret = unmarshal(q.first['proto'] as Uint8List);
    return ret;
  }

  @override
  FutureOr<void> clearAllLocal(DatabaseExecutor executor) async {
    await executor.delete(tableName);
  }

  Map<String, Object?> mapCustomFields(TEntity entity) => {};

  @override
  Future<void> upsertLocal(DatabaseExecutor transaction, TEntity entity) async {
    await transaction.insert(
      tableName,
      {
        'id': getId(entity),
        'proto': marshal(entity),
        ...mapCustomFields(entity)
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
