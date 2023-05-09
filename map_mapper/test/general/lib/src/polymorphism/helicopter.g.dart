// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helicopter.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $HelicopterMapMapper extends MapMapper<Helicopter> {
  const $HelicopterMapMapper();
  static const $type = 'Helicopter';

  @override
  Helicopter fromMap(Map<String, dynamic> map) {
    return Helicopter(
      weight: map['weight'] as int,
      serviceCeiling: Decimal.parse(map['serviceCeiling']),
      key: map['key'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Helicopter instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['serviceCeiling'] = instance.serviceCeiling.toString();
    map['key'] = instance.key;

    return map;
  }
}

extension $HelicopterMapExtension on Helicopter {
  Map<String, dynamic> toMap() => const $HelicopterMapMapper().toMap(this);
  static Helicopter fromMap(Map<String, dynamic> map) =>
      const $HelicopterMapMapper().fromMap(map);
}

extension $MapHelicopterExtension on Map<String, dynamic> {
  Helicopter toHelicopter() => const $HelicopterMapMapper().fromMap(this);
}

class $HelicopterFieldNames {
  final String fieldName;
  final String prefix;

  $HelicopterFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $HelicopterFieldNames()
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
