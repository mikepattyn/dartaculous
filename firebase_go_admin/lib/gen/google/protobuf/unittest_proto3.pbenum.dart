///
//  Generated code. Do not modify.
//  source: google/protobuf/unittest_proto3.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ForeignEnum extends $pb.ProtobufEnum {
  static const ForeignEnum FOREIGN_ZERO = ForeignEnum._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FOREIGN_ZERO');
  static const ForeignEnum FOREIGN_FOO = ForeignEnum._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FOREIGN_FOO');
  static const ForeignEnum FOREIGN_BAR = ForeignEnum._(
      5,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FOREIGN_BAR');
  static const ForeignEnum FOREIGN_BAZ = ForeignEnum._(
      6,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FOREIGN_BAZ');

  static const $core.List<ForeignEnum> values = <ForeignEnum>[
    FOREIGN_ZERO,
    FOREIGN_FOO,
    FOREIGN_BAR,
    FOREIGN_BAZ,
  ];

  static final $core.Map<$core.int, ForeignEnum> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ForeignEnum? valueOf($core.int value) => _byValue[value];

  const ForeignEnum._($core.int v, $core.String n) : super(v, n);
}

class TestAllTypes_NestedEnum extends $pb.ProtobufEnum {
  static const TestAllTypes_NestedEnum ZERO = TestAllTypes_NestedEnum._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'ZERO');
  static const TestAllTypes_NestedEnum FOO = TestAllTypes_NestedEnum._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FOO');
  static const TestAllTypes_NestedEnum BAR = TestAllTypes_NestedEnum._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'BAR');
  static const TestAllTypes_NestedEnum BAZ = TestAllTypes_NestedEnum._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'BAZ');
  static const TestAllTypes_NestedEnum NEG = TestAllTypes_NestedEnum._(
      -1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'NEG');

  static const $core.List<TestAllTypes_NestedEnum> values =
      <TestAllTypes_NestedEnum>[
    ZERO,
    FOO,
    BAR,
    BAZ,
    NEG,
  ];

  static final $core.Map<$core.int, TestAllTypes_NestedEnum> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static TestAllTypes_NestedEnum? valueOf($core.int value) => _byValue[value];

  const TestAllTypes_NestedEnum._($core.int v, $core.String n) : super(v, n);
}

class TestOneof2_NestedEnum extends $pb.ProtobufEnum {
  static const TestOneof2_NestedEnum UNKNOWN = TestOneof2_NestedEnum._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UNKNOWN');
  static const TestOneof2_NestedEnum FOO = TestOneof2_NestedEnum._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FOO');
  static const TestOneof2_NestedEnum BAR = TestOneof2_NestedEnum._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'BAR');
  static const TestOneof2_NestedEnum BAZ = TestOneof2_NestedEnum._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'BAZ');

  static const $core.List<TestOneof2_NestedEnum> values =
      <TestOneof2_NestedEnum>[
    UNKNOWN,
    FOO,
    BAR,
    BAZ,
  ];

  static final $core.Map<$core.int, TestOneof2_NestedEnum> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static TestOneof2_NestedEnum? valueOf($core.int value) => _byValue[value];

  const TestOneof2_NestedEnum._($core.int v, $core.String n) : super(v, n);
}
