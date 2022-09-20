///
//  Generated code. Do not modify.
//  source: google/protobuf/unittest_no_generic_services.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestEnum extends $pb.ProtobufEnum {
  static const TestEnum FOO = TestEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FOO');

  static const $core.List<TestEnum> values = <TestEnum> [
    FOO,
  ];

  static final $core.Map<$core.int, TestEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestEnum? valueOf($core.int value) => _byValue[value];

  const TestEnum._($core.int v, $core.String n) : super(v, n);
}

