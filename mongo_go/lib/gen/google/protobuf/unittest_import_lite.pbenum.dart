///
//  Generated code. Do not modify.
//  source: google/protobuf/unittest_import_lite.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ImportEnumLite extends $pb.ProtobufEnum {
  static const ImportEnumLite IMPORT_LITE_FOO = ImportEnumLite._(
      7,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IMPORT_LITE_FOO');
  static const ImportEnumLite IMPORT_LITE_BAR = ImportEnumLite._(
      8,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IMPORT_LITE_BAR');
  static const ImportEnumLite IMPORT_LITE_BAZ = ImportEnumLite._(
      9,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'IMPORT_LITE_BAZ');

  static const $core.List<ImportEnumLite> values = <ImportEnumLite>[
    IMPORT_LITE_FOO,
    IMPORT_LITE_BAR,
    IMPORT_LITE_BAZ,
  ];

  static final $core.Map<$core.int, ImportEnumLite> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ImportEnumLite? valueOf($core.int value) => _byValue[value];

  const ImportEnumLite._($core.int v, $core.String n) : super(v, n);
}
