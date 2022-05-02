// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airplane.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AirplaneMapMapper extends MapMapper<Airplane> {
  const $AirplaneMapMapper();

  @override
  Airplane fromMap(Map<String, dynamic> map) {
    return Airplane(
      serviceCeiling: Decimal.parse(map['serviceCeiling']),
      weight: map['weight'] as int,
      wingspan: map['wingspan'] as int,
    );
  }

  @override
  Map<String, dynamic> toMap(Airplane instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['serviceCeiling'] = instance.serviceCeiling.toString();
    map['wingspan'] = instance.wingspan;

    return map;
  }
}

extension $AirplaneMapExtension on Airplane {
  Map<String, dynamic> toMap() => const $AirplaneMapMapper().toMap(this);
  static Airplane fromMap(Map<String, dynamic> map) =>
      const $AirplaneMapMapper().fromMap(map);
}

extension $MapAirplaneExtension on Map<String, dynamic> {
  Airplane toAirplane() => const $AirplaneMapMapper().fromMap(this);
}

class $AirplaneFieldNames {
  final String fieldName;
  final String prefix;

  $AirplaneFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $AirplaneFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _serviceCeiling = 'serviceCeiling';
  String get serviceCeiling => prefix + _serviceCeiling;
  static const _wingspan = 'wingspan';
  String get wingspan => prefix + _wingspan;

  @override
  String toString() => fieldName;
}
