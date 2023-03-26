import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqfsync/sqfsync.dart';

class SqfEntityRepository<TEntity> extends SyncEntityRepository<TEntity> {
  final Database database;
  SqfEntityRepository({required super.syncHandler, required this.database})
      : super(localChangeHandler: SqfLocalChangeHandler(database));
}
