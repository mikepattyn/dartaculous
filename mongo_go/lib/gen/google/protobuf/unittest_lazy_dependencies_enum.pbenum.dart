///
//  Generated code. Do not modify.
//  source: google/protobuf/unittest_lazy_dependencies_enum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LazyEnum extends $pb.ProtobufEnum {
  static const LazyEnum LAZY_ENUM_0 = LazyEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LAZY_ENUM_0');
  static const LazyEnum LAZY_ENUM_1 = LazyEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LAZY_ENUM_1');

  static const $core.List<LazyEnum> values = <LazyEnum> [
    LAZY_ENUM_0,
    LAZY_ENUM_1,
  ];

  static final $core.Map<$core.int, LazyEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LazyEnum? valueOf($core.int value) => _byValue[value];

  const LazyEnum._($core.int v, $core.String n) : super(v, n);
}

