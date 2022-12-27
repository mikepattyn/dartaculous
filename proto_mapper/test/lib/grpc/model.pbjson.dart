///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gApplianceTypeDescriptor instead')
const GApplianceType$json = const {
  '1': 'GApplianceType',
  '2': const [
    const {'1': 'G_APPLIANCE_TYPE_HEAT', '2': 0},
    const {'1': 'G_APPLIANCE_TYPE_COLD', '2': 1},
    const {'1': 'G_APPLIANCE_TYPE_CUTLERY', '2': 2},
  ],
};

/// Descriptor for `GApplianceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gApplianceTypeDescriptor = $convert.base64Decode('Cg5HQXBwbGlhbmNlVHlwZRIZChVHX0FQUExJQU5DRV9UWVBFX0hFQVQQABIZChVHX0FQUExJQU5DRV9UWVBFX0NPTEQQARIcChhHX0FQUExJQU5DRV9UWVBFX0NVVExFUlkQAg==');
@$core.Deprecated('Use gRecipeTypesDescriptor instead')
const GRecipeTypes$json = const {
  '1': 'GRecipeTypes',
  '2': const [
    const {'1': 'G_RECIPE_TYPES_COOK', '2': 0},
    const {'1': 'G_RECIPE_TYPES_GRILL', '2': 1},
    const {'1': 'G_RECIPE_TYPES_FRY', '2': 2},
    const {'1': 'G_RECIPE_TYPES_STEW', '2': 3},
  ],
};

/// Descriptor for `GRecipeTypes`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gRecipeTypesDescriptor = $convert.base64Decode('CgxHUmVjaXBlVHlwZXMSFwoTR19SRUNJUEVfVFlQRVNfQ09PSxAAEhgKFEdfUkVDSVBFX1RZUEVTX0dSSUxMEAESFgoSR19SRUNJUEVfVFlQRVNfRlJZEAISFwoTR19SRUNJUEVfVFlQRVNfU1RFVxAD');
@$core.Deprecated('Use gKnifeTypeDescriptor instead')
const GKnifeType$json = const {
  '1': 'GKnifeType',
  '2': const [
    const {'1': 'G_KNIFE_TYPE_CHEFS_KNIFE', '2': 0},
    const {'1': 'G_KNIFE_TYPE_PARING_KNIFE', '2': 1},
    const {'1': 'G_KNIFE_TYPE_BREAD_KNIFE', '2': 2},
  ],
};

/// Descriptor for `GKnifeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gKnifeTypeDescriptor = $convert.base64Decode('CgpHS25pZmVUeXBlEhwKGEdfS05JRkVfVFlQRV9DSEVGU19LTklGRRAAEh0KGUdfS05JRkVfVFlQRV9QQVJJTkdfS05JRkUQARIcChhHX0tOSUZFX1RZUEVfQlJFQURfS05JRkUQAg==');
@$core.Deprecated('Use gChefTypeDescriptor instead')
const GChefType$json = const {
  '1': 'GChefType',
  '2': const [
    const {'1': 'G_CHEF_TYPE_SENIOR_CHEF', '2': 0},
    const {'1': 'G_CHEF_TYPE_SOUS_CHEF', '2': 1},
    const {'1': 'G_CHEF_TYPE_PASTRY_CHEF', '2': 2},
    const {'1': 'G_CHEF_TYPE_FISH_CHEF', '2': 3},
  ],
};

