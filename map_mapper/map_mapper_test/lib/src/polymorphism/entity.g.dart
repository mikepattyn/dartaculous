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
    final $kh = const DefaultKeyHandler();

    return Entity(
      key: $kh.keyFromMap(map, 'key'),
    );
  }

  @override
  Map<String, dynamic> toMap(Entity instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    $kh.keyToMap(map, instance.key, 'key');

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
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $EntityFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $EntityFieldNames()
      : fieldName = '',
        prefix = '';

  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);

  @override
  String toString() => fieldName;
}
