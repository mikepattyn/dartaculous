import 'package:dbsync/dbsync.dart';
import 'package:sqflite_common/sqlite_api.dart';

class TransactionContext extends Context {
  final Transaction transaction;

  TransactionContext(this.transaction);
}
