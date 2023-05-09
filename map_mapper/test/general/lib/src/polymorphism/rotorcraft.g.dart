// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotorcraft.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $RotorcraftMapMapper extends MapMapper<Rotorcraft> {
  const $RotorcraftMapMapper();
  static const $type = 'Rotorcraft';

  @override
  Rotorcraft fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case $type:
        throw UnimplementedError();
      case $HelicopterMapMapper.$type:
        return (const $HelicopterMapMapper()).fromMap(map);

      case $GyrocopterMapMapper.$type:
        return (const $GyrocopterMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(Rotorcraft instance) {
    if (instance is Helicopter) {
      return {
        '\$type': $HelicopterMapMapper.$type,
        ...const $HelicopterMapMapper().toMap(instance),
      };
    }

    if (instance is Gyrocopter) {
      return {
        '\$type': $GyrocopterMapMapper.$type,
        ...const $GyrocopterMapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'Rotorcraft';

    map['weight'] = instance.weight;
    map['serviceCeiling'] = instance.serviceCeiling.toString();
    map['key'] = instance.key;

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
  final String fieldName;
  final String prefix;

  $RotorcraftFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $RotorcraftFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _serviceCeiling = 'serviceCeiling';
  String get serviceCeiling => prefix + _serviceCeiling;
  static const _key = 'key';
  String get key => prefix + _key;

  @override
  String toString() => fieldName;
}
