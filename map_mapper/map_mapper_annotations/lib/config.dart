import 'package:json_annotation/json_annotation.dart';

import 'map_mapper_annotations.dart';

part 'config.g.dart';

@JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Config {
  final String keyHandlerType;
  final TimePrecision durationPrecision;
  final DateTimeRepresentation dateTimeRepresentation;

  Config({
    this.keyHandlerType = '',
    this.durationPrecision = TimePrecision.microseconds,
    this.dateTimeRepresentation = DateTimeRepresentation.microsecondsSinceEpoch,
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
