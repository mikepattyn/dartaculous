import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqfsync/sqfsync.dart';

abstract class SqfSynchonizer extends Synchronizer {
  SqfSynchonizer({
    required Database database,
    required super.typeHandlers,
  }) : super(localDatabase: SqfLocalChangeHandler(database));
}
