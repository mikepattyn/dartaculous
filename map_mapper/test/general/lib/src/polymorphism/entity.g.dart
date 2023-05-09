// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $EntityMapMapper extends MapMapper<Entity> {
  const $EntityMapMapper();
  static const $type = 'Entity';

  @override
  Entity fromMap(Map<String, dynamic> map) {
    return Entity(
      key: map['key'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Entity instance) {
    final map = <String, dynamic>{};

    map['key'] = instance.key;

    return map;
  }
}

extension $EntityMapExtension on Entity {
  Map<String, dynamic> toMap() => const $EntityMapMapper().toMap(this);
  static Entity fromMap(Map<String, dynamic> map) =>
      const $EntityMapMapper().fromMap(map);
}

extension $MapEntityExtension on Map<String, dynamic> {
  Entity toEntity() => const $EntityMapMapper().fromMap(this);
}

class $EntityFieldNames {
  final String fieldName;
  final String prefix;

  $EntityFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $EntityFieldNames()
      : fieldName = '',
        prefix = '';

  static const _key = 'key';
  String get key => prefix + _key;

  @override
  String toString() => fieldName;
}
