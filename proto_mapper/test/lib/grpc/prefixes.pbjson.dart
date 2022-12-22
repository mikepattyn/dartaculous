///
//  Generated code. Do not modify.
//  source: prefixes.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use aFoodCategoryDescriptor instead')
const AFoodCategory$json = const {
  '1': 'AFoodCategory',
  '2': const [
    const {'1': 'A_FOOD_CATEGORY_VEGETABLES', '2': 0},
    const {'1': 'A_FOOD_CATEGORY_MEAT', '2': 1},
    const {'1': 'A_FOOD_CATEGORY_OTHER', '2': 2},
  ],
};

/// Descriptor for `AFoodCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aFoodCategoryDescriptor = $convert.base64Decode('Cg1BRm9vZENhdGVnb3J5Eh4KGkFfRk9PRF9DQVRFR09SWV9WRUdFVEFCTEVTEAASGAoUQV9GT09EX0NBVEVHT1JZX01FQVQQARIZChVBX0ZPT0RfQ0FURUdPUllfT1RIRVIQAg==');
@$core.Deprecated('Use bStaffDescriptor instead')
const BStaff$json = const {
  '1': 'BStaff',
  '2': const [
    const {'1': 'chef', '3': 1, '4': 1, '5': 11, '6': '.CChef', '9': 0, '10': 'chef'},
    const {'1': 'waiter', '3': 2, '4': 1, '5': 11, '6': '.GWaiter', '9': 0, '10': 'waiter'},
    const {'1': 'manager', '3': 3, '4': 1, '5': 11, '6': '.MManager', '9': 0, '10': 'manager'},
  ],
  '8': const [
    const {'1': 'props'},
  ],
};

/// Descriptor for `BStaff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bStaffDescriptor = $convert.base64Decode('CgZCU3RhZmYSHAoEY2hlZhgBIAEoCzIGLkNDaGVmSABSBGNoZWYSIgoGd2FpdGVyGAIgASgLMgguR1dhaXRlckgAUgZ3YWl0ZXISJQoHbWFuYWdlchgDIAEoCzIJLk1NYW5hZ2VySABSB21hbmFnZXJCBwoFcHJvcHM=');
@$core.Deprecated('Use bListOfStaffDescriptor instead')
const BListOfStaff$json = const {
  '1': 'BListOfStaff',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.BStaff', '10': 'items'},
  ],
};

/// Descriptor for `BListOfStaff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bListOfStaffDescriptor = $convert.base64Decode('CgxCTGlzdE9mU3RhZmYSHQoFaXRlbXMYASADKAsyBy5CU3RhZmZSBWl0ZW1z');
@$core.Deprecated('Use cChefDescriptor instead')
const CChef$json = const {
  '1': 'CChef',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'favorite_food', '3': 2, '4': 1, '5': 14, '6': '.AFoodCategory', '10': 'favoriteFood'},
    const {'1': 'manager', '3': 3, '4': 1, '5': 11, '6': '.MManager', '10': 'manager'},
  ],
};

/// Descriptor for `CChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cChefDescriptor = $convert.base64Decode('CgVDQ2hlZhISCgRuYW1lGAEgASgJUgRuYW1lEjMKDWZhdm9yaXRlX2Zvb2QYAiABKA4yDi5BRm9vZENhdGVnb3J5UgxmYXZvcml0ZUZvb2QSIwoHbWFuYWdlchgDIAEoCzIJLk1NYW5hZ2VyUgdtYW5hZ2Vy');
@$core.Deprecated('Use cListOfChefDescriptor instead')
const CListOfChef$json = const {
  '1': 'CListOfChef',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.CChef', '10': 'items'},
  ],
};

/// Descriptor for `CListOfChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cListOfChefDescriptor = $convert.base64Decode('CgtDTGlzdE9mQ2hlZhIcCgVpdGVtcxgBIAMoCzIGLkNDaGVmUgVpdGVtcw==');
@$core.Deprecated('Use gWaiterDescriptor instead')
const GWaiter$json = const {
  '1': 'GWaiter',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'favorite_food', '3': 2, '4': 1, '5': 14, '6': '.AFoodCategory', '10': 'favoriteFood'},
    const {'1': 'manager', '3': 3, '4': 1, '5': 11, '6': '.MManager', '10': 'manager'},
    const {'1': 'table', '3': 4, '4': 3, '5': 11, '6': '.TTable', '10': 'table'},
  ],
};

/// Descriptor for `GWaiter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gWaiterDescriptor = $convert.base64Decode('CgdHV2FpdGVyEhIKBG5hbWUYASABKAlSBG5hbWUSMwoNZmF2b3JpdGVfZm9vZBgCIAEoDjIOLkFGb29kQ2F0ZWdvcnlSDGZhdm9yaXRlRm9vZBIjCgdtYW5hZ2VyGAMgASgLMgkuTU1hbmFnZXJSB21hbmFnZXISHQoFdGFibGUYBCADKAsyBy5UVGFibGVSBXRhYmxl');
@$core.Deprecated('Use gListOfWaiterDescriptor instead')
const GListOfWaiter$json = const {
  '1': 'GListOfWaiter',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GWaiter', '10': 'items'},
  ],
};

