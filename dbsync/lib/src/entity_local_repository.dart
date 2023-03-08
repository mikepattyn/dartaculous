import 'dart:typed_data';
import 'package:sqflite_common/sqlite_api.dart';

mixin EntityLocalRepository<TEntity> {
  String getId(TEntity entity);

  Uint8List marshal(TEntity entity);

  TEntity unmarshal(Uint8List entityBytes);

  String get tableName;

  Future<void> deleteLocal(DatabaseExecutor executor, String id) async {
    await executor.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<TEntity> getLocal(DatabaseExecutor executor, String id) async {
    final q = await executor.query(tableName, where: 'id = ?', whereArgs: [id]);
    if (q.isEmpty) throw 'Not found';
    final ret = unmarshal(q.first['proto'] as Uint8List);
    return ret;
  }

  Map<String, Object?> mapCustomFields(TEntity entity) => {};

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
