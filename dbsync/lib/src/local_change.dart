export 'change_operation.dart';

import 'dart:typed_data';
import 'package:dbsync/dbsync.dart';

class LocalChange {
  final int id;
  final String entityType;
  final String entityId;
  final String entityRev;
  final ChangeOperation operation;
  final Uint8List protoBytes;

  LocalChange({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.entityRev,
    required this.protoBytes,
    required this.operation,
  });

  LocalChange.create({
    required Type entityType,
    required this.protoBytes,
    required this.entityId,
    required this.entityRev,
  })  : operation = ChangeOperation.create,
        entityType = entityType.toString(),
        id = -1;

  LocalChange.update({
    required Type entityType,
    required this.protoBytes,
    required this.entityId,
    required this.entityRev,
  })  : operation = ChangeOperation.update,
        entityType = entityType.toString(),
        id = -1;

  LocalChange.delete({
    required Type entityType,
    required this.entityId,
    required this.entityRev,
  })  : operation = ChangeOperation.delete,
        entityType = entityType.toString(),
        id = -1,
        protoBytes = Uint8List(0);
}
