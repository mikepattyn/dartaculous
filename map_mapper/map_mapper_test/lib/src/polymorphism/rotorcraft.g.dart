// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotorcraft.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $RotorcraftMapMapper extends MapMapper<Rotorcraft> {
  const $RotorcraftMapMapper();

  @override
  Rotorcraft fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case 'Rotorcraft':
        throw UnimplementedError();
      case 'Helicopter':
        return (const $HelicopterMapMapper()).fromMap(map);

      case 'Gyrocopter':
        return (const $GyrocopterMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(Rotorcraft instance) {
    if (instance is Helicopter) {
      return {
        '\$type': 'Helicopter',
        ...const $HelicopterMapMapper().toMap(instance),
      };
    }

    if (instance is Gyrocopter) {
      return {
        '\$type': 'Gyrocopter',
        ...const $GyrocopterMapMapper().toMap(instance),
      };
    }

    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    map['\$type'] = 'Rotorcraft';

    map['weight'] = instance.weight;
    map['serviceCeiling'] = instance.serviceCeiling.toString();
    $kh.keyToMap(map, instance.key, 'key');

    return map;
  }
}

extension $RotorcraftMapExtension on Rotorcraft {
  Map<String, dynamic> toMap() => const $RotorcraftMapMapper().toMap(this);
  static Rotorcraft fromMap(Map<String, dynamic> map) =>
      const $RotorcraftMapMapper().fromMap(map);
}

extension $MapRotorcraftExtension on Map<String, dynamic> {
  Rotorcraft toRotorcraft() => const $RotorcraftMapMapper().fromMap(this);
}

class $RotorcraftFieldNames {
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $RotorcraftFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $RotorcraftFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _serviceCeiling = 'serviceCeiling';
  String get serviceCeiling => prefix + _serviceCeiling;
  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);

  @override
  String toString() => fieldName;
}
