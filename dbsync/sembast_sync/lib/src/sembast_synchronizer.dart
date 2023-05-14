import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

abstract class SembastSynchronizer extends Synchronizer {
  SembastSynchronizer({
    required Database database,
    required super.typeHandlers,
  }) : super(localDatabase: SembastLocalChangeHandler(database));
}
