// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_host.dart';

// **************************************************************************
// MapMapGenerator
// **************************************************************************

class $ListsHostMapMapper extends MapMapper<ListsHost> {
  const $ListsHostMapMapper();
  static const $type = 'ListsHost';

  @override
  ListsHost fromMap(Map<String, dynamic> map) {
    return ListsHost(
      vbools: List<bool>.unmodifiable(map['vbools']),
      vstrings: List<String>.unmodifiable(map['vstrings']),
      vdurations: List<Duration>.unmodifiable(map['vdurations']),
      vdatetimes: List<DateTime>.unmodifiable(map['vdatetimes']),
      vdecimals: List<Decimal>.unmodifiable(map['vdecimals']),
      vints: List<int>.unmodifiable(map['vints']),
      vdoubles: List<double>.unmodifiable(map['vdoubles']),
      vapplianceTypes: List<ApplianceType>.unmodifiable(map['vapplianceTypes']
          .map((e) => const $ApplianceTypeMapMapper().fromMap(e))),
      nvbools: map['nvbools'] == null
          ? null
          : List<bool>.unmodifiable(map['nvbools']),
      nvstrings: map['nvstrings'] == null
          ? null
          : List<String>.unmodifiable(map['nvstrings']),
      nvdurations: map['nvdurations'] == null
          ? null
          : List<Duration>.unmodifiable(map['nvdurations']),
      nvdatetimes: map['nvdatetimes'] == null
          ? null
          : List<DateTime>.unmodifiable(map['nvdatetimes']),
      nvdecimals: map['nvdecimals'] == null
          ? null
          : List<Decimal>.unmodifiable(map['nvdecimals']),
      nvints:
          map['nvints'] == null ? null : List<int>.unmodifiable(map['nvints']),
      nvdoubles: map['nvdoubles'] == null
          ? null
          : List<double>.unmodifiable(map['nvdoubles']),
      nvapplianceTypes: map['nvapplianceTypes'] == null
          ? null
          : List<ApplianceType>.unmodifiable(map['nvapplianceTypes']
              .map((e) => const $ApplianceTypeMapMapper().fromMap(e))),
    );
  }

  @override
  Map<String, dynamic> toMap(ListsHost instance) {
    final map = <String, dynamic>{};

    map['vbools'] = instance.vbools;
    map['nvbools'] = instance.nvbools;
    map['vstrings'] = instance.vstrings;
    map['nvstrings'] = instance.nvstrings;
    map['vdurations'] = instance.vdurations;
    map['nvdurations'] = instance.nvdurations;
    map['vdatetimes'] = instance.vdatetimes;
    map['nvdatetimes'] = instance.nvdatetimes;
    map['vdecimals'] = instance.vdecimals;
    map['nvdecimals'] = instance.nvdecimals;
    map['vints'] = instance.vints;
    map['nvints'] = instance.nvints;
    map['vdoubles'] = instance.vdoubles;
    map['nvdoubles'] = instance.nvdoubles;
    map['vapplianceTypes'] = instance.vapplianceTypes
        .map((e) => const $ApplianceTypeMapMapper().toMap(e))
        .toList();
    map['nvapplianceTypes'] = instance.nvapplianceTypes == null
        ? null
        : instance.nvapplianceTypes!
            .map((e) => const $ApplianceTypeMapMapper().toMap(e))
            .toList();

    return map;
  }
}

extension $ListsHostMapExtension on ListsHost {
  Map<String, dynamic> toMap() => const $ListsHostMapMapper().toMap(this);
  static ListsHost fromMap(Map<String, dynamic> map) =>
      const $ListsHostMapMapper().fromMap(map);
}

extension $MapListsHostExtension on Map<String, dynamic> {
  ListsHost toListsHost() => const $ListsHostMapMapper().fromMap(this);
}

class $ListsHostFieldNames {
  final String fieldName;
  final String prefix;

  $ListsHostFieldNames.sub(this.fieldName) : prefix = fieldName + '.';

  const $ListsHostFieldNames()
      : fieldName = '',
        prefix = '';

  static const _vbools = 'vbools';
  String get vbools => prefix + _vbools;
  static const _nvbools = 'nvbools';
  String get nvbools => prefix + _nvbools;
  static const _vstrings = 'vstrings';
  String get vstrings => prefix + _vstrings;
  static const _nvstrings = 'nvstrings';
  String get nvstrings => prefix + _nvstrings;
  static const _vdurations = 'vdurations';
  String get vdurations => prefix + _vdurations;
  static const _nvdurations = 'nvdurations';
  String get nvdurations => prefix + _nvdurations;
  static const _vdatetimes = 'vdatetimes';
  String get vdatetimes => prefix + _vdatetimes;
  static const _nvdatetimes = 'nvdatetimes';
  String get nvdatetimes => prefix + _nvdatetimes;
  static const _vdecimals = 'vdecimals';
  String get vdecimals => prefix + _vdecimals;
  static const _nvdecimals = 'nvdecimals';
  String get nvdecimals => prefix + _nvdecimals;
  static const _vints = 'vints';
  String get vints => prefix + _vints;
  static const _nvints = 'nvints';
  String get nvints => prefix + _nvints;
  static const _vdoubles = 'vdoubles';
  String get vdoubles => prefix + _vdoubles;
  static const _nvdoubles = 'nvdoubles';
  String get nvdoubles => prefix + _nvdoubles;
  static const _vapplianceTypes = 'vapplianceTypes';
  String get vapplianceTypes => prefix + _vapplianceTypes;
  static const _nvapplianceTypes = 'nvapplianceTypes';
  String get nvapplianceTypes => prefix + _nvapplianceTypes;

  @override
  String toString() => fieldName;
}
