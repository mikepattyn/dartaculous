// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:proto_annotations/src/annotations/proto_field.dart';

part 'config.g.dart';

@JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Config {
  final bool useWellKnownWrappers;
  final bool useWellKnownTimestamp;
  final bool useWellKnownDuration;
  final bool useProtoFieldNamingConventions;
  final String packageName;
  final List<String> options;
  final String prefix;
  final String wellKnownDurationType;
  final String wellKnownTimestampType;
  final IntPrecision defaultIntPrecision;
  final String outProtoPath;

  Config({
    this.useWellKnownWrappers = false,
    this.useWellKnownDuration = false,
    this.useWellKnownTimestamp = false,
    this.useProtoFieldNamingConventions = true,
    this.packageName = '',
    this.options = const [],
    this.prefix = 'G',
    this.wellKnownDurationType = r'$Duration',
    this.wellKnownTimestampType = r'$Timestamp',
    this.defaultIntPrecision = IntPrecision.int32,
    this.outProtoPath = 'proto/model.proto',
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
