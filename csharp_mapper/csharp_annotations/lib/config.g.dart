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
          allowedKeys: const ['outPath', 'namespace'],
        );
        final val = Config(
          outPath: $checkedConvert(
              'outPath', (v) => v as String? ?? 'csharp/Model.cs'),
          namespace: $checkedConvert(
              'namespace', (v) => v as String? ?? '{package_name}'),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'outPath': instance.outPath,
      'namespace': instance.namespace,
    };
