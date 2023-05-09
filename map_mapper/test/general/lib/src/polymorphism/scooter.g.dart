// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scooter.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $ScooterMapMapper extends MapMapper<Scooter> {
  const $ScooterMapMapper();
  static const $type = 'Scooter';

  @override
  Scooter fromMap(Map<String, dynamic> map) {
    return Scooter(
      weight: map['weight'] as int,
      key: map['key'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Scooter instance) {
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    map['key'] = instance.key;

    return map;
  }
}

extension $ScooterMapExtension on Scooter {
  Map<String, dynamic> toMap() => const $ScooterMapMapper().toMap(this);
  static Scooter fromMap(Map<String, dynamic> map) =>
      const $ScooterMapMapper().fromMap(map);
}

extension $MapScooterExtension on Map<String, dynamic> {
  Scooter toScooter() => const $ScooterMapMapper().fromMap(this);
}

class $ScooterFieldNames {
  final String fieldName;
  final String prefix;

  $ScooterFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $ScooterFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _key = 'key';
  String get key => prefix + _key;

  @override
  String toString() => fieldName;
}
