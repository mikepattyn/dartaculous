import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqfsync/sqfsync.dart';

class LocalChangesSchema extends LocalEntitySchema {
  @override
  FutureOr<void> onCreate(Database db, int version) async {
    await db.execute(localChangesTableSchema);
    await db.execute(syncStateSchema);
  }
}

const localChangesTableName = 'local_changes';
const syncStateTableName = 'sync_state';


const localChangesTableSchema = '''
CREATE TABLE $localChangesTableName 
(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
  operation INTEGER NOT NULL, 
  entity_type TEXT NOT NULL, 
  entity_id TEXT NOT NULL, 
  entity_rev TEXT NOT NULL, 
  proto BLOB NULL
);
''';

const syncStateSchema = '''
    CREATE TABLE $syncStateTableName (id INT PRIMARY KEY NOT NULL, lastReceivedChangeId TEXT NULL);
    ''';
