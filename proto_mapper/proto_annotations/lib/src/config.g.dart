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
          allowedKeys: const ['useWellKnownTypes', 'packageName'],
        );
        final val = Config(
          useWellKnownTypes:
              $checkedConvert('useWellKnownTypes', (v) => v as bool),
          packageName:
              $checkedConvert('packageName', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'useWellKnownTypes': instance.useWellKnownTypes,
      'packageName': instance.packageName,
    };
