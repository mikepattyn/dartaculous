import 'sync_change.dart';

abstract class SyncUpsertChange extends SyncChange {
  SyncTrackedEntity get entity;
}
