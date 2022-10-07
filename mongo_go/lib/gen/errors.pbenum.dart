///
//  Generated code. Do not modify.
//  source: errors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorType extends $pb.ProtobufEnum {
  static const ErrorType unspecified = ErrorType._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'unspecified');
  static const ErrorType duplicate_key = ErrorType._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'duplicate_key');
  static const ErrorType network = ErrorType._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'network');
  static const ErrorType timeout = ErrorType._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'timeout');
  static const ErrorType no_documents = ErrorType._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'no_documents');

  static const $core.List<ErrorType> values = <ErrorType>[
    unspecified,
    duplicate_key,
    network,
    timeout,
    no_documents,
  ];

  static final $core.Map<$core.int, ErrorType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ErrorType? valueOf($core.int value) => _byValue[value];

  const ErrorType._($core.int v, $core.String n) : super(v, n);
}