/// Descriptor for `GChefType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gChefTypeDescriptor = $convert.base64Decode('CglHQ2hlZlR5cGUSGwoXR19DSEVGX1RZUEVfU0VOSU9SX0NIRUYQABIZChVHX0NIRUZfVFlQRV9TT1VTX0NIRUYQARIbChdHX0NIRUZfVFlQRV9QQVNUUllfQ0hFRhACEhkKFUdfQ0hFRl9UWVBFX0ZJU0hfQ0hFRhAD');
@$core.Deprecated('Use int32ValueDescriptor instead')
const Int32Value$json = const {
  '1': 'Int32Value',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `Int32Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32ValueDescriptor = $convert.base64Decode('CgpJbnQzMlZhbHVlEhQKBXZhbHVlGAEgASgFUgV2YWx1ZQ==');
@$core.Deprecated('Use timestampDescriptor instead')
const Timestamp$json = const {
  '1': 'Timestamp',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    const {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Timestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampDescriptor = $convert.base64Decode('CglUaW1lc3RhbXASGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxIUCgVuYW5vcxgCIAEoBVIFbmFub3M=');
@$core.Deprecated('Use durationDescriptor instead')
const Duration$json = const {
  '1': 'Duration',
  '2': const [
    const {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    const {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Duration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List durationDescriptor = $convert.base64Decode('CghEdXJhdGlvbhIYCgdzZWNvbmRzGAEgASgDUgdzZWNvbmRzEhQKBW5hbm9zGAIgASgFUgVuYW5vcw==');
@$core.Deprecated('Use boolValueDescriptor instead')
const BoolValue$json = const {
  '1': 'BoolValue',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

/// Descriptor for `BoolValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolValueDescriptor = $convert.base64Decode('CglCb29sVmFsdWUSFAoFdmFsdWUYASABKAhSBXZhbHVl');
@$core.Deprecated('Use stringValueDescriptor instead')
const StringValue$json = const {
  '1': 'StringValue',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `StringValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringValueDescriptor = $convert.base64Decode('CgtTdHJpbmdWYWx1ZRIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');
@$core.Deprecated('Use gCalcParametersDescriptor instead')
const GCalcParameters$json = const {
  '1': 'GCalcParameters',
  '2': const [
    const {'1': 'parameter1', '3': 2, '4': 1, '5': 5, '10': 'parameter1'},
    const {'1': 'parameter2', '3': 1, '4': 1, '5': 5, '10': 'parameter2'},
    const {'1': 'parameter3', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.Int32Value', '10': 'parameter3'},
    const {'1': 'parameter5', '3': 9, '4': 1, '5': 5, '10': 'parameter5'},
  ],
};

/// Descriptor for `GCalcParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCalcParametersDescriptor = $convert.base64Decode('Cg9HQ2FsY1BhcmFtZXRlcnMSHgoKcGFyYW1ldGVyMRgCIAEoBVIKcGFyYW1ldGVyMRIeCgpwYXJhbWV0ZXIyGAEgASgFUgpwYXJhbWV0ZXIyEkUKCnBhcmFtZXRlcjMYAyABKAsyJS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkludDMyVmFsdWVSCnBhcmFtZXRlcjMSHgoKcGFyYW1ldGVyNRgJIAEoBVIKcGFyYW1ldGVyNQ==');
@$core.Deprecated('Use gListOfCalcParametersDescriptor instead')
const GListOfCalcParameters$json = const {
  '1': 'GListOfCalcParameters',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GCalcParameters', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCalcParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCalcParametersDescriptor = $convert.base64Decode('ChVHTGlzdE9mQ2FsY1BhcmFtZXRlcnMSQAoFaXRlbXMYASADKAsyKi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdDYWxjUGFyYW1ldGVyc1IFaXRlbXM=');
@$core.Deprecated('Use gCalcResultDescriptor instead')
const GCalcResult$json = const {
  '1': 'GCalcResult',
};

/// Descriptor for `GCalcResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCalcResultDescriptor = $convert.base64Decode('CgtHQ2FsY1Jlc3VsdA==');
@$core.Deprecated('Use gListOfCalcResultDescriptor instead')
const GListOfCalcResult$json = const {
  '1': 'GListOfCalcResult',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GCalcResult', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCalcResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCalcResultDescriptor = $convert.base64Decode('ChFHTGlzdE9mQ2FsY1Jlc3VsdBI8CgVpdGVtcxgBIAMoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NhbGNSZXN1bHRSBWl0ZW1z');
@$core.Deprecated('Use gCategoryDescriptor instead')
const GCategory$json = const {
  '1': 'GCategory',
};

/// Descriptor for `GCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCategoryDescriptor = $convert.base64Decode('CglHQ2F0ZWdvcnk=');
@$core.Deprecated('Use gListOfCategoryDescriptor instead')
const GListOfCategory$json = const {
  '1': 'GListOfCategory',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GCategory', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCategoryDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQ2F0ZWdvcnkSOgoFaXRlbXMYASADKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdDYXRlZ29yeVIFaXRlbXM=');
@$core.Deprecated('Use gComponentDescriptor instead')
const GComponent$json = const {
  '1': 'GComponent',
};

/// Descriptor for `GComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gComponentDescriptor = $convert.base64Decode('CgpHQ29tcG9uZW50');
@$core.Deprecated('Use gListOfComponentDescriptor instead')
const GListOfComponent$json = const {
  '1': 'GListOfComponent',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GComponent', '10': 'items'},
  ],
};

/// Descriptor for `GListOfComponent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfComponentDescriptor = $convert.base64Decode('ChBHTGlzdE9mQ29tcG9uZW50EjsKBWl0ZW1zGAEgAygLMiUuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQ29tcG9uZW50UgVpdGVtcw==');
@$core.Deprecated('Use gConstructObject1Descriptor instead')
const GConstructObject1$json = const {
  '1': 'GConstructObject1',
};

/// Descriptor for `GConstructObject1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject1Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0MQ==');
@$core.Deprecated('Use gListOfConstructObject1Descriptor instead')
const GListOfConstructObject1$json = const {
  '1': 'GListOfConstructObject1',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject1', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject1Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0MRJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDFSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject2Descriptor instead')
const GConstructObject2$json = const {
  '1': 'GConstructObject2',
};

/// Descriptor for `GConstructObject2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject2Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0Mg==');
@$core.Deprecated('Use gListOfConstructObject2Descriptor instead')
const GListOfConstructObject2$json = const {
  '1': 'GListOfConstructObject2',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject2', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject2Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0MhJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDJSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject3Descriptor instead')
const GConstructObject3$json = const {
  '1': 'GConstructObject3',
};

/// Descriptor for `GConstructObject3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject3Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0Mw==');
@$core.Deprecated('Use gListOfConstructObject3Descriptor instead')
const GListOfConstructObject3$json = const {
  '1': 'GListOfConstructObject3',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject3', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject3Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0MxJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDNSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject4Descriptor instead')
const GConstructObject4$json = const {
  '1': 'GConstructObject4',
};

/// Descriptor for `GConstructObject4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject4Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0NA==');
@$core.Deprecated('Use gListOfConstructObject4Descriptor instead')
const GListOfConstructObject4$json = const {
  '1': 'GListOfConstructObject4',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject4', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject4`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject4Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0NBJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDRSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject5Descriptor instead')
const GConstructObject5$json = const {
  '1': 'GConstructObject5',
};

/// Descriptor for `GConstructObject5`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject5Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0NQ==');
@$core.Deprecated('Use gListOfConstructObject5Descriptor instead')
const GListOfConstructObject5$json = const {
  '1': 'GListOfConstructObject5',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject5', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject5`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject5Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0NRJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDVSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject6Descriptor instead')
const GConstructObject6$json = const {
  '1': 'GConstructObject6',
};

/// Descriptor for `GConstructObject6`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject6Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0Ng==');
@$core.Deprecated('Use gListOfConstructObject6Descriptor instead')
const GListOfConstructObject6$json = const {
  '1': 'GListOfConstructObject6',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject6', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject6`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject6Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0NhJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDZSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject7Descriptor instead')
const GConstructObject7$json = const {
  '1': 'GConstructObject7',
};

/// Descriptor for `GConstructObject7`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject7Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0Nw==');
@$core.Deprecated('Use gListOfConstructObject7Descriptor instead')
const GListOfConstructObject7$json = const {
  '1': 'GListOfConstructObject7',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject7', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject7`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject7Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0NxJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDdSBWl0ZW1z');
@$core.Deprecated('Use gConstructObject8Descriptor instead')
const GConstructObject8$json = const {
  '1': 'GConstructObject8',
};

/// Descriptor for `GConstructObject8`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstructObject8Descriptor = $convert.base64Decode('ChFHQ29uc3RydWN0T2JqZWN0OA==');
@$core.Deprecated('Use gListOfConstructObject8Descriptor instead')
const GListOfConstructObject8$json = const {
  '1': 'GListOfConstructObject8',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstructObject8', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstructObject8`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstructObject8Descriptor = $convert.base64Decode('ChdHTGlzdE9mQ29uc3RydWN0T2JqZWN0OBJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NvbnN0cnVjdE9iamVjdDhSBWl0ZW1z');
@$core.Deprecated('Use gEmptyDescriptor instead')
const GEmpty$json = const {
  '1': 'GEmpty',
};

/// Descriptor for `GEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEmptyDescriptor = $convert.base64Decode('CgZHRW1wdHk=');
@$core.Deprecated('Use gListOfEmptyDescriptor instead')
const GListOfEmpty$json = const {
  '1': 'GListOfEmpty',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GEmpty', '10': 'items'},
  ],
};

/// Descriptor for `GListOfEmpty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfEmptyDescriptor = $convert.base64Decode('CgxHTGlzdE9mRW1wdHkSNwoFaXRlbXMYASADKAsyIS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdFbXB0eVIFaXRlbXM=');
@$core.Deprecated('Use gEncapsulatedFieldsClassDescriptor instead')
const GEncapsulatedFieldsClass$json = const {
  '1': 'GEncapsulatedFieldsClass',
  '2': const [
    const {'1': 'final_string', '3': 1, '4': 1, '5': 9, '10': 'finalString'},
  ],
};

/// Descriptor for `GEncapsulatedFieldsClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEncapsulatedFieldsClassDescriptor = $convert.base64Decode('ChhHRW5jYXBzdWxhdGVkRmllbGRzQ2xhc3MSIQoMZmluYWxfc3RyaW5nGAEgASgJUgtmaW5hbFN0cmluZw==');
@$core.Deprecated('Use gListOfEncapsulatedFieldsClassDescriptor instead')
const GListOfEncapsulatedFieldsClass$json = const {
  '1': 'GListOfEncapsulatedFieldsClass',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GEncapsulatedFieldsClass', '10': 'items'},
  ],
};

/// Descriptor for `GListOfEncapsulatedFieldsClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfEncapsulatedFieldsClassDescriptor = $convert.base64Decode('Ch5HTGlzdE9mRW5jYXBzdWxhdGVkRmllbGRzQ2xhc3MSSQoFaXRlbXMYASADKAsyMy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdFbmNhcHN1bGF0ZWRGaWVsZHNDbGFzc1IFaXRlbXM=');
@$core.Deprecated('Use gIngredientDescriptor instead')
const GIngredient$json = const {
  '1': 'GIngredient',
};

/// Descriptor for `GIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gIngredientDescriptor = $convert.base64Decode('CgtHSW5ncmVkaWVudA==');
@$core.Deprecated('Use gListOfIngredientDescriptor instead')
const GListOfIngredient$json = const {
  '1': 'GListOfIngredient',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GIngredient', '10': 'items'},
  ],
};

/// Descriptor for `GListOfIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfIngredientDescriptor = $convert.base64Decode('ChFHTGlzdE9mSW5ncmVkaWVudBI8CgVpdGVtcxgBIAMoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0luZ3JlZGllbnRSBWl0ZW1z');
@$core.Deprecated('Use gKeyDescriptor instead')
const GKey$json = const {
  '1': 'GKey',
};

/// Descriptor for `GKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKeyDescriptor = $convert.base64Decode('CgRHS2V5');
@$core.Deprecated('Use gListOfKeyDescriptor instead')
const GListOfKey$json = const {
  '1': 'GListOfKey',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GKey', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKeyDescriptor = $convert.base64Decode('CgpHTGlzdE9mS2V5EjUKBWl0ZW1zGAEgAygLMh8uc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HS2V5UgVpdGVtcw==');
@$core.Deprecated('Use gListsHostDescriptor instead')
const GListsHost$json = const {
  '1': 'GListsHost',
};

/// Descriptor for `GListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListsHostDescriptor = $convert.base64Decode('CgpHTGlzdHNIb3N0');
@$core.Deprecated('Use gListOfListsHostDescriptor instead')
const GListOfListsHost$json = const {
  '1': 'GListOfListsHost',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GListsHost', '10': 'items'},
  ],
};

/// Descriptor for `GListOfListsHost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfListsHostDescriptor = $convert.base64Decode('ChBHTGlzdE9mTGlzdHNIb3N0EjsKBWl0ZW1zGAEgAygLMiUuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HTGlzdHNIb3N0UgVpdGVtcw==');
@$core.Deprecated('Use gAirplaneDescriptor instead')
const GAirplane$json = const {
  '1': 'GAirplane',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
    const {'1': 'wingspan', '3': 2, '4': 1, '5': 5, '10': 'wingspan'},
  ],
};

/// Descriptor for `GAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAirplaneDescriptor = $convert.base64Decode('CglHQWlycGxhbmUSXAoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMiwuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HRmllbGRzT2ZBaXJjcmFmdFISZmllbGRzT2ZTdXBlckNsYXNzEhoKCHdpbmdzcGFuGAIgASgFUgh3aW5nc3Bhbg==');
@$core.Deprecated('Use gListOfAirplaneDescriptor instead')
const GListOfAirplane$json = const {
  '1': 'GListOfAirplane',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GAirplane', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAirplane`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAirplaneDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQWlycGxhbmUSOgoFaXRlbXMYASADKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdBaXJwbGFuZVIFaXRlbXM=');
@$core.Deprecated('Use gBalloonDescriptor instead')
const GBalloon$json = const {
  '1': 'GBalloon',
};

/// Descriptor for `GBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBalloonDescriptor = $convert.base64Decode('CghHQmFsbG9vbg==');
@$core.Deprecated('Use gListOfBalloonDescriptor instead')
const GListOfBalloon$json = const {
  '1': 'GListOfBalloon',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GBalloon', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBalloon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBalloonDescriptor = $convert.base64Decode('Cg5HTGlzdE9mQmFsbG9vbhI5CgVpdGVtcxgBIAMoCzIjLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0JhbGxvb25SBWl0ZW1z');
@$core.Deprecated('Use gBicycleDescriptor instead')
const GBicycle$json = const {
  '1': 'GBicycle',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAbstractVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'wheel_diamater', '3': 2, '4': 1, '5': 12, '10': 'wheelDiamater'},
  ],
};

/// Descriptor for `GBicycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBicycleDescriptor = $convert.base64Decode('CghHQmljeWNsZRJjChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyMy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiUKDndoZWVsX2RpYW1hdGVyGAIgASgMUg13aGVlbERpYW1hdGVy');
@$core.Deprecated('Use gListOfBicycleDescriptor instead')
const GListOfBicycle$json = const {
  '1': 'GListOfBicycle',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GBicycle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBicycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBicycleDescriptor = $convert.base64Decode('Cg5HTGlzdE9mQmljeWNsZRI5CgVpdGVtcxgBIAMoCzIjLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0JpY3ljbGVSBWl0ZW1z');
@$core.Deprecated('Use gCarDescriptor instead')
const GCar$json = const {
  '1': 'GCar',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'number_of_doors', '3': 2, '4': 1, '5': 5, '10': 'numberOfDoors'},
  ],
};

/// Descriptor for `GCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCarDescriptor = $convert.base64Decode('CgRHQ2FyElsKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIrLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mVmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNzEiYKD251bWJlcl9vZl9kb29ycxgCIAEoBVINbnVtYmVyT2ZEb29ycw==');
@$core.Deprecated('Use gListOfCarDescriptor instead')
const GListOfCar$json = const {
  '1': 'GListOfCar',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GCar', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCarDescriptor = $convert.base64Decode('CgpHTGlzdE9mQ2FyEjUKBWl0ZW1zGAEgAygLMh8uc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQ2FyUgVpdGVtcw==');
@$core.Deprecated('Use gEntityDescriptor instead')
const GEntity$json = const {
  '1': 'GEntity',
};

/// Descriptor for `GEntity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gEntityDescriptor = $convert.base64Decode('CgdHRW50aXR5');
@$core.Deprecated('Use gListOfEntityDescriptor instead')
const GListOfEntity$json = const {
  '1': 'GListOfEntity',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GEntity', '10': 'items'},
  ],
};