/// Descriptor for `GListOfWaiter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfWaiterDescriptor = $convert.base64Decode('Cg1HTGlzdE9mV2FpdGVyEh4KBWl0ZW1zGAEgAygLMgguR1dhaXRlclIFaXRlbXM=');
@$core.Deprecated('Use mManagerDescriptor instead')
const MManager$json = const {
  '1': 'MManager',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'favorite_food', '3': 2, '4': 1, '5': 14, '6': '.AFoodCategory', '10': 'favoriteFood'},
  ],
};

/// Descriptor for `MManager`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mManagerDescriptor = $convert.base64Decode('CghNTWFuYWdlchISCgRuYW1lGAEgASgJUgRuYW1lEjMKDWZhdm9yaXRlX2Zvb2QYAiABKA4yDi5BRm9vZENhdGVnb3J5UgxmYXZvcml0ZUZvb2Q=');
@$core.Deprecated('Use mListOfManagerDescriptor instead')
const MListOfManager$json = const {
  '1': 'MListOfManager',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.MManager', '10': 'items'},
  ],
};

/// Descriptor for `MListOfManager`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mListOfManagerDescriptor = $convert.base64Decode('Cg5NTGlzdE9mTWFuYWdlchIfCgVpdGVtcxgBIAMoCzIJLk1NYW5hZ2VyUgVpdGVtcw==');
@$core.Deprecated('Use tTableDescriptor instead')
const TTable$json = const {
  '1': 'TTable',
  '2': const [
    const {'1': 'number', '3': 1, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `TTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tTableDescriptor = $convert.base64Decode('CgZUVGFibGUSFgoGbnVtYmVyGAEgASgFUgZudW1iZXI=');
@$core.Deprecated('Use tListOfTableDescriptor instead')
const TListOfTable$json = const {
  '1': 'TListOfTable',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.TTable', '10': 'items'},
  ],
};

/// Descriptor for `TListOfTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tListOfTableDescriptor = $convert.base64Decode('CgxUTGlzdE9mVGFibGUSHQoFaXRlbXMYASADKAsyBy5UVGFibGVSBWl0ZW1z');
@$core.Deprecated('Use rRestaurantDescriptor instead')
const RRestaurant$json = const {
  '1': 'RRestaurant',
  '2': const [
    const {'1': 'waiters', '3': 1, '4': 3, '5': 11, '6': '.GWaiter', '10': 'waiters'},
    const {'1': 'chefs', '3': 2, '4': 3, '5': 11, '6': '.CChef', '10': 'chefs'},
  ],
};

/// Descriptor for `RRestaurant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rRestaurantDescriptor = $convert.base64Decode('CgtSUmVzdGF1cmFudBIiCgd3YWl0ZXJzGAEgAygLMgguR1dhaXRlclIHd2FpdGVycxIcCgVjaGVmcxgCIAMoCzIGLkNDaGVmUgVjaGVmcw==');
@$core.Deprecated('Use rListOfRestaurantDescriptor instead')
const RListOfRestaurant$json = const {
  '1': 'RListOfRestaurant',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.RRestaurant', '10': 'items'},
  ],
};

/// Descriptor for `RListOfRestaurant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rListOfRestaurantDescriptor = $convert.base64Decode('ChFSTGlzdE9mUmVzdGF1cmFudBIiCgVpdGVtcxgBIAMoCzIMLlJSZXN0YXVyYW50UgVpdGVtcw==');
@$core.Deprecated('Use wCustomerDescriptor instead')
const WCustomer$json = const {
  '1': 'WCustomer',
  '2': const [
    const {'1': 'favorite_restaurant', '3': 1, '4': 1, '5': 11, '6': '.RRestaurant', '10': 'favoriteRestaurant'},
    const {'1': 'favorite_chef', '3': 2, '4': 1, '5': 11, '6': '.CChef', '10': 'favoriteChef'},
  ],
};

/// Descriptor for `WCustomer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wCustomerDescriptor = $convert.base64Decode('CglXQ3VzdG9tZXISPQoTZmF2b3JpdGVfcmVzdGF1cmFudBgBIAEoCzIMLlJSZXN0YXVyYW50UhJmYXZvcml0ZVJlc3RhdXJhbnQSKwoNZmF2b3JpdGVfY2hlZhgCIAEoCzIGLkNDaGVmUgxmYXZvcml0ZUNoZWY=');
@$core.Deprecated('Use wListOfCustomerDescriptor instead')
const WListOfCustomer$json = const {
  '1': 'WListOfCustomer',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.WCustomer', '10': 'items'},
  ],
};

/// Descriptor for `WListOfCustomer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wListOfCustomerDescriptor = $convert.base64Decode('Cg9XTGlzdE9mQ3VzdG9tZXISIAoFaXRlbXMYASADKAsyCi5XQ3VzdG9tZXJSBWl0ZW1z');
@$core.Deprecated('Use aFoodCategory_MessageDescriptor instead')
const AFoodCategory_Message$json = const {
  '1': 'AFoodCategory_Message',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 14, '6': '.AFoodCategory', '10': 'value'},
  ],
};

/// Descriptor for `AFoodCategory_Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aFoodCategory_MessageDescriptor = $convert.base64Decode('ChVBRm9vZENhdGVnb3J5X01lc3NhZ2USJAoFdmFsdWUYASABKA4yDi5BRm9vZENhdGVnb3J5UgV2YWx1ZQ==');
