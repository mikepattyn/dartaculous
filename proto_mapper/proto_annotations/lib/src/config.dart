// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

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

  Config({
    this.useWellKnownTypes = false,
    this.useProtoFieldNamingConventions = true,
    this.packageName = '',
    this.options = const [],
    this.prefix = 'G',
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
