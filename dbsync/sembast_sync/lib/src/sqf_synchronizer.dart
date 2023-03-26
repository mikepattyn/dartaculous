import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

abstract class SqfSynchonizer extends Synchronizer {
  SqfSynchonizer({
    required Database database,
    required super.typeHandlers,
  }) : super(localDatabase: SembastLocalChangeHandler(database));
}
