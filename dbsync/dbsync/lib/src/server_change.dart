import 'dart:typed_data';

import 'package:dbsync/dbsync.dart';

import 'change_operation.dart';

class ServerChange {
  final String id;
  final DateTime moment;
  final String entityType;
  final String changedId;
  final ChangeOperation changeOperation;
  final Uint8List entity;

  const ServerChange({
    required this.id,
    required this.moment,
    required this.entityType,
    required this.changedId,
    required this.changeOperation,
    required this.entity,
  });
}
