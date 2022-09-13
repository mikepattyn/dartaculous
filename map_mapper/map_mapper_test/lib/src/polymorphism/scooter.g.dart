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
    final $kh = const DefaultKeyHandler();

    return Scooter(
      weight: map['weight'] as int,
      key: $kh.keyFromMap(map, 'key'),
    );
  }

  @override
  Map<String, dynamic> toMap(Scooter instance) {
    final $kh = const DefaultKeyHandler();
    final map = <String, dynamic>{};

    map['weight'] = instance.weight;
    $kh.keyToMap(map, instance.key, 'key');

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
  final $kh = const DefaultKeyHandler();
  final String fieldName;
  final String prefix;

  $ScooterFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $ScooterFieldNames()
      : fieldName = '',
        prefix = '';

  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _key = 'key';
  String get key => prefix + $kh.fieldNameToMapKey(_key);

  @override
  String toString() => fieldName;
}
