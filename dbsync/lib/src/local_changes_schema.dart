import 'dart:async';

import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';

class LocalChangesSchema extends LocalEntitySchema {
  @override
  FutureOr<void> onCreate(Database db, int version) async {
    await db.execute(localChangesTableSchema);
    await db.execute(syncStateSchema);
  }
}
