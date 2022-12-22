///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gCategoryDescriptor instead')
const GCategory$json = const {
  '1': 'GCategory',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'main_component', '3': 2, '4': 1, '5': 11, '6': '.GComponent', '10': 'mainComponent'},
    const {'1': 'alternative_component', '3': 4, '4': 1, '5': 11, '6': '.GComponent', '10': 'alternativeComponent'},
    const {'1': 'other_components', '3': 5, '4': 3, '5': 11, '6': '.GComponent', '10': 'otherComponents'},
    const {'1': 'secondary_components', '3': 7, '4': 3, '5': 11, '6': '.GComponent', '10': 'secondaryComponents'},
  ],
};

/// Descriptor for `GCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCategoryDescriptor = $convert.base64Decode('CglHQ2F0ZWdvcnkSFAoFdGl0bGUYASABKAlSBXRpdGxlEjIKDm1haW5fY29tcG9uZW50GAIgASgLMgsuR0NvbXBvbmVudFINbWFpbkNvbXBvbmVudBJAChVhbHRlcm5hdGl2ZV9jb21wb25lbnQYBCABKAsyCy5HQ29tcG9uZW50UhRhbHRlcm5hdGl2ZUNvbXBvbmVudBI2ChBvdGhlcl9jb21wb25lbnRzGAUgAygLMgsuR0NvbXBvbmVudFIPb3RoZXJDb21wb25lbnRzEj4KFHNlY29uZGFyeV9jb21wb25lbnRzGAcgAygLMgsuR0NvbXBvbmVudFITc2Vjb25kYXJ5Q29tcG9uZW50cw==');
@$core.Deprecated('Use gListOfCategoryDescriptor instead')
const GListOfCategory$json = const {
  '1': 'GListOfCategory',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GCategory', '10': 'items'},
  ],
};

/// Descriptor for `GListOfCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfCategoryDescriptor = $convert.base64Decode('Cg9HTGlzdE9mQ2F0ZWdvcnkSIAoFaXRlbXMYASADKAsyCi5HQ2F0ZWdvcnlSBWl0ZW1z');
