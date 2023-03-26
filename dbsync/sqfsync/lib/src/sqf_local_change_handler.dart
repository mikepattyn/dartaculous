import 'dart:typed_data';

import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqfsync/sqfsync.dart';

class SqfLocalChangeHandler implements LocalChangeHandler {
  final Database database;
  SqfLocalChangeHandler(this.database);

  @override
  Future<void> clearAllLocalChanges(Context ctx) async {
    final executor = _getExecutor(ctx);
    await executor.delete(localChangesTableName);
  }

  @override
  Future<void> deleteLocalChange(
      Context context, LocalChange localChange) async {
    final executor = _getExecutor(context);
    await executor.execute(
        'delete from $localChangesTableName where id = ?', [localChange.id]);
  }

  @override
  Future<String?> getLastReceivedChangeId() async {
    final executor = _getExecutor();
    final result = await executor.rawQuery(
        'select lastReceivedChangeId from $syncStateTableName lsc limit 1;');
    if (result.isEmpty) return null;
    final id = result.first.values.first as String?;
    return id;
  }

  @override
  Future<List<LocalChange>> getLocalChanges() async {
    final executor = _getExecutor();
    final lst =
        (await executor.query(localChangesTableName, orderBy: 'id desc'))
            .map((e) => LocalChange(
                id: e['id'] as int,
                entityType: e['entity_type'] as String,
                entityId: e['entity_id'] as String,
                entityRev: e['entity_rev'] as String,
                operation: ChangeOperation.values[e['operation'] as int],
                protoBytes: e['proto'] as Uint8List))
            .toList();
    return lst;
  }

  @override
  Future<void> insertLocalChange(Context context, LocalChange change) async {
    final executor = _getExecutor(context);
    await executor.execute(
        'delete from $localChangesTableName where entity_id = ? and entity_rev = ?',
        [
          change.entityId,
          change.entityRev,
        ]);
    await executor.insert(localChangesTableName, {
      'operation': change.operation.index,
      'entity_type': change.entityType,
      'entity_id': change.entityId,
      'entity_rev': change.entityRev,
      'proto': change.protoBytes,
    });
  }

  @override
  Future<void> setLastReceivedChangeId(Context ctx, String? id) async {
    final executor = _getExecutor(ctx);
    await executor.execute('''
INSERT INTO $syncStateTableName (id, lastReceivedChangeId) VALUES(1, ?)
ON CONFLICT(id) DO UPDATE SET lastReceivedChangeId = ?;
    ''', [id, id]);
  }

  @override
  Future<void> transaction(
      Future<void> Function(Context context) action) async {
    await database.transaction(
      (txn) async {
        final ctx = TransactionContext(txn);
        await action(ctx);
      },
    );
  }

  DatabaseExecutor _getExecutor([Context? context]) {
    if (context is TransactionContext) return context.transaction;
    return database;
  }
}
