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
            'packageName',
            'options',
            'prefix'
          ],
        );
        final val = Config(
          useWellKnownTypes:
              $checkedConvert('useWellKnownTypes', (v) => v as bool? ?? false),
          packageName:
              $checkedConvert('packageName', (v) => v as String? ?? ''),
          options: $checkedConvert(
              'options',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          prefix: $checkedConvert('prefix', (v) => v as String? ?? 'G'),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'useWellKnownTypes': instance.useWellKnownTypes,
      'packageName': instance.packageName,
      'options': instance.options,
      'prefix': instance.prefix,
    };
