// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $AircraftMapMapper extends MapMapper<Aircraft> {
  const $AircraftMapMapper();

  @override
  Aircraft fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case 'Aircraft':
        throw UnimplementedError();
      case 'Airplane':
        return (const $AirplaneMapMapper()).fromMap(map);

      case 'Helicopter':
        return (const $HelicopterMapMapper()).fromMap(map);

      case 'Gyrocopter':
        return (const $GyrocopterMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  @override
  Map<String, dynamic> toMap(Aircraft instance) {
    if (instance is Airplane) {
      return {
        '\$type': 'Airplane',
        ...const $AirplaneMapMapper().toMap(instance),
      };
    }

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

    final map = <String, dynamic>{};

    map['\$type'] = 'Aircraft';

    map['weight'] = instance.weight;
    map['serviceCeiling'] = instance.serviceCeiling.toString();

    return map;
  }
}

extension $AircraftMapExtension on Aircraft {
  Map<String, dynamic> toMap() => const $AircraftMapMapper().toMap(this);
  static Aircraft fromMap(Map<String, dynamic> map) =>
      const $AircraftMapMapper().fromMap(map);
}

extension $MapAircraftExtension on Map<String, dynamic> {
  Aircraft toAircraft() => const $AircraftMapMapper().fromMap(this);
}

class $AircraftFieldNames {
  final String fieldName;
  final String prefix;

  $AircraftFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $AircraftFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _serviceCeiling = 'serviceCeiling';
  String get serviceCeiling => prefix + _serviceCeiling;

  @override
  String toString() => fieldName;
}
