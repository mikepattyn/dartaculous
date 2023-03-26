// import 'dart:async';
// import 'dart:typed_data';

// import 'package:sqflite_common/sqlite_api.dart';
// import 'package:dbsync/dbsync.dart';

// const localChangesTableName = 'local_changes';
// const syncStateTableName = 'sync_state';

// const localChangesTableSchema = '''
// CREATE TABLE $localChangesTableName 
// (
//   id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
//   operation INTEGER NOT NULL, 
//   entity_type TEXT NOT NULL, 
//   entity_id TEXT NOT NULL, 
//   entity_rev TEXT NOT NULL, 
//   proto BLOB NULL
// );
// ''';

// const syncStateSchema = '''
//     CREATE TABLE $syncStateTableName (id INT PRIMARY KEY NOT NULL, lastReceivedChangeId TEXT NULL);
//     ''';

// class SyncLocalRepository {
//   static Future<void> insertChange(
//     DatabaseExecutor executor,
//     LocalChange change,
//   ) async {
//     if (executor is Database) {
//       executor.transaction((txn) async {
//         await _execute(txn, change);
//       });
//     } else {
//       await _execute(executor, change);
//     }
//   }

//   static Future<void> _execute(
//       DatabaseExecutor executor, LocalChange change) async {
//     await executor.execute(
//         'delete from $localChangesTableName where entity_id = ? and entity_rev = ?',
//         [
//           change.entityId,
//           change.entityRev,
//         ]);
//     await executor.insert(localChangesTableName, {
//       'operation': change.operation.index,
//       'entity_type': change.entityType,
//       'entity_id': change.entityId,
//       'entity_rev': change.entityRev,
//       'proto': change.protoBytes,
//     });
//   }

//   static FutureOr<void> clearAll(DatabaseExecutor executor) async {
//     await executor.delete(localChangesTableName);
//   }

//   static FutureOr<void> deleteLocalChange(DatabaseExecutor executor, int id) {
//     executor.execute('delete from $localChangesTableName where id = ?', [id]);
//   }

//   static Future<List<LocalChange>> getLocalChanges(
//       DatabaseExecutor executor) async {
//     final lst =
//         (await executor.query(localChangesTableName, orderBy: 'id desc'))
//             .map((e) => LocalChange(
//                 id: e['id'] as int,
//                 entityType: e['entity_type'] as String,
//                 entityId: e['entity_id'] as String,
//                 entityRev: e['entity_rev'] as String,
//                 operation: ChangeOperation.values[e['operation'] as int],
//                 protoBytes: e['proto'] as Uint8List))
//             .toList();
//     return lst;
//   }

//   static Future<void> setLastReceivedChange(
//       DatabaseExecutor executor, String? id) async {
//     await executor.execute('''
// INSERT INTO $syncStateTableName (id, lastReceivedChangeId) VALUES(1, ?)
// ON CONFLICT(id) DO UPDATE SET lastReceivedChangeId = ?;
//     ''', [id, id]);
//   }

//   static Future<String?> getLastReceivedChangeId(
//       DatabaseExecutor executor) async {
//     final result = await executor.rawQuery(
//         'select lastReceivedChangeId from $syncStateTableName lsc limit 1;');
//     if (result.isEmpty) return null;
//     final id = result.first.values.first as String?;
//     return id;
//   }
// }
