// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:dbsync/dbsync.dart';

export 'change_operation.dart';


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

  LocalChange copyWith({
    int? id,
    String? entityType,
    String? entityId,
    String? entityRev,
    ChangeOperation? operation,
    Uint8List? protoBytes,
  }) {
    return LocalChange(
      id: id ?? this.id,
      entityType: entityType ?? this.entityType,
      entityId: entityId ?? this.entityId,
      entityRev: entityRev ?? this.entityRev,
      operation: operation ?? this.operation,
      protoBytes: protoBytes ?? this.protoBytes,
    );
  }
}
