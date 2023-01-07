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
            'keyHandlerType',
            'durationPrecision',
            'dateTimeRepresentation'
          ],
        );
        final val = Config(
          keyHandlerType: $checkedConvert(
              'keyHandlerType', (v) => v as String? ?? 'DefaultKeyHandler'),
          durationPrecision: $checkedConvert(
              'durationPrecision',
              (v) =>
                  $enumDecodeNullable(_$TimePrecisionEnumMap, v) ??
                  TimePrecision.microseconds),
          dateTimeRepresentation: $checkedConvert(
              'dateTimeRepresentation',
              (v) =>
                  $enumDecodeNullable(_$DateTimeRepresentationEnumMap, v) ??
                  DateTimeRepresentation.microsecondsSinceEpoch),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'keyHandlerType': instance.keyHandlerType,
      'durationPrecision': _$TimePrecisionEnumMap[instance.durationPrecision]!,
      'dateTimeRepresentation':
          _$DateTimeRepresentationEnumMap[instance.dateTimeRepresentation]!,
    };

const _$TimePrecisionEnumMap = {
  TimePrecision.milliseconds: 'milliseconds',
  TimePrecision.microseconds: 'microseconds',
};

const _$DateTimeRepresentationEnumMap = {
  DateTimeRepresentation.iso8601String: 'iso8601String',
  DateTimeRepresentation.millisecondsSinceEpoch: 'millisecondsSinceEpoch',
  DateTimeRepresentation.microsecondsSinceEpoch: 'microsecondsSinceEpoch',
  DateTimeRepresentation.dateTime: 'dateTime',
};
