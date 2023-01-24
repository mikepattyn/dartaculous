export 'change_operation.dart';
export 'local_change_entity.dart';

import 'dart:typed_data';
import 'package:dbsync/dbsync.dart';

class LocalChange {
  final int id;
  final String entityType;
  final ChangeOperation operation;
  final LocalChangeEntity entity;

  LocalChange({
    required this.id,
    required this.entityType,
    required String entityId,
    required String entityRev,
    required Uint8List protoBytes,
    required this.operation,
  }) : entity = LocalChangeEntity(
          id: entityId,
          rev: entityRev,
          protoBytes: protoBytes,
        );

  LocalChange.create({
    required Type entityType,
    required this.entity,
  })  : operation = ChangeOperation.create,
        entityType = entityType.toString(),
        id = -1;

  LocalChange.update({
    required Type entityType,
    required this.entity,
  })  : operation = ChangeOperation.update,
        entityType = entityType.toString(),
        id = -1;

  LocalChange.delete({
    required Type entityType,
    required String entityId,
    required String entityRev,
  })  : operation = ChangeOperation.delete,
        entityType = entityType.toString(),
        entity = LocalChangeEntity(
            id: entityId, rev: entityRev, protoBytes: Uint8List(0)),
        id = -1;
}
