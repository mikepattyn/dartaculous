///
//  Generated code. Do not modify.
//  source: prefixes.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AFoodCategory extends $pb.ProtobufEnum {
  static const AFoodCategory A_FOOD_CATEGORY_VEGETABLES = AFoodCategory._(
      0,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'A_FOOD_CATEGORY_VEGETABLES');
  static const AFoodCategory A_FOOD_CATEGORY_MEAT = AFoodCategory._(
      1,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'A_FOOD_CATEGORY_MEAT');
  static const AFoodCategory A_FOOD_CATEGORY_OTHER = AFoodCategory._(
      2,
      $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'A_FOOD_CATEGORY_OTHER');

  static const $core.List<AFoodCategory> values = <AFoodCategory>[
    A_FOOD_CATEGORY_VEGETABLES,
    A_FOOD_CATEGORY_MEAT,
    A_FOOD_CATEGORY_OTHER,
  ];

  static final $core.Map<$core.int, AFoodCategory> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AFoodCategory? valueOf($core.int value) => _byValue[value];

  const AFoodCategory._($core.int v, $core.String n) : super(v, n);
}
