export 'sync_delete_change.dart';
export 'sync_tracked_entity.dart';
export 'sync_upsert_change.dart';

abstract class SyncChange {
  String get id;
  DateTime get moment;
  String get entityType;
  String get changedId;
}
