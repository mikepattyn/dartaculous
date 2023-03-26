// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_change.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $LocalChangeMapMapper extends MapMapper<LocalChange> {
  const $LocalChangeMapMapper();
  static const $type = 'LocalChange';

  @override
  LocalChange fromMap(Map<String, dynamic> map) {
    return LocalChange(
      id: map['id'] as int,
      entityType: map['entityType'] as String,
      entityId: map['entityId'] as String,
      entityRev: map['entityRev'] as String,
      protoBytes: map['protoBytes'] as Uint8List,
      operation: map['operation'] is String
          ? ChangeOperation.values.firstWhere((v) => v.name == map['operation'])
          : ChangeOperation.values[map['operation'] as int],
    );
  }

  @override
  Map<String, dynamic> toMap(LocalChange instance) {
    final map = <String, dynamic>{};

    map['id'] = instance.id;
    map['entityType'] = instance.entityType;
    map['entityId'] = instance.entityId;
    map['entityRev'] = instance.entityRev;
    map['operation'] = instance.operation.index;
    map['protoBytes'] = instance.protoBytes;

    return map;
  }
}

extension $LocalChangeMapExtension on LocalChange {
  Map<String, dynamic> toMap() => const $LocalChangeMapMapper().toMap(this);
  static LocalChange fromMap(Map<String, dynamic> map) =>
      const $LocalChangeMapMapper().fromMap(map);
}

extension $MapLocalChangeExtension on Map<String, dynamic> {
  LocalChange toLocalChange() => const $LocalChangeMapMapper().fromMap(this);
}

class $LocalChangeFieldNames {
  final String fieldName;
  final String prefix;

  $LocalChangeFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $LocalChangeFieldNames()
      : fieldName = '',
        prefix = '';

  static const _id = 'id';
  String get id => prefix + _id;
  static const _entityType = 'entityType';
  String get entityType => prefix + _entityType;
  static const _entityId = 'entityId';
  String get entityId => prefix + _entityId;
  static const _entityRev = 'entityRev';
  String get entityRev => prefix + _entityRev;
  static const _operation = 'operation';
  String get operation => prefix + _operation;
  static const _protoBytes = 'protoBytes';
  String get protoBytes => prefix + _protoBytes;

  @override
  String toString() => fieldName;
}
