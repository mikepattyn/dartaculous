import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

abstract class SembastSynchonizer extends Synchronizer {
  SembastSynchonizer({
    required Database database,
    required super.typeHandlers,
  }) : super(localDatabase: SembastLocalChangeHandler(database));
}
