import 'dart:async';

import 'package:sqflite_common/sqlite_api.dart';

abstract class LocalEntitySchema {
  FutureOr<void> onCreate(Database db, int version) {}
  FutureOr<void> onUpgrade(Database db, int oldVersion, int newVersion) {}
}

mixin LocalEntitySchemaMixin implements LocalEntitySchema {
  String get tableName;

  /// Map containing extra fields needed to be stored in
  /// the table, where the key is the name of the field
  /// and the value is SQLite type.
  Map<String, String> get extraFields => {};

  @override
  FutureOr<void> onCreate(Database db, int version) async {
    final extra =
        extraFields.entries.map((e) => '  ${e.key} ${e.value},\n').join();

    final query = '''
CREATE TABLE $tableName (
  id TEXT PRIMARY KEY, 
$extra
  proto BLOB
);
''';
    await db.execute(query);
  }

  @override
  FutureOr<void> onUpgrade(Database db, int oldVersion, int newVersion) {}
}
