// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Config',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'useWellKnownTypes',
            'useProtoFieldNamingConventions',
            'packageName',
            'options',
            'prefix',
            'wellKnownDurationType',
            'wellKnownTimestampType',
            'defaultIntPrecision'
          ],
        );
        final val = Config(
          useWellKnownTypes:
              $checkedConvert('useWellKnownTypes', (v) => v as bool? ?? false),
          useProtoFieldNamingConventions: $checkedConvert(
              'useProtoFieldNamingConventions', (v) => v as bool? ?? true),
          packageName:
              $checkedConvert('packageName', (v) => v as String? ?? ''),
          options: $checkedConvert(
              'options',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          prefix: $checkedConvert('prefix', (v) => v as String? ?? 'G'),
          wellKnownDurationType: $checkedConvert(
              'wellKnownDurationType', (v) => v as String? ?? r'$Duration'),
          wellKnownTimestampType: $checkedConvert(
              'wellKnownTimestampType', (v) => v as String? ?? r'$Timestamp'),
          defaultIntPrecision: $checkedConvert(
              'defaultIntPrecision',
              (v) =>
                  $enumDecodeNullable(_$IntPrecisionEnumMap, v) ??
                  IntPrecision.int32),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'useWellKnownTypes': instance.useWellKnownTypes,
      'useProtoFieldNamingConventions': instance.useProtoFieldNamingConventions,
      'packageName': instance.packageName,
      'options': instance.options,
      'prefix': instance.prefix,
      'wellKnownDurationType': instance.wellKnownDurationType,
      'wellKnownTimestampType': instance.wellKnownTimestampType,
      'defaultIntPrecision':
          _$IntPrecisionEnumMap[instance.defaultIntPrecision]!,
    };

const _$IntPrecisionEnumMap = {
  IntPrecision.int32: 'int32',
  IntPrecision.int64: 'int64',
};
