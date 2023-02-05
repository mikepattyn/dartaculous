// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'config.g.dart';

@JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
)
class Config {
  final String outPath;
  final String namespace;

  Config({
    this.outPath = 'csharp/Model.cs',
    this.namespace = '{package_name}',
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