/// Descriptor for `GListOfEntity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfEntityDescriptor = $convert.base64Decode('Cg1HTGlzdE9mRW50aXR5EjgKBWl0ZW1zGAEgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HRW50aXR5UgVpdGVtcw==');
@$core.Deprecated('Use gGyrocopterDescriptor instead')
const GGyrocopter$json = const {
  '1': 'GGyrocopter',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfRotorcraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GGyrocopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGyrocopterDescriptor = $convert.base64Decode('CgtHR3lyb2NvcHRlchJeChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyLi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZlJvdG9yY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gListOfGyrocopterDescriptor instead')
const GListOfGyrocopter$json = const {
  '1': 'GListOfGyrocopter',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GGyrocopter', '10': 'items'},
  ],
};

/// Descriptor for `GListOfGyrocopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfGyrocopterDescriptor = $convert.base64Decode('ChFHTGlzdE9mR3lyb2NvcHRlchI8CgVpdGVtcxgBIAMoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0d5cm9jb3B0ZXJSBWl0ZW1z');
@$core.Deprecated('Use gHelicopterDescriptor instead')
const GHelicopter$json = const {
  '1': 'GHelicopter',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfRotorcraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GHelicopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gHelicopterDescriptor = $convert.base64Decode('CgtHSGVsaWNvcHRlchJeChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyLi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZlJvdG9yY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gListOfHelicopterDescriptor instead')
const GListOfHelicopter$json = const {
  '1': 'GListOfHelicopter',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GHelicopter', '10': 'items'},
  ],
};

/// Descriptor for `GListOfHelicopter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfHelicopterDescriptor = $convert.base64Decode('ChFHTGlzdE9mSGVsaWNvcHRlchI8CgVpdGVtcxgBIAMoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0hlbGljb3B0ZXJSBWl0ZW1z');
@$core.Deprecated('Use gScooterDescriptor instead')
const GScooter$json = const {
  '1': 'GScooter',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAbstractVehicle', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GScooter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScooterDescriptor = $convert.base64Decode('CghHU2Nvb3RlchJjChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyMy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZVISZmllbGRzT2ZTdXBlckNsYXNz');
@$core.Deprecated('Use gListOfScooterDescriptor instead')
const GListOfScooter$json = const {
  '1': 'GListOfScooter',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GScooter', '10': 'items'},
  ],
};

/// Descriptor for `GListOfScooter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfScooterDescriptor = $convert.base64Decode('Cg5HTGlzdE9mU2Nvb3RlchI5CgVpdGVtcxgBIAMoCzIjLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1Njb290ZXJSBWl0ZW1z');
@$core.Deprecated('Use gFieldsOfAbstractVehicleDescriptor instead')
const GFieldsOfAbstractVehicle$json = const {
  '1': 'GFieldsOfAbstractVehicle',
};

