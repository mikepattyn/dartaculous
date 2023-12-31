// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gyrocopter.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $GyrocopterMapMapper extends MapMapper<Gyrocopter> {
  const $GyrocopterMapMapper();
  static const $type = 'Gyrocopter';

  @override
  Gyrocopter fromMap(Map<String, dynamic> map) {
    return Gyrocopter(
      weight: map['weight'] as int,
      serviceCeiling: Decimal.parse(map['serviceCeiling']),
      key: map['key'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Gyrocopter instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['serviceCeiling'] = instance.serviceCeiling.toString();
    map['key'] = instance.key;

    return map;
  }
}

extension $GyrocopterMapExtension on Gyrocopter {
  Map<String, dynamic> toMap() => const $GyrocopterMapMapper().toMap(this);
  static Gyrocopter fromMap(Map<String, dynamic> map) =>
      const $GyrocopterMapMapper().fromMap(map);
}

extension $MapGyrocopterExtension on Map<String, dynamic> {
  Gyrocopter toGyrocopter() => const $GyrocopterMapMapper().fromMap(this);
}

class $GyrocopterFieldNames {
  final String fieldName;
  final String prefix;

  $GyrocopterFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $GyrocopterFieldNames()
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
