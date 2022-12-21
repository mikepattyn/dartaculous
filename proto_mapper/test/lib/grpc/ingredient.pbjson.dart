///
//  Generated code. Do not modify.
//  source: ingredient.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use gIngredientDescriptor instead')
const GIngredient$json = const {
  '1': 'GIngredient',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'quantity', '3': 2, '4': 1, '5': 12, '10': 'quantity'},
    const {'1': 'precision', '3': 3, '4': 1, '5': 1, '10': 'precision'},
    const {'1': 'cooking_duration', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'cookingDuration'},
    const {'1': 'main_component', '3': 5, '4': 1, '5': 11, '6': '.GComponent', '10': 'mainComponent'},
    const {'1': 'other_components', '3': 6, '4': 3, '5': 11, '6': '.GComponent', '10': 'otherComponents'},
    const {'1': 'alternative_component', '3': 7, '4': 1, '5': 11, '6': '.GComponent', '10': 'alternativeComponent'},
    const {'1': 'alternative_component_has_value', '3': 8, '4': 1, '5': 8, '10': 'alternativeComponentHasValue'},
    const {'1': 'secondary_components', '3': 9, '4': 3, '5': 11, '6': '.GComponent', '10': 'secondaryComponents'},
    const {'1': 'secondary_components_has_value', '3': 10, '4': 1, '5': 8, '10': 'secondaryComponentsHasValue'},
  ],
};

/// Descriptor for `GIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gIngredientDescriptor = $convert.base64Decode('CgtHSW5ncmVkaWVudBIgCgtkZXNjcmlwdGlvbhgBIAEoCVILZGVzY3JpcHRpb24SGgoIcXVhbnRpdHkYAiABKAxSCHF1YW50aXR5EhwKCXByZWNpc2lvbhgDIAEoAVIJcHJlY2lzaW9uEkQKEGNvb2tpbmdfZHVyYXRpb24YBCABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SD2Nvb2tpbmdEdXJhdGlvbhIyCg5tYWluX2NvbXBvbmVudBgFIAEoCzILLkdDb21wb25lbnRSDW1haW5Db21wb25lbnQSNgoQb3RoZXJfY29tcG9uZW50cxgGIAMoCzILLkdDb21wb25lbnRSD290aGVyQ29tcG9uZW50cxJAChVhbHRlcm5hdGl2ZV9jb21wb25lbnQYByABKAsyCy5HQ29tcG9uZW50UhRhbHRlcm5hdGl2ZUNvbXBvbmVudBJFCh9hbHRlcm5hdGl2ZV9jb21wb25lbnRfaGFzX3ZhbHVlGAggASgIUhxhbHRlcm5hdGl2ZUNvbXBvbmVudEhhc1ZhbHVlEj4KFHNlY29uZGFyeV9jb21wb25lbnRzGAkgAygLMgsuR0NvbXBvbmVudFITc2Vjb25kYXJ5Q29tcG9uZW50cxJDCh5zZWNvbmRhcnlfY29tcG9uZW50c19oYXNfdmFsdWUYCiABKAhSG3NlY29uZGFyeUNvbXBvbmVudHNIYXNWYWx1ZQ==');
@$core.Deprecated('Use gListOfIngredientDescriptor instead')
const GListOfIngredient$json = const {
  '1': 'GListOfIngredient',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GIngredient', '10': 'items'},
  ],
};

/// Descriptor for `GListOfIngredient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfIngredientDescriptor = $convert.base64Decode('ChFHTGlzdE9mSW5ncmVkaWVudBIiCgVpdGVtcxgBIAMoCzIMLkdJbmdyZWRpZW50UgVpdGVtcw==');
