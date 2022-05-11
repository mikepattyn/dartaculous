// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $VehicleMapMapper extends MapMapper<Vehicle> {
  const $VehicleMapMapper();
  static const $type = 'Vehicle';

  @override
  Vehicle fromMap(Map<String, dynamic> map) {
    final type = map['\$type'] as String?;
    switch (type) {
      case null:
      case $type:
        return _fromMap(map);
      case $CarMapMapper.$type:
        return (const $CarMapMapper()).fromMap(map);

      case $AirplaneMapMapper.$type:
        return (const $AirplaneMapMapper()).fromMap(map);

      case $HelicopterMapMapper.$type:
        return (const $HelicopterMapMapper()).fromMap(map);

      case $GyrocopterMapMapper.$type:
        return (const $GyrocopterMapMapper()).fromMap(map);

      case $BalloonMapMapper.$type:
        return (const $BalloonMapMapper()).fromMap(map);

      default:
        throw UnimplementedError();
    }
  }

  Vehicle _fromMap(Map<String, dynamic> map) {
    return Vehicle(
      weight: map['weight'] as int,
    );
  }

  @override
  Map<String, dynamic> toMap(Vehicle instance) {
    if (instance is Car) {
      return {
        '\$type': $CarMapMapper.$type,
        ...const $CarMapMapper().toMap(instance),
      };
    }

    if (instance is Airplane) {
      return {
        '\$type': $AirplaneMapMapper.$type,
        ...const $AirplaneMapMapper().toMap(instance),
      };
    }

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

    if (instance is Balloon) {
      return {
        '\$type': $BalloonMapMapper.$type,
        ...const $BalloonMapMapper().toMap(instance),
      };
    }

    final map = <String, dynamic>{};

    map['\$type'] = 'Vehicle';

    map['weight'] = instance.weight;

    return map;
  }
}

extension $VehicleMapExtension on Vehicle {
  Map<String, dynamic> toMap() => const $VehicleMapMapper().toMap(this);
  static Vehicle fromMap(Map<String, dynamic> map) =>
      const $VehicleMapMapper().fromMap(map);
}

extension $MapVehicleExtension on Map<String, dynamic> {
  Vehicle toVehicle() => const $VehicleMapMapper().fromMap(this);
}

class $VehicleFieldNames {
  final String fieldName;
  final String prefix;

  $VehicleFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $VehicleFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;

  @override
  String toString() => fieldName;
}
