// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:proto_annotations/src/annotations/proto_field.dart';

part 'config.g.dart';

@JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Config {
  final bool useWellKnownTypes;
  final bool useProtoFieldNamingConventions;
  final String packageName;
  final List<String> options;
  final String prefix;
  final String wellKnownDurationType;
  final String wellKnownTimestampType;
  final IntPrecision defaultIntPrecision;

  Config({
    this.useWellKnownTypes = false,
    this.useProtoFieldNamingConventions = true,
    this.packageName = '',
    this.options = const [],
    this.prefix = 'G',
    this.wellKnownDurationType = r'$GDuration',
    this.wellKnownTimestampType = 'Timestamp',
    this.defaultIntPrecision = IntPrecision.int32,
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}

void main(List<String> args) {
  final config = Config.fromJson({"defaultIntPrecision": "int64"});
  print(config.defaultIntPrecision);
}
