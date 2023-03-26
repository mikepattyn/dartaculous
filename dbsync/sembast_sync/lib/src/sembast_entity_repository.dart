import 'package:dbsync/dbsync.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_sync/sembast_sync.dart';

class SembastEntityRepository<TEntity> extends SyncEntityRepository<TEntity> {
  SembastEntityRepository(
      {required super.syncHandler, required Database database})
      : super(localChangeHandler: SembastLocalChangeHandler(database));
}
