// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balloon.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $BalloonMapMapper extends MapMapper<Balloon> {
  const $BalloonMapMapper();
  static const $type = 'Balloon';

  @override
  Balloon fromMap(Map<String, dynamic> map) {
    return Balloon(
      serviceCeiling: Decimal.parse(map['serviceCeiling']),
      weight: map['weight'] as int,
      key: map['key'] as String,
    );
  }

  @override
  Map<String, dynamic> toMap(Balloon instance) {
    final map = <String, dynamic>{};

    map['serviceCeiling'] = instance.serviceCeiling.toString();
    map['weight'] = instance.weight;
    map['key'] = instance.key;

    return map;
  }
}

extension $BalloonMapExtension on Balloon {
  Map<String, dynamic> toMap() => const $BalloonMapMapper().toMap(this);
  static Balloon fromMap(Map<String, dynamic> map) =>
      const $BalloonMapMapper().fromMap(map);
}

extension $MapBalloonExtension on Map<String, dynamic> {
  Balloon toBalloon() => const $BalloonMapMapper().fromMap(this);
}

class $BalloonFieldNames {
  final String fieldName;
  final String prefix;

  $BalloonFieldNames.sub(this.fieldName) : prefix = '$fieldName.';

  const $BalloonFieldNames()
      : fieldName = '',
        prefix = '';

  static const _serviceCeiling = 'serviceCeiling';
  String get serviceCeiling => prefix + _serviceCeiling;
  static const _weight = 'weight';
  String get weight => prefix + _weight;
  static const _key = 'key';
  String get key => prefix + _key;

  @override
  String toString() => fieldName;
}
