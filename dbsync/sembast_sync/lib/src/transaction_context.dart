import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';

class TransactionContext extends Context {
  final Transaction transaction;

  TransactionContext(this.transaction);
}