/// Descriptor for `GFieldsOfAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAbstractVehicleDescriptor = $convert.base64Decode('ChhHRmllbGRzT2ZBYnN0cmFjdFZlaGljbGU=');
@$core.Deprecated('Use gAbstractVehicleDescriptor instead')
const GAbstractVehicle$json = const {
  '1': 'GAbstractVehicle',
  '2': const [
    const {'1': 'abstract_vehicle', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAbstractVehicle', '9': 0, '10': 'abstractVehicle'},
    const {'1': 'bicycle', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GBicycle', '9': 0, '10': 'bicycle'},
    const {'1': 'scooter', '3': 4, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GScooter', '9': 0, '10': 'scooter'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractVehicleDescriptor = $convert.base64Decode('ChBHQWJzdHJhY3RWZWhpY2xlEmAKEGFic3RyYWN0X3ZlaGljbGUYASABKAsyMy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZkFic3RyYWN0VmVoaWNsZUgAUg9hYnN0cmFjdFZlaGljbGUSPwoHYmljeWNsZRgDIAEoCzIjLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0JpY3ljbGVIAFIHYmljeWNsZRI/CgdzY29vdGVyGAQgASgLMiMuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HU2Nvb3RlckgAUgdzY29vdGVyQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfAbstractVehicleDescriptor instead')
const GListOfAbstractVehicle$json = const {
  '1': 'GListOfAbstractVehicle',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GAbstractVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAbstractVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAbstractVehicleDescriptor = $convert.base64Decode('ChZHTGlzdE9mQWJzdHJhY3RWZWhpY2xlEkEKBWl0ZW1zGAEgAygLMisuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQWJzdHJhY3RWZWhpY2xlUgVpdGVtcw==');
@$core.Deprecated('Use gFieldsOfAircraftDescriptor instead')
const GFieldsOfAircraft$json = const {
  '1': 'GFieldsOfAircraft',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 6, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfVehicle', '10': 'fieldsOfSuperClass'},
    const {'1': 'service_ceiling', '3': 3, '4': 1, '5': 5, '10': 'serviceCeiling'},
  ],
};

/// Descriptor for `GFieldsOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAircraftDescriptor = $convert.base64Decode('ChFHRmllbGRzT2ZBaXJjcmFmdBJbChJmaWVsZHNPZlN1cGVyQ2xhc3MYBiABKAsyKy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZlZlaGljbGVSEmZpZWxkc09mU3VwZXJDbGFzcxInCg9zZXJ2aWNlX2NlaWxpbmcYAyABKAVSDnNlcnZpY2VDZWlsaW5n');
@$core.Deprecated('Use gAircraftDescriptor instead')
const GAircraft$json = const {
  '1': 'GAircraft',
  '2': const [
    const {'1': 'aircraft', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAircraft', '9': 0, '10': 'aircraft'},
    const {'1': 'airplane', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GAirplane', '9': 0, '10': 'airplane'},
    const {'1': 'rotorcraft', '3': 4, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRotorcraft', '9': 0, '10': 'rotorcraft'},
    const {'1': 'balloon', '3': 5, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GBalloon', '9': 0, '10': 'balloon'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAircraftDescriptor = $convert.base64Decode('CglHQWlyY3JhZnQSSgoIYWlyY3JhZnQYASABKAsyLC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZkFpcmNyYWZ0SABSCGFpcmNyYWZ0EkIKCGFpcnBsYW5lGAMgASgLMiQuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQWlycGxhbmVIAFIIYWlycGxhbmUSSAoKcm90b3JjcmFmdBgEIAEoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JvdG9yY3JhZnRIAFIKcm90b3JjcmFmdBI/CgdiYWxsb29uGAUgASgLMiMuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQmFsbG9vbkgAUgdiYWxsb29uQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfAircraftDescriptor instead')
const GListOfAircraft$json = const {
  '1': 'GListOfAircraft',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GAircraft', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAircraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAircraftDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQWlyY3JhZnQSOgoFaXRlbXMYASADKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdBaXJjcmFmdFIFaXRlbXM=');
@$core.Deprecated('Use gFieldsOfRotorcraftDescriptor instead')
const GFieldsOfRotorcraft$json = const {
  '1': 'GFieldsOfRotorcraft',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAircraft', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GFieldsOfRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfRotorcraftDescriptor = $convert.base64Decode('ChNHRmllbGRzT2ZSb3RvcmNyYWZ0ElwKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mQWlyY3JhZnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gRotorcraftDescriptor instead')
const GRotorcraft$json = const {
  '1': 'GRotorcraft',
  '2': const [
    const {'1': 'rotorcraft', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfRotorcraft', '9': 0, '10': 'rotorcraft'},
    const {'1': 'helicopter', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GHelicopter', '9': 0, '10': 'helicopter'},
    const {'1': 'gyrocopter', '3': 4, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GGyrocopter', '9': 0, '10': 'gyrocopter'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRotorcraftDescriptor = $convert.base64Decode('CgtHUm90b3JjcmFmdBJQCgpyb3RvcmNyYWZ0GAEgASgLMi4uc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HRmllbGRzT2ZSb3RvcmNyYWZ0SABSCnJvdG9yY3JhZnQSSAoKaGVsaWNvcHRlchgDIAEoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0hlbGljb3B0ZXJIAFIKaGVsaWNvcHRlchJICgpneXJvY29wdGVyGAQgASgLMiYuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HR3lyb2NvcHRlckgAUgpneXJvY29wdGVyQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfRotorcraftDescriptor instead')
const GListOfRotorcraft$json = const {
  '1': 'GListOfRotorcraft',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRotorcraft', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRotorcraft`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRotorcraftDescriptor = $convert.base64Decode('ChFHTGlzdE9mUm90b3JjcmFmdBI8CgVpdGVtcxgBIAMoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JvdG9yY3JhZnRSBWl0ZW1z');
@$core.Deprecated('Use gFieldsOfVehicleDescriptor instead')
const GFieldsOfVehicle$json = const {
  '1': 'GFieldsOfVehicle',
};

/// Descriptor for `GFieldsOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfVehicleDescriptor = $convert.base64Decode('ChBHRmllbGRzT2ZWZWhpY2xl');
@$core.Deprecated('Use gVehicleDescriptor instead')
const GVehicle$json = const {
  '1': 'GVehicle',
  '2': const [
    const {'1': 'vehicle', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfVehicle', '9': 0, '10': 'vehicle'},
    const {'1': 'aircraft', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GAircraft', '9': 0, '10': 'aircraft'},
    const {'1': 'car', '3': 4, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GCar', '9': 0, '10': 'car'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gVehicleDescriptor = $convert.base64Decode('CghHVmVoaWNsZRJHCgd2ZWhpY2xlGAEgASgLMisuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HRmllbGRzT2ZWZWhpY2xlSABSB3ZlaGljbGUSQgoIYWlyY3JhZnQYAyABKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdBaXJjcmFmdEgAUghhaXJjcmFmdBIzCgNjYXIYBCABKAsyHy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdDYXJIAFIDY2FyQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfVehicleDescriptor instead')
const GListOfVehicle$json = const {
  '1': 'GListOfVehicle',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GVehicle', '10': 'items'},
  ],
};

/// Descriptor for `GListOfVehicle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfVehicleDescriptor = $convert.base64Decode('Cg5HTGlzdE9mVmVoaWNsZRI5CgVpdGVtcxgBIAMoCzIjLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1ZlaGljbGVSBWl0ZW1z');
@$core.Deprecated('Use gKnifeDescriptor instead')
const GKnife$json = const {
  '1': 'GKnife',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GKnifeType', '10': 'type'},
  ],
};

/// Descriptor for `GKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeDescriptor = $convert.base64Decode('CgZHS25pZmUSEgoEbmFtZRgBIAEoCVIEbmFtZRI5CgR0eXBlGAIgASgOMiUuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HS25pZmVUeXBlUgR0eXBl');
@$core.Deprecated('Use gListOfKnifeDescriptor instead')
const GListOfKnife$json = const {
  '1': 'GListOfKnife',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GKnife', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKnifeDescriptor = $convert.base64Decode('CgxHTGlzdE9mS25pZmUSNwoFaXRlbXMYASADKAsyIS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdLbmlmZVIFaXRlbXM=');
@$core.Deprecated('Use gGarlicPressDescriptor instead')
const GGarlicPress$json = const {
  '1': 'GGarlicPress',
};

/// Descriptor for `GGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGarlicPressDescriptor = $convert.base64Decode('CgxHR2FybGljUHJlc3M=');
@$core.Deprecated('Use gListOfGarlicPressDescriptor instead')
const GListOfGarlicPress$json = const {
  '1': 'GListOfGarlicPress',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GGarlicPress', '10': 'items'},
  ],
};

/// Descriptor for `GListOfGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfGarlicPressDescriptor = $convert.base64Decode('ChJHTGlzdE9mR2FybGljUHJlc3MSPQoFaXRlbXMYASADKAsyJy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdHYXJsaWNQcmVzc1IFaXRlbXM=');
@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen$json = const {
  '1': 'GKitchen',
};

/// Descriptor for `GKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKitchenDescriptor = $convert.base64Decode('CghHS2l0Y2hlbg==');
@$core.Deprecated('Use gListOfKitchenDescriptor instead')
const GListOfKitchen$json = const {
  '1': 'GListOfKitchen',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GKitchen', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKitchenDescriptor = $convert.base64Decode('Cg5HTGlzdE9mS2l0Y2hlbhI5CgVpdGVtcxgBIAMoCzIjLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0tpdGNoZW5SBWl0ZW1z');
@$core.Deprecated('Use gChefDescriptor instead')
const GChef$json = const {
  '1': 'GChef',
  '2': const [
    const {'1': 'favorite_recipe', '3': 2, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'favoriteRecipe'},
    const {'1': 'favorite_knife', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GKnife', '10': 'favoriteKnife'},
    const {'1': 'favorite_appliance_type', '3': 4, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GApplianceType', '10': 'favoriteApplianceType'},
    const {'1': 'favorite_words', '3': 5, '4': 3, '5': 9, '10': 'favoriteWords'},
    const {'1': 'birthdate', '3': 6, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.Duration', '10': 'birthdate'},
    const {'1': 'shelf_life', '3': 7, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.Duration', '10': 'shelfLife'},
  ],
};

/// Descriptor for `GChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefDescriptor = $convert.base64Decode('CgVHQ2hlZhJLCg9mYXZvcml0ZV9yZWNpcGUYAiABKAsyIi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVSDmZhdm9yaXRlUmVjaXBlEkgKDmZhdm9yaXRlX2tuaWZlGAMgASgLMiEuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HS25pZmVSDWZhdm9yaXRlS25pZmUSYQoXZmF2b3JpdGVfYXBwbGlhbmNlX3R5cGUYBCABKA4yKS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdBcHBsaWFuY2VUeXBlUhVmYXZvcml0ZUFwcGxpYW5jZVR5cGUSJQoOZmF2b3JpdGVfd29yZHMYBSADKAlSDWZhdm9yaXRlV29yZHMSQQoJYmlydGhkYXRlGAYgASgLMiMuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5EdXJhdGlvblIJYmlydGhkYXRlEkIKCnNoZWxmX2xpZmUYByABKAsyIy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkR1cmF0aW9uUglzaGVsZkxpZmU=');
@$core.Deprecated('Use gListOfChefDescriptor instead')
const GListOfChef$json = const {
  '1': 'GListOfChef',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GChef', '10': 'items'},
  ],
};

/// Descriptor for `GListOfChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfChefDescriptor = $convert.base64Decode('CgtHTGlzdE9mQ2hlZhI2CgVpdGVtcxgBIAMoCzIgLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NoZWZSBWl0ZW1z');
@$core.Deprecated('Use gSousChefDescriptor instead')
const GSousChef$json = const {
  '1': 'GSousChef',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GChef', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GSousChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSousChefDescriptor = $convert.base64Decode('CglHU291c0NoZWYSUAoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMiAuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQ2hlZlISZmllbGRzT2ZTdXBlckNsYXNz');
@$core.Deprecated('Use gListOfSousChefDescriptor instead')
const GListOfSousChef$json = const {
  '1': 'GListOfSousChef',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GSousChef', '10': 'items'},
  ],
};

/// Descriptor for `GListOfSousChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfSousChefDescriptor = $convert.base64Decode('Cg9HTGlzdE9mU291c0NoZWYSOgoFaXRlbXMYASADKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdTb3VzQ2hlZlIFaXRlbXM=');
@$core.Deprecated('Use gKnifeMasterDescriptor instead')
const GKnifeMaster$json = const {
  '1': 'GKnifeMaster',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GChef', '10': 'fieldsOfSuperClass'},
    const {'1': 'favorite_knife', '3': 2, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GKnife', '10': 'favoriteKnife'},
  ],
};

/// Descriptor for `GKnifeMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeMasterDescriptor = $convert.base64Decode('CgxHS25pZmVNYXN0ZXISUAoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMiAuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQ2hlZlISZmllbGRzT2ZTdXBlckNsYXNzEkgKDmZhdm9yaXRlX2tuaWZlGAIgASgLMiEuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HS25pZmVSDWZhdm9yaXRlS25pZmU=');
@$core.Deprecated('Use gListOfKnifeMasterDescriptor instead')
const GListOfKnifeMaster$json = const {
  '1': 'GListOfKnifeMaster',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GKnifeMaster', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKnifeMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKnifeMasterDescriptor = $convert.base64Decode('ChJHTGlzdE9mS25pZmVNYXN0ZXISPQoFaXRlbXMYASADKAsyJy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdLbmlmZU1hc3RlclIFaXRlbXM=');
@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory$json = const {
  '1': 'GInventory',
};

/// Descriptor for `GInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gInventoryDescriptor = $convert.base64Decode('CgpHSW52ZW50b3J5');
@$core.Deprecated('Use gListOfInventoryDescriptor instead')
const GListOfInventory$json = const {
  '1': 'GListOfInventory',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GInventory', '10': 'items'},
  ],
};

/// Descriptor for `GListOfInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfInventoryDescriptor = $convert.base64Decode('ChBHTGlzdE9mSW52ZW50b3J5EjsKBWl0ZW1zGAEgAygLMiUuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HSW52ZW50b3J5UgVpdGVtcw==');
@$core.Deprecated('Use gPrecisionSubjectDescriptor instead')
const GPrecisionSubject$json = const {
  '1': 'GPrecisionSubject',
};

/// Descriptor for `GPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPrecisionSubjectDescriptor = $convert.base64Decode('ChFHUHJlY2lzaW9uU3ViamVjdA==');
@$core.Deprecated('Use gListOfPrecisionSubjectDescriptor instead')
const GListOfPrecisionSubject$json = const {
  '1': 'GListOfPrecisionSubject',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GPrecisionSubject', '10': 'items'},
  ],
};

/// Descriptor for `GListOfPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPrecisionSubjectDescriptor = $convert.base64Decode('ChdHTGlzdE9mUHJlY2lzaW9uU3ViamVjdBJCCgVpdGVtcxgBIAMoCzIsLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1ByZWNpc2lvblN1YmplY3RSBWl0ZW1z');
@$core.Deprecated('Use gRecipeDescriptor instead')
const GRecipe$json = const {
  '1': 'GRecipe',
};

/// Descriptor for `GRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeDescriptor = $convert.base64Decode('CgdHUmVjaXBl');
@$core.Deprecated('Use gListOfRecipeDescriptor instead')
const GListOfRecipe$json = const {
  '1': 'GListOfRecipe',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'items'},
  ],
};

/// Descriptor for `GListOfRecipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfRecipeDescriptor = $convert.base64Decode('Cg1HTGlzdE9mUmVjaXBlEjgKBWl0ZW1zGAEgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlUgVpdGVtcw==');
@$core.Deprecated('Use gStarshipDescriptor instead')
const GStarship$json = const {
  '1': 'GStarship',
};

/// Descriptor for `GStarship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gStarshipDescriptor = $convert.base64Decode('CglHU3RhcnNoaXA=');
@$core.Deprecated('Use gListOfStarshipDescriptor instead')
const GListOfStarship$json = const {
  '1': 'GListOfStarship',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GStarship', '10': 'items'},
  ],
};

/// Descriptor for `GListOfStarship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfStarshipDescriptor = $convert.base64Decode('Cg9HTGlzdE9mU3RhcnNoaXASOgoFaXRlbXMYASADKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdTdGFyc2hpcFIFaXRlbXM=');
@$core.Deprecated('Use gPersonDescriptor instead')
const GPerson$json = const {
  '1': 'GPerson',
  '2': const [
    const {'1': 'bool_value', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.BoolValue', '10': 'boolValue'},
    const {'1': 'dec_val', '3': 2, '4': 1, '5': 12, '10': 'decVal'},
  ],
};

/// Descriptor for `GPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPersonDescriptor = $convert.base64Decode('CgdHUGVyc29uEkMKCmJvb2xfdmFsdWUYASABKAsyJC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkJvb2xWYWx1ZVIJYm9vbFZhbHVlEhcKB2RlY192YWwYAiABKAxSBmRlY1ZhbA==');
@$core.Deprecated('Use gListOfPersonDescriptor instead')
const GListOfPerson$json = const {
  '1': 'GListOfPerson',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GPerson', '10': 'items'},
  ],
};

/// Descriptor for `GListOfPerson`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPersonDescriptor = $convert.base64Decode('Cg1HTGlzdE9mUGVyc29uEjgKBWl0ZW1zGAEgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUGVyc29uUgVpdGVtcw==');
@$core.Deprecated('Use gAbstractParentClass1Descriptor instead')
const GAbstractParentClass1$json = const {
  '1': 'GAbstractParentClass1',
};

/// Descriptor for `GAbstractParentClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractParentClass1Descriptor = $convert.base64Decode('ChVHQWJzdHJhY3RQYXJlbnRDbGFzczE=');
@$core.Deprecated('Use gListOfAbstractParentClass1Descriptor instead')
const GListOfAbstractParentClass1$json = const {
  '1': 'GListOfAbstractParentClass1',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GAbstractParentClass1', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAbstractParentClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAbstractParentClass1Descriptor = $convert.base64Decode('ChtHTGlzdE9mQWJzdHJhY3RQYXJlbnRDbGFzczESRgoFaXRlbXMYASADKAsyMC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdBYnN0cmFjdFBhcmVudENsYXNzMVIFaXRlbXM=');
@$core.Deprecated('Use gFieldsOfAbstractParentClass2Descriptor instead')
const GFieldsOfAbstractParentClass2$json = const {
  '1': 'GFieldsOfAbstractParentClass2',
};

/// Descriptor for `GFieldsOfAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfAbstractParentClass2Descriptor = $convert.base64Decode('Ch1HRmllbGRzT2ZBYnN0cmFjdFBhcmVudENsYXNzMg==');
@$core.Deprecated('Use gAbstractParentClass2Descriptor instead')
const GAbstractParentClass2$json = const {
  '1': 'GAbstractParentClass2',
  '2': const [
    const {'1': 'abstract_parent_class2', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAbstractParentClass2', '9': 0, '10': 'abstractParentClass2'},
    const {'1': 'sub_class1', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GSubClass1', '9': 0, '10': 'subClass1'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gAbstractParentClass2Descriptor = $convert.base64Decode('ChVHQWJzdHJhY3RQYXJlbnRDbGFzczIScAoWYWJzdHJhY3RfcGFyZW50X2NsYXNzMhgBIAEoCzI4LnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mQWJzdHJhY3RQYXJlbnRDbGFzczJIAFIUYWJzdHJhY3RQYXJlbnRDbGFzczISRgoKc3ViX2NsYXNzMRgDIAEoCzIlLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1N1YkNsYXNzMUgAUglzdWJDbGFzczFCBwoFcHJvcHM=');
@$core.Deprecated('Use gListOfAbstractParentClass2Descriptor instead')
const GListOfAbstractParentClass2$json = const {
  '1': 'GListOfAbstractParentClass2',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GAbstractParentClass2', '10': 'items'},
  ],
};

/// Descriptor for `GListOfAbstractParentClass2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfAbstractParentClass2Descriptor = $convert.base64Decode('ChtHTGlzdE9mQWJzdHJhY3RQYXJlbnRDbGFzczISRgoFaXRlbXMYASADKAsyMC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdBYnN0cmFjdFBhcmVudENsYXNzMlIFaXRlbXM=');
@$core.Deprecated('Use gSubClass1Descriptor instead')
const GSubClass1$json = const {
  '1': 'GSubClass1',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfAbstractParentClass2', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GSubClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSubClass1Descriptor = $convert.base64Decode('CgpHU3ViQ2xhc3MxEmgKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzI4LnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mQWJzdHJhY3RQYXJlbnRDbGFzczJSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gListOfSubClass1Descriptor instead')
const GListOfSubClass1$json = const {
  '1': 'GListOfSubClass1',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GSubClass1', '10': 'items'},
  ],
};

/// Descriptor for `GListOfSubClass1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfSubClass1Descriptor = $convert.base64Decode('ChBHTGlzdE9mU3ViQ2xhc3MxEjsKBWl0ZW1zGAEgAygLMiUuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HU3ViQ2xhc3MxUgVpdGVtcw==');
@$core.Deprecated('Use gFieldsOfScheduleConstraintDescriptor instead')
const GFieldsOfScheduleConstraint$json = const {
  '1': 'GFieldsOfScheduleConstraint',
};

/// Descriptor for `GFieldsOfScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfScheduleConstraintDescriptor = $convert.base64Decode('ChtHRmllbGRzT2ZTY2hlZHVsZUNvbnN0cmFpbnQ=');
@$core.Deprecated('Use gScheduleConstraintDescriptor instead')
const GScheduleConstraint$json = const {
  '1': 'GScheduleConstraint',
  '2': const [
    const {'1': 'schedule_constraint', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfScheduleConstraint', '9': 0, '10': 'scheduleConstraint'},
    const {'1': 'contest_constraint', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GContestConstraint', '9': 0, '10': 'contestConstraint'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScheduleConstraintDescriptor = $convert.base64Decode('ChNHU2NoZWR1bGVDb25zdHJhaW50EmkKE3NjaGVkdWxlX2NvbnN0cmFpbnQYASABKAsyNi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZlNjaGVkdWxlQ29uc3RyYWludEgAUhJzY2hlZHVsZUNvbnN0cmFpbnQSXgoSY29udGVzdF9jb25zdHJhaW50GAMgASgLMi0uc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQ29udGVzdENvbnN0cmFpbnRIAFIRY29udGVzdENvbnN0cmFpbnRCBwoFcHJvcHM=');
@$core.Deprecated('Use gListOfScheduleConstraintDescriptor instead')
const GListOfScheduleConstraint$json = const {
  '1': 'GListOfScheduleConstraint',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GScheduleConstraint', '10': 'items'},
  ],
};

/// Descriptor for `GListOfScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfScheduleConstraintDescriptor = $convert.base64Decode('ChlHTGlzdE9mU2NoZWR1bGVDb25zdHJhaW50EkQKBWl0ZW1zGAEgAygLMi4uc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HU2NoZWR1bGVDb25zdHJhaW50UgVpdGVtcw==');
@$core.Deprecated('Use gConstraintAddedDescriptor instead')
const GConstraintAdded$json = const {
  '1': 'GConstraintAdded',
};

/// Descriptor for `GConstraintAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstraintAddedDescriptor = $convert.base64Decode('ChBHQ29uc3RyYWludEFkZGVk');
@$core.Deprecated('Use gListOfConstraintAddedDescriptor instead')
const GListOfConstraintAdded$json = const {
  '1': 'GListOfConstraintAdded',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GConstraintAdded', '10': 'items'},
  ],
};

/// Descriptor for `GListOfConstraintAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstraintAddedDescriptor = $convert.base64Decode('ChZHTGlzdE9mQ29uc3RyYWludEFkZGVkEkEKBWl0ZW1zGAEgAygLMisuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQ29uc3RyYWludEFkZGVkUgVpdGVtcw==');
@$core.Deprecated('Use gContestConstraintDescriptor instead')
const GContestConstraint$json = const {
  '1': 'GContestConstraint',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfScheduleConstraint', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GContestConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gContestConstraintDescriptor = $convert.base64Decode('ChJHQ29udGVzdENvbnN0cmFpbnQSZgoSZmllbGRzT2ZTdXBlckNsYXNzGAEgASgLMjYuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HRmllbGRzT2ZTY2hlZHVsZUNvbnN0cmFpbnRSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gListOfContestConstraintDescriptor instead')
const GListOfContestConstraint$json = const {
  '1': 'GListOfContestConstraint',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GContestConstraint', '10': 'items'},
  ],
};

/// Descriptor for `GListOfContestConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfContestConstraintDescriptor = $convert.base64Decode('ChhHTGlzdE9mQ29udGVzdENvbnN0cmFpbnQSQwoFaXRlbXMYASADKAsyLS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdDb250ZXN0Q29uc3RyYWludFIFaXRlbXM=');
@$core.Deprecated('Use gFieldsOfBranchDescriptor instead')
const GFieldsOfBranch$json = const {
  '1': 'GFieldsOfBranch',
};

/// Descriptor for `GFieldsOfBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfBranchDescriptor = $convert.base64Decode('Cg9HRmllbGRzT2ZCcmFuY2g=');
@$core.Deprecated('Use gBranchDescriptor instead')
const GBranch$json = const {
  '1': 'GBranch',
  '2': const [
    const {'1': 'branch', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfBranch', '9': 0, '10': 'branch'},
    const {'1': 'twig', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GTwig', '9': 0, '10': 'twig'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gBranchDescriptor = $convert.base64Decode('CgdHQnJhbmNoEkQKBmJyYW5jaBgBIAEoCzIqLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mQnJhbmNoSABSBmJyYW5jaBI2CgR0d2lnGAMgASgLMiAuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HVHdpZ0gAUgR0d2lnQgcKBXByb3Bz');
@$core.Deprecated('Use gListOfBranchDescriptor instead')
const GListOfBranch$json = const {
  '1': 'GListOfBranch',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GBranch', '10': 'items'},
  ],
};

/// Descriptor for `GListOfBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfBranchDescriptor = $convert.base64Decode('Cg1HTGlzdE9mQnJhbmNoEjgKBWl0ZW1zGAEgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQnJhbmNoUgVpdGVtcw==');
@$core.Deprecated('Use gFieldsOfTwigDescriptor instead')
const GFieldsOfTwig$json = const {
  '1': 'GFieldsOfTwig',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfBranch', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GFieldsOfTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gFieldsOfTwigDescriptor = $convert.base64Decode('Cg1HRmllbGRzT2ZUd2lnEloKEmZpZWxkc09mU3VwZXJDbGFzcxgBIAEoCzIqLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0ZpZWxkc09mQnJhbmNoUhJmaWVsZHNPZlN1cGVyQ2xhc3M=');
@$core.Deprecated('Use gTwigDescriptor instead')
const GTwig$json = const {
  '1': 'GTwig',
  '2': const [
    const {'1': 'twig', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfTwig', '9': 0, '10': 'twig'},
    const {'1': 'leaf', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GLeaf', '9': 0, '10': 'leaf'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `GTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gTwigDescriptor = $convert.base64Decode('CgVHVHdpZxI+CgR0d2lnGAEgASgLMiguc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HRmllbGRzT2ZUd2lnSABSBHR3aWcSNgoEbGVhZhgDIAEoCzIgLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0xlYWZIAFIEbGVhZkIHCgVwcm9wcw==');
@$core.Deprecated('Use gListOfTwigDescriptor instead')
const GListOfTwig$json = const {
  '1': 'GListOfTwig',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GTwig', '10': 'items'},
  ],
};

/// Descriptor for `GListOfTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfTwigDescriptor = $convert.base64Decode('CgtHTGlzdE9mVHdpZxI2CgVpdGVtcxgBIAMoCzIgLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1R3aWdSBWl0ZW1z');
@$core.Deprecated('Use gLeafDescriptor instead')
const GLeaf$json = const {
  '1': 'GLeaf',
  '2': const [
    const {'1': 'fieldsOfSuperClass', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GFieldsOfTwig', '10': 'fieldsOfSuperClass'},
  ],
};

/// Descriptor for `GLeaf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gLeafDescriptor = $convert.base64Decode('CgVHTGVhZhJYChJmaWVsZHNPZlN1cGVyQ2xhc3MYASABKAsyKC5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdGaWVsZHNPZlR3aWdSEmZpZWxkc09mU3VwZXJDbGFzcw==');
@$core.Deprecated('Use gListOfLeafDescriptor instead')
const GListOfLeaf$json = const {
  '1': 'GListOfLeaf',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GLeaf', '10': 'items'},
  ],
};

/// Descriptor for `GListOfLeaf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfLeafDescriptor = $convert.base64Decode('CgtHTGlzdE9mTGVhZhI2CgVpdGVtcxgBIAMoCzIgLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0xlYWZSBWl0ZW1z');
@$core.Deprecated('Use gApplianceType_MessageDescriptor instead')
const GApplianceType_Message$json = const {
  '1': 'GApplianceType_Message',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GApplianceType', '10': 'value'},
  ],
};

/// Descriptor for `GApplianceType_Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gApplianceType_MessageDescriptor = $convert.base64Decode('ChZHQXBwbGlhbmNlVHlwZV9NZXNzYWdlEj8KBXZhbHVlGAEgASgOMikuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HQXBwbGlhbmNlVHlwZVIFdmFsdWU=');
@$core.Deprecated('Use gRecipeTypes_MessageDescriptor instead')
const GRecipeTypes_Message$json = const {
  '1': 'GRecipeTypes_Message',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'value'},
  ],
};

/// Descriptor for `GRecipeTypes_Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRecipeTypes_MessageDescriptor = $convert.base64Decode('ChRHUmVjaXBlVHlwZXNfTWVzc2FnZRI9CgV2YWx1ZRgBIAEoDjInLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVR5cGVzUgV2YWx1ZQ==');
@$core.Deprecated('Use gKnifeType_MessageDescriptor instead')
const GKnifeType_Message$json = const {
  '1': 'GKnifeType_Message',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GKnifeType', '10': 'value'},
  ],
};

/// Descriptor for `GKnifeType_Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeType_MessageDescriptor = $convert.base64Decode('ChJHS25pZmVUeXBlX01lc3NhZ2USOwoFdmFsdWUYASABKA4yJS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdLbmlmZVR5cGVSBXZhbHVl');
@$core.Deprecated('Use gChefType_MessageDescriptor instead')
const GChefType_Message$json = const {
  '1': 'GChefType_Message',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GChefType', '10': 'value'},
  ],
};

/// Descriptor for `GChefType_Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefType_MessageDescriptor = $convert.base64Decode('ChFHQ2hlZlR5cGVfTWVzc2FnZRI6CgV2YWx1ZRgBIAEoDjIkLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR0NoZWZUeXBlUgV2YWx1ZQ==');
@$core.Deprecated('Use g_GRecipeService_Delete_ReturnDescriptor instead')
const G_GRecipeService_Delete_Return$json = const {
  '1': 'G_GRecipeService_Delete_Return',
};

/// Descriptor for `G_GRecipeService_Delete_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_Delete_ReturnDescriptor = $convert.base64Decode('Ch5HX0dSZWNpcGVTZXJ2aWNlX0RlbGV0ZV9SZXR1cm4=');
@$core.Deprecated('Use g_GRecipeService_Search_ParametersDescriptor instead')
const G_GRecipeService_Search_Parameters$json = const {
  '1': 'G_GRecipeService_Search_Parameters',
};

/// Descriptor for `G_GRecipeService_Search_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_Search_ParametersDescriptor = $convert.base64Decode('CiJHX0dSZWNpcGVTZXJ2aWNlX1NlYXJjaF9QYXJhbWV0ZXJz');
@$core.Deprecated('Use g_GRecipeService_SearchNullable_ParametersDescriptor instead')
const G_GRecipeService_SearchNullable_Parameters$json = const {
  '1': 'G_GRecipeService_SearchNullable_Parameters',
};

/// Descriptor for `G_GRecipeService_SearchNullable_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_SearchNullable_ParametersDescriptor = $convert.base64Decode('CipHX0dSZWNpcGVTZXJ2aWNlX1NlYXJjaE51bGxhYmxlX1BhcmFtZXRlcnM=');
@$core.Deprecated('Use g_GRecipeService_SearchNullable_ReturnDescriptor instead')
const G_GRecipeService_SearchNullable_Return$json = const {
  '1': 'G_GRecipeService_SearchNullable_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_SearchNullable_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_SearchNullable_ReturnDescriptor = $convert.base64Decode('CiZHX0dSZWNpcGVTZXJ2aWNlX1NlYXJjaE51bGxhYmxlX1JldHVybhI4CgV2YWx1ZRgBIAMoCzIiLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVIFdmFsdWU=');
@$core.Deprecated('Use g_GRecipeService_InsertMany_ReturnDescriptor instead')
const G_GRecipeService_InsertMany_Return$json = const {
  '1': 'G_GRecipeService_InsertMany_Return',
};

/// Descriptor for `G_GRecipeService_InsertMany_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_InsertMany_ReturnDescriptor = $convert.base64Decode('CiJHX0dSZWNpcGVTZXJ2aWNlX0luc2VydE1hbnlfUmV0dXJu');
@$core.Deprecated('Use g_GRecipeService_GetNullable_ParametersDescriptor instead')
const G_GRecipeService_GetNullable_Parameters$json = const {
  '1': 'G_GRecipeService_GetNullable_Parameters',
};

/// Descriptor for `G_GRecipeService_GetNullable_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetNullable_ParametersDescriptor = $convert.base64Decode('CidHX0dSZWNpcGVTZXJ2aWNlX0dldE51bGxhYmxlX1BhcmFtZXRlcnM=');
@$core.Deprecated('Use g_GRecipeService_GetNullable_ReturnDescriptor instead')
const G_GRecipeService_GetNullable_Return$json = const {
  '1': 'G_GRecipeService_GetNullable_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetNullable_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetNullable_ReturnDescriptor = $convert.base64Decode('CiNHX0dSZWNpcGVTZXJ2aWNlX0dldE51bGxhYmxlX1JldHVybhI4CgV2YWx1ZRgBIAEoCzIiLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVIFdmFsdWU=');
@$core.Deprecated('Use g_GRecipeService_Count_ParametersDescriptor instead')
const G_GRecipeService_Count_Parameters$json = const {
  '1': 'G_GRecipeService_Count_Parameters',
};

/// Descriptor for `G_GRecipeService_Count_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_Count_ParametersDescriptor = $convert.base64Decode('CiFHX0dSZWNpcGVTZXJ2aWNlX0NvdW50X1BhcmFtZXRlcnM=');
@$core.Deprecated('Use g_GRecipeService_Count_ReturnDescriptor instead')
const G_GRecipeService_Count_Return$json = const {
  '1': 'G_GRecipeService_Count_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_Count_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_Count_ReturnDescriptor = $convert.base64Decode('Ch1HX0dSZWNpcGVTZXJ2aWNlX0NvdW50X1JldHVybhIUCgV2YWx1ZRgBIAEoBVIFdmFsdWU=');
@$core.Deprecated('Use g_GRecipeService_CountNullable_ParametersDescriptor instead')
const G_GRecipeService_CountNullable_Parameters$json = const {
  '1': 'G_GRecipeService_CountNullable_Parameters',
  '2': const [
    const {'1': 'return_null', '3': 1, '4': 1, '5': 8, '10': 'returnNull'},
  ],
};

/// Descriptor for `G_GRecipeService_CountNullable_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_CountNullable_ParametersDescriptor = $convert.base64Decode('CilHX0dSZWNpcGVTZXJ2aWNlX0NvdW50TnVsbGFibGVfUGFyYW1ldGVycxIfCgtyZXR1cm5fbnVsbBgBIAEoCFIKcmV0dXJuTnVsbA==');
@$core.Deprecated('Use g_GRecipeService_CountNullable_ReturnDescriptor instead')
const G_GRecipeService_CountNullable_Return$json = const {
  '1': 'G_GRecipeService_CountNullable_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.Int32Value', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_CountNullable_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_CountNullable_ReturnDescriptor = $convert.base64Decode('CiVHX0dSZWNpcGVTZXJ2aWNlX0NvdW50TnVsbGFibGVfUmV0dXJuEjsKBXZhbHVlGAEgASgLMiUuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5JbnQzMlZhbHVlUgV2YWx1ZQ==');
@$core.Deprecated('Use g_GRecipeService_Reindex_ParametersDescriptor instead')
const G_GRecipeService_Reindex_Parameters$json = const {
  '1': 'G_GRecipeService_Reindex_Parameters',
};

/// Descriptor for `G_GRecipeService_Reindex_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_Reindex_ParametersDescriptor = $convert.base64Decode('CiNHX0dSZWNpcGVTZXJ2aWNlX1JlaW5kZXhfUGFyYW1ldGVycw==');
@$core.Deprecated('Use g_GRecipeService_Reindex_ReturnDescriptor instead')
const G_GRecipeService_Reindex_Return$json = const {
  '1': 'G_GRecipeService_Reindex_Return',
};

/// Descriptor for `G_GRecipeService_Reindex_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_Reindex_ReturnDescriptor = $convert.base64Decode('Ch9HX0dSZWNpcGVTZXJ2aWNlX1JlaW5kZXhfUmV0dXJu');
@$core.Deprecated('Use g_GRecipeService_GetMainRecipeType_ParametersDescriptor instead')
const G_GRecipeService_GetMainRecipeType_Parameters$json = const {
  '1': 'G_GRecipeService_GetMainRecipeType_Parameters',
};

/// Descriptor for `G_GRecipeService_GetMainRecipeType_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetMainRecipeType_ParametersDescriptor = $convert.base64Decode('Ci1HX0dSZWNpcGVTZXJ2aWNlX0dldE1haW5SZWNpcGVUeXBlX1BhcmFtZXRlcnM=');
@$core.Deprecated('Use g_GRecipeService_GetMainRecipeType_ReturnDescriptor instead')
const G_GRecipeService_GetMainRecipeType_Return$json = const {
  '1': 'G_GRecipeService_GetMainRecipeType_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetMainRecipeType_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetMainRecipeType_ReturnDescriptor = $convert.base64Decode('CilHX0dSZWNpcGVTZXJ2aWNlX0dldE1haW5SZWNpcGVUeXBlX1JldHVybhI9CgV2YWx1ZRgBIAEoDjInLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVR5cGVzUgV2YWx1ZQ==');
@$core.Deprecated('Use g_GRecipeService_GetMainRecipeTypeNullable_ParametersDescriptor instead')
const G_GRecipeService_GetMainRecipeTypeNullable_Parameters$json = const {
  '1': 'G_GRecipeService_GetMainRecipeTypeNullable_Parameters',
};

/// Descriptor for `G_GRecipeService_GetMainRecipeTypeNullable_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetMainRecipeTypeNullable_ParametersDescriptor = $convert.base64Decode('CjVHX0dSZWNpcGVTZXJ2aWNlX0dldE1haW5SZWNpcGVUeXBlTnVsbGFibGVfUGFyYW1ldGVycw==');
@$core.Deprecated('Use g_GRecipeService_GetMainRecipeTypeNullable_ReturnDescriptor instead')
const G_GRecipeService_GetMainRecipeTypeNullable_Return$json = const {
  '1': 'G_GRecipeService_GetMainRecipeTypeNullable_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipeTypes_Message', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetMainRecipeTypeNullable_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetMainRecipeTypeNullable_ReturnDescriptor = $convert.base64Decode('CjFHX0dSZWNpcGVTZXJ2aWNlX0dldE1haW5SZWNpcGVUeXBlTnVsbGFibGVfUmV0dXJuEkUKBXZhbHVlGAEgASgLMi8uc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlVHlwZXNfTWVzc2FnZVIFdmFsdWU=');
@$core.Deprecated('Use g_GRecipeService_GetRecipeTypeList_ParametersDescriptor instead')
const G_GRecipeService_GetRecipeTypeList_Parameters$json = const {
  '1': 'G_GRecipeService_GetRecipeTypeList_Parameters',
};

/// Descriptor for `G_GRecipeService_GetRecipeTypeList_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetRecipeTypeList_ParametersDescriptor = $convert.base64Decode('Ci1HX0dSZWNpcGVTZXJ2aWNlX0dldFJlY2lwZVR5cGVMaXN0X1BhcmFtZXRlcnM=');
@$core.Deprecated('Use g_GRecipeService_GetRecipeTypeList_ReturnDescriptor instead')
const G_GRecipeService_GetRecipeTypeList_Return$json = const {
  '1': 'G_GRecipeService_GetRecipeTypeList_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetRecipeTypeList_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetRecipeTypeList_ReturnDescriptor = $convert.base64Decode('CilHX0dSZWNpcGVTZXJ2aWNlX0dldFJlY2lwZVR5cGVMaXN0X1JldHVybhI9CgV2YWx1ZRgBIAMoDjInLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVR5cGVzUgV2YWx1ZQ==');
@$core.Deprecated('Use g_GRecipeService_GetRecipeTypeListNullable_ParametersDescriptor instead')
const G_GRecipeService_GetRecipeTypeListNullable_Parameters$json = const {
  '1': 'G_GRecipeService_GetRecipeTypeListNullable_Parameters',
};

/// Descriptor for `G_GRecipeService_GetRecipeTypeListNullable_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetRecipeTypeListNullable_ParametersDescriptor = $convert.base64Decode('CjVHX0dSZWNpcGVTZXJ2aWNlX0dldFJlY2lwZVR5cGVMaXN0TnVsbGFibGVfUGFyYW1ldGVycw==');
@$core.Deprecated('Use g_GRecipeService_GetRecipeTypeListNullable_ReturnDescriptor instead')
const G_GRecipeService_GetRecipeTypeListNullable_Return$json = const {
  '1': 'G_GRecipeService_GetRecipeTypeListNullable_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetRecipeTypeListNullable_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetRecipeTypeListNullable_ReturnDescriptor = $convert.base64Decode('CjFHX0dSZWNpcGVTZXJ2aWNlX0dldFJlY2lwZVR5cGVMaXN0TnVsbGFibGVfUmV0dXJuEj0KBXZhbHVlGAEgAygOMicuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlVHlwZXNSBXZhbHVl');
@$core.Deprecated('Use g_GRecipeService_GetListOfInts_ParametersDescriptor instead')
const G_GRecipeService_GetListOfInts_Parameters$json = const {
  '1': 'G_GRecipeService_GetListOfInts_Parameters',
};

/// Descriptor for `G_GRecipeService_GetListOfInts_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetListOfInts_ParametersDescriptor = $convert.base64Decode('CilHX0dSZWNpcGVTZXJ2aWNlX0dldExpc3RPZkludHNfUGFyYW1ldGVycw==');
@$core.Deprecated('Use g_GRecipeService_GetListOfInts_ReturnDescriptor instead')
const G_GRecipeService_GetListOfInts_Return$json = const {
  '1': 'G_GRecipeService_GetListOfInts_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetListOfInts_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetListOfInts_ReturnDescriptor = $convert.base64Decode('CiVHX0dSZWNpcGVTZXJ2aWNlX0dldExpc3RPZkludHNfUmV0dXJuEhQKBXZhbHVlGAEgAygFUgV2YWx1ZQ==');
@$core.Deprecated('Use g_GRecipeService_GetListOfIntsNullable_ParametersDescriptor instead')
const G_GRecipeService_GetListOfIntsNullable_Parameters$json = const {
  '1': 'G_GRecipeService_GetListOfIntsNullable_Parameters',
};

/// Descriptor for `G_GRecipeService_GetListOfIntsNullable_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetListOfIntsNullable_ParametersDescriptor = $convert.base64Decode('CjFHX0dSZWNpcGVTZXJ2aWNlX0dldExpc3RPZkludHNOdWxsYWJsZV9QYXJhbWV0ZXJz');
@$core.Deprecated('Use g_GRecipeService_GetListOfIntsNullable_ReturnDescriptor instead')
const G_GRecipeService_GetListOfIntsNullable_Return$json = const {
  '1': 'G_GRecipeService_GetListOfIntsNullable_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_GetListOfIntsNullable_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_GetListOfIntsNullable_ReturnDescriptor = $convert.base64Decode('Ci1HX0dSZWNpcGVTZXJ2aWNlX0dldExpc3RPZkludHNOdWxsYWJsZV9SZXR1cm4SFAoFdmFsdWUYASADKAVSBXZhbHVl');
@$core.Deprecated('Use g_GRecipeService_SearchRecipeStream_ParametersDescriptor instead')
const G_GRecipeService_SearchRecipeStream_Parameters$json = const {
  '1': 'G_GRecipeService_SearchRecipeStream_Parameters',
};

/// Descriptor for `G_GRecipeService_SearchRecipeStream_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_SearchRecipeStream_ParametersDescriptor = $convert.base64Decode('Ci5HX0dSZWNpcGVTZXJ2aWNlX1NlYXJjaFJlY2lwZVN0cmVhbV9QYXJhbWV0ZXJz');
@$core.Deprecated('Use g_GRecipeService_ReceiveStream_ReturnDescriptor instead')
const G_GRecipeService_ReceiveStream_Return$json = const {
  '1': 'G_GRecipeService_ReceiveStream_Return',
};

/// Descriptor for `G_GRecipeService_ReceiveStream_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_ReceiveStream_ReturnDescriptor = $convert.base64Decode('CiVHX0dSZWNpcGVTZXJ2aWNlX1JlY2VpdmVTdHJlYW1fUmV0dXJu');
@$core.Deprecated('Use g_GRecipeService_ReceiveLotsOfArgs_ParametersDescriptor instead')
const G_GRecipeService_ReceiveLotsOfArgs_Parameters$json = const {
  '1': 'G_GRecipeService_ReceiveLotsOfArgs_Parameters',
  '2': const [
    const {'1': 'p_string', '3': 1, '4': 1, '5': 9, '10': 'pString'},
    const {'1': 'p_int', '3': 2, '4': 1, '5': 5, '10': 'pInt'},
    const {'1': 'p_recipe_types', '3': 3, '4': 1, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pRecipeTypes'},
    const {'1': 'p_recipe', '3': 4, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pRecipe'},
    const {'1': 'p_list_strings', '3': 5, '4': 3, '5': 9, '10': 'pListStrings'},
    const {'1': 'p_list_ints', '3': 6, '4': 3, '5': 5, '10': 'pListInts'},
    const {'1': 'p_list_recipe_types', '3': 7, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pListRecipeTypes'},
    const {'1': 'p_list_recipes', '3': 8, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pListRecipes'},
    const {'1': 'p_set_string', '3': 9, '4': 3, '5': 9, '10': 'pSetString'},
    const {'1': 'p_set_int', '3': 10, '4': 3, '5': 5, '10': 'pSetInt'},
    const {'1': 'p_set_recipe_types', '3': 11, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pSetRecipeTypes'},
    const {'1': 'p_set_recipe', '3': 12, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pSetRecipe'},
    const {'1': 'p_iterable_string', '3': 13, '4': 3, '5': 9, '10': 'pIterableString'},
    const {'1': 'p_iterable_int', '3': 14, '4': 3, '5': 5, '10': 'pIterableInt'},
    const {'1': 'p_iterable_recipe_types', '3': 15, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pIterableRecipeTypes'},
    const {'1': 'p_iterable_recipe', '3': 16, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pIterableRecipe'},
  ],
};

/// Descriptor for `G_GRecipeService_ReceiveLotsOfArgs_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_ReceiveLotsOfArgs_ParametersDescriptor = $convert.base64Decode('Ci1HX0dSZWNpcGVTZXJ2aWNlX1JlY2VpdmVMb3RzT2ZBcmdzX1BhcmFtZXRlcnMSGQoIcF9zdHJpbmcYASABKAlSB3BTdHJpbmcSEwoFcF9pbnQYAiABKAVSBHBJbnQSTQoOcF9yZWNpcGVfdHlwZXMYAyABKA4yJy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVUeXBlc1IMcFJlY2lwZVR5cGVzEj0KCHBfcmVjaXBlGAQgASgLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlUgdwUmVjaXBlEiQKDnBfbGlzdF9zdHJpbmdzGAUgAygJUgxwTGlzdFN0cmluZ3MSHgoLcF9saXN0X2ludHMYBiADKAVSCXBMaXN0SW50cxJWChNwX2xpc3RfcmVjaXBlX3R5cGVzGAcgAygOMicuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlVHlwZXNSEHBMaXN0UmVjaXBlVHlwZXMSSAoOcF9saXN0X3JlY2lwZXMYCCADKAsyIi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVSDHBMaXN0UmVjaXBlcxIgCgxwX3NldF9zdHJpbmcYCSADKAlSCnBTZXRTdHJpbmcSGgoJcF9zZXRfaW50GAogAygFUgdwU2V0SW50ElQKEnBfc2V0X3JlY2lwZV90eXBlcxgLIAMoDjInLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVR5cGVzUg9wU2V0UmVjaXBlVHlwZXMSRAoMcF9zZXRfcmVjaXBlGAwgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlUgpwU2V0UmVjaXBlEioKEXBfaXRlcmFibGVfc3RyaW5nGA0gAygJUg9wSXRlcmFibGVTdHJpbmcSJAoOcF9pdGVyYWJsZV9pbnQYDiADKAVSDHBJdGVyYWJsZUludBJeChdwX2l0ZXJhYmxlX3JlY2lwZV90eXBlcxgPIAMoDjInLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVR5cGVzUhRwSXRlcmFibGVSZWNpcGVUeXBlcxJOChFwX2l0ZXJhYmxlX3JlY2lwZRgQIAMoCzIiLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVIPcEl0ZXJhYmxlUmVjaXBl');
@$core.Deprecated('Use g_GRecipeService_ReceiveLotsOfArgs_ReturnDescriptor instead')
const G_GRecipeService_ReceiveLotsOfArgs_Return$json = const {
  '1': 'G_GRecipeService_ReceiveLotsOfArgs_Return',
};

/// Descriptor for `G_GRecipeService_ReceiveLotsOfArgs_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_ReceiveLotsOfArgs_ReturnDescriptor = $convert.base64Decode('CilHX0dSZWNpcGVTZXJ2aWNlX1JlY2VpdmVMb3RzT2ZBcmdzX1JldHVybg==');
@$core.Deprecated('Use g_GRecipeService_ReceiveLotsOfNullableArgs_ParametersDescriptor instead')
const G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters$json = const {
  '1': 'G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters',
  '2': const [
    const {'1': 'p_string', '3': 1, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.StringValue', '10': 'pString'},
    const {'1': 'p_int', '3': 2, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.Int32Value', '10': 'pInt'},
    const {'1': 'p_recipe_types', '3': 3, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipeTypes_Message', '10': 'pRecipeTypes'},
    const {'1': 'p_recipe', '3': 4, '4': 1, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pRecipe'},
    const {'1': 'p_list_strings', '3': 5, '4': 3, '5': 9, '10': 'pListStrings'},
    const {'1': 'p_list_ints', '3': 6, '4': 3, '5': 5, '10': 'pListInts'},
    const {'1': 'p_list_recipe_types', '3': 7, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pListRecipeTypes'},
    const {'1': 'p_list_recipes', '3': 8, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pListRecipes'},
    const {'1': 'p_set_string', '3': 9, '4': 3, '5': 9, '10': 'pSetString'},
    const {'1': 'p_set_int', '3': 10, '4': 3, '5': 5, '10': 'pSetInt'},
    const {'1': 'p_set_recipe_types', '3': 11, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pSetRecipeTypes'},
    const {'1': 'p_set_recipe', '3': 12, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pSetRecipe'},
    const {'1': 'p_iterable_string', '3': 13, '4': 3, '5': 9, '10': 'pIterableString'},
    const {'1': 'p_iterable_int', '3': 14, '4': 3, '5': 5, '10': 'pIterableInt'},
    const {'1': 'p_iterable_recipe_types', '3': 15, '4': 3, '5': 14, '6': '.squarealfa.nozard.techlog.GRecipeTypes', '10': 'pIterableRecipeTypes'},
    const {'1': 'p_iterable_recipe', '3': 16, '4': 3, '5': 11, '6': '.squarealfa.nozard.techlog.GRecipe', '10': 'pIterableRecipe'},
  ],
};

/// Descriptor for `G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_ReceiveLotsOfNullableArgs_ParametersDescriptor = $convert.base64Decode('CjVHX0dSZWNpcGVTZXJ2aWNlX1JlY2VpdmVMb3RzT2ZOdWxsYWJsZUFyZ3NfUGFyYW1ldGVycxJBCghwX3N0cmluZxgBIAEoCzImLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuU3RyaW5nVmFsdWVSB3BTdHJpbmcSOgoFcF9pbnQYAiABKAsyJS5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkludDMyVmFsdWVSBHBJbnQSVQoOcF9yZWNpcGVfdHlwZXMYAyABKAsyLy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVUeXBlc19NZXNzYWdlUgxwUmVjaXBlVHlwZXMSPQoIcF9yZWNpcGUYBCABKAsyIi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVSB3BSZWNpcGUSJAoOcF9saXN0X3N0cmluZ3MYBSADKAlSDHBMaXN0U3RyaW5ncxIeCgtwX2xpc3RfaW50cxgGIAMoBVIJcExpc3RJbnRzElYKE3BfbGlzdF9yZWNpcGVfdHlwZXMYByADKA4yJy5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVUeXBlc1IQcExpc3RSZWNpcGVUeXBlcxJICg5wX2xpc3RfcmVjaXBlcxgIIAMoCzIiLnNxdWFyZWFsZmEubm96YXJkLnRlY2hsb2cuR1JlY2lwZVIMcExpc3RSZWNpcGVzEiAKDHBfc2V0X3N0cmluZxgJIAMoCVIKcFNldFN0cmluZxIaCglwX3NldF9pbnQYCiADKAVSB3BTZXRJbnQSVAoScF9zZXRfcmVjaXBlX3R5cGVzGAsgAygOMicuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlVHlwZXNSD3BTZXRSZWNpcGVUeXBlcxJECgxwX3NldF9yZWNpcGUYDCADKAsyIi5zcXVhcmVhbGZhLm5vemFyZC50ZWNobG9nLkdSZWNpcGVSCnBTZXRSZWNpcGUSKgoRcF9pdGVyYWJsZV9zdHJpbmcYDSADKAlSD3BJdGVyYWJsZVN0cmluZxIkCg5wX2l0ZXJhYmxlX2ludBgOIAMoBVIMcEl0ZXJhYmxlSW50El4KF3BfaXRlcmFibGVfcmVjaXBlX3R5cGVzGA8gAygOMicuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlVHlwZXNSFHBJdGVyYWJsZVJlY2lwZVR5cGVzEk4KEXBfaXRlcmFibGVfcmVjaXBlGBAgAygLMiIuc3F1YXJlYWxmYS5ub3phcmQudGVjaGxvZy5HUmVjaXBlUg9wSXRlcmFibGVSZWNpcGU=');
@$core.Deprecated('Use g_GRecipeService_ReceiveLotsOfNullableArgs_ReturnDescriptor instead')
const G_GRecipeService_ReceiveLotsOfNullableArgs_Return$json = const {
  '1': 'G_GRecipeService_ReceiveLotsOfNullableArgs_Return',
  '2': const [
    const {'1': 'value', '3': 1, '4': 3, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `G_GRecipeService_ReceiveLotsOfNullableArgs_Return`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List g_GRecipeService_ReceiveLotsOfNullableArgs_ReturnDescriptor = $convert.base64Decode('CjFHX0dSZWNpcGVTZXJ2aWNlX1JlY2VpdmVMb3RzT2ZOdWxsYWJsZUFyZ3NfUmV0dXJuEhQKBXZhbHVlGAEgAygFUgV2YWx1ZQ==');
