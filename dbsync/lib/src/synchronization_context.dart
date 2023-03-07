import 'package:dbsync/dbsync.dart';

class SynchronizationContext {
  bool cancel = false;
  final conflicts = <LocalChange>[];
}
