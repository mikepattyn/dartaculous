///
//  Generated code. Do not modify.
//  source: utensils.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gKnifeTypeDescriptor instead')
const GKnifeType$json = {
  '1': 'GKnifeType',
  '2': [
    {'1': 'G_KNIFE_TYPE_CHEFS_KNIFE', '2': 0},
    {'1': 'G_KNIFE_TYPE_PARING_KNIFE', '2': 1},
    {'1': 'G_KNIFE_TYPE_BREAD_KNIFE', '2': 2},
  ],
};

/// Descriptor for `GKnifeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gKnifeTypeDescriptor = $convert.base64Decode(
    'CgpHS25pZmVUeXBlEhwKGEdfS05JRkVfVFlQRV9DSEVGU19LTklGRRAAEh0KGUdfS05JRkVfVFlQRV9QQVJJTkdfS05JRkUQARIcChhHX0tOSUZFX1RZUEVfQlJFQURfS05JRkUQAg==');
@$core.Deprecated('Use gChefTypeDescriptor instead')
const GChefType$json = {
  '1': 'GChefType',
  '2': [
    {'1': 'G_CHEF_TYPE_SENIOR_CHEF', '2': 0},
    {'1': 'G_CHEF_TYPE_SOUS_CHEF', '2': 1},
    {'1': 'G_CHEF_TYPE_PASTRY_CHEF', '2': 2},
    {'1': 'G_CHEF_TYPE_FISH_CHEF', '2': 3},
  ],
};

/// Descriptor for `GChefType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gChefTypeDescriptor = $convert.base64Decode(
    'CglHQ2hlZlR5cGUSGwoXR19DSEVGX1RZUEVfU0VOSU9SX0NIRUYQABIZChVHX0NIRUZfVFlQRV9TT1VTX0NIRUYQARIbChdHX0NIRUZfVFlQRV9QQVNUUllfQ0hFRhACEhkKFUdfQ0hFRl9UWVBFX0ZJU0hfQ0hFRhAD');
@$core.Deprecated('Use gKnifeDescriptor instead')
const GKnife$json = {
  '1': 'GKnife',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.GKnifeType', '10': 'type'},
  ],
};

/// Descriptor for `GKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeDescriptor = $convert.base64Decode(
    'CgZHS25pZmUSEgoEbmFtZRgBIAEoCVIEbmFtZRIfCgR0eXBlGAIgASgOMgsuR0tuaWZlVHlwZVIEdHlwZQ==');
@$core.Deprecated('Use gListOfKnifeDescriptor instead')
const GListOfKnife$json = {
  '1': 'GListOfKnife',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GKnife', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKnife`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKnifeDescriptor = $convert.base64Decode(
    'CgxHTGlzdE9mS25pZmUSHQoFaXRlbXMYASADKAsyBy5HS25pZmVSBWl0ZW1z');
@$core.Deprecated('Use gGarlicPressDescriptor instead')
const GGarlicPress$json = {
  '1': 'GGarlicPress',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'machine_washable', '3': 2, '4': 1, '5': 8, '10': 'machineWashable'},
  ],
};

/// Descriptor for `GGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gGarlicPressDescriptor = $convert.base64Decode(
    'CgxHR2FybGljUHJlc3MSEgoEbmFtZRgBIAEoCVIEbmFtZRIpChBtYWNoaW5lX3dhc2hhYmxlGAIgASgIUg9tYWNoaW5lV2FzaGFibGU=');
@$core.Deprecated('Use gListOfGarlicPressDescriptor instead')
const GListOfGarlicPress$json = {
  '1': 'GListOfGarlicPress',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GGarlicPress',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfGarlicPress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfGarlicPressDescriptor = $convert.base64Decode(
    'ChJHTGlzdE9mR2FybGljUHJlc3MSIwoFaXRlbXMYASADKAsyDS5HR2FybGljUHJlc3NSBWl0ZW1z');
@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen$json = {
  '1': 'GKitchen',
  '2': [
    {
      '1': 'recipeList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GRecipe',
      '10': 'recipeList'
    },
    {
      '1': 'recipeMap',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GKitchen.RecipeMapEntry',
      '10': 'recipeMap'
    },
    {
      '1': 'nextInspectionDate',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'nextInspectionDate'
    },
  ],
  '3': [GKitchen_RecipeMapEntry$json],
};

@$core.Deprecated('Use gKitchenDescriptor instead')
const GKitchen_RecipeMapEntry$json = {
  '1': 'RecipeMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.GRecipe', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKitchenDescriptor = $convert.base64Decode(
    'CghHS2l0Y2hlbhIoCgpyZWNpcGVMaXN0GAEgAygLMgguR1JlY2lwZVIKcmVjaXBlTGlzdBI2CglyZWNpcGVNYXAYAiADKAsyGC5HS2l0Y2hlbi5SZWNpcGVNYXBFbnRyeVIJcmVjaXBlTWFwEi4KEm5leHRJbnNwZWN0aW9uRGF0ZRgDIAEoA1ISbmV4dEluc3BlY3Rpb25EYXRlGkYKDlJlY2lwZU1hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh4KBXZhbHVlGAIgASgLMgguR1JlY2lwZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use gListOfKitchenDescriptor instead')
const GListOfKitchen$json = {
  '1': 'GListOfKitchen',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GKitchen', '10': 'items'},
  ],
};

/// Descriptor for `GListOfKitchen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKitchenDescriptor = $convert.base64Decode(
    'Cg5HTGlzdE9mS2l0Y2hlbhIfCgVpdGVtcxgBIAMoCzIJLkdLaXRjaGVuUgVpdGVtcw==');
@$core.Deprecated('Use gChefDescriptor instead')
const GChef$json = {
  '1': 'GChef',
  '2': [
    {
      '1': 'favorite_recipe',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'favoriteRecipe'
    },
    {
      '1': 'favorite_recipe_has_value',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'favoriteRecipeHasValue'
    },
    {
      '1': 'favorite_knife',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.GKnife',
      '10': 'favoriteKnife'
    },
    {
      '1': 'favorite_knife_has_value',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'favoriteKnifeHasValue'
    },
    {
      '1': 'favorite_appliance_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'favoriteApplianceType'
    },
    {'1': 'favorite_words', '3': 6, '4': 3, '5': 9, '10': 'favoriteWords'},
    {'1': 'birthdate', '3': 7, '4': 1, '5': 3, '10': 'birthdate'},
    {'1': 'shelf_life', '3': 8, '4': 1, '5': 1, '10': 'shelfLife'},
    {
      '1': 'shelf_life_has_value',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'shelfLifeHasValue'
    },
  ],
};

/// Descriptor for `GChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gChefDescriptor = $convert.base64Decode(
    'CgVHQ2hlZhIxCg9mYXZvcml0ZV9yZWNpcGUYASABKAsyCC5HUmVjaXBlUg5mYXZvcml0ZVJlY2lwZRI5ChlmYXZvcml0ZV9yZWNpcGVfaGFzX3ZhbHVlGAIgASgIUhZmYXZvcml0ZVJlY2lwZUhhc1ZhbHVlEi4KDmZhdm9yaXRlX2tuaWZlGAMgASgLMgcuR0tuaWZlUg1mYXZvcml0ZUtuaWZlEjcKGGZhdm9yaXRlX2tuaWZlX2hhc192YWx1ZRgEIAEoCFIVZmF2b3JpdGVLbmlmZUhhc1ZhbHVlEkcKF2Zhdm9yaXRlX2FwcGxpYW5jZV90eXBlGAUgASgOMg8uR0FwcGxpYW5jZVR5cGVSFWZhdm9yaXRlQXBwbGlhbmNlVHlwZRIlCg5mYXZvcml0ZV93b3JkcxgGIAMoCVINZmF2b3JpdGVXb3JkcxIcCgliaXJ0aGRhdGUYByABKANSCWJpcnRoZGF0ZRIdCgpzaGVsZl9saWZlGAggASgBUglzaGVsZkxpZmUSLwoUc2hlbGZfbGlmZV9oYXNfdmFsdWUYCSABKAhSEXNoZWxmTGlmZUhhc1ZhbHVl');
@$core.Deprecated('Use gListOfChefDescriptor instead')
const GListOfChef$json = {
  '1': 'GListOfChef',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GChef', '10': 'items'},
  ],
};

/// Descriptor for `GListOfChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfChefDescriptor = $convert.base64Decode(
    'CgtHTGlzdE9mQ2hlZhIcCgVpdGVtcxgBIAMoCzIGLkdDaGVmUgVpdGVtcw==');
@$core.Deprecated('Use gSousChefDescriptor instead')
const GSousChef$json = {
  '1': 'GSousChef',
  '2': [
    {
      '1': 'favorite_recipe',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'favoriteRecipe'
    },
    {
      '1': 'favorite_recipe_has_value',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'favoriteRecipeHasValue'
    },
    {
      '1': 'favorite_knife',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.GKnife',
      '10': 'favoriteKnife'
    },
    {
      '1': 'favorite_knife_has_value',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'favoriteKnifeHasValue'
    },
    {
      '1': 'favorite_appliance_type',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'favoriteApplianceType'
    },
    {'1': 'favorite_words', '3': 6, '4': 3, '5': 9, '10': 'favoriteWords'},
    {'1': 'birthdate', '3': 7, '4': 1, '5': 3, '10': 'birthdate'},
    {'1': 'shelf_life', '3': 8, '4': 1, '5': 1, '10': 'shelfLife'},
    {
      '1': 'shelf_life_has_value',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'shelfLifeHasValue'
    },
  ],
};

/// Descriptor for `GSousChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gSousChefDescriptor = $convert.base64Decode(
    'CglHU291c0NoZWYSMQoPZmF2b3JpdGVfcmVjaXBlGAEgASgLMgguR1JlY2lwZVIOZmF2b3JpdGVSZWNpcGUSOQoZZmF2b3JpdGVfcmVjaXBlX2hhc192YWx1ZRgCIAEoCFIWZmF2b3JpdGVSZWNpcGVIYXNWYWx1ZRIuCg5mYXZvcml0ZV9rbmlmZRgDIAEoCzIHLkdLbmlmZVINZmF2b3JpdGVLbmlmZRI3ChhmYXZvcml0ZV9rbmlmZV9oYXNfdmFsdWUYBCABKAhSFWZhdm9yaXRlS25pZmVIYXNWYWx1ZRJHChdmYXZvcml0ZV9hcHBsaWFuY2VfdHlwZRgFIAEoDjIPLkdBcHBsaWFuY2VUeXBlUhVmYXZvcml0ZUFwcGxpYW5jZVR5cGUSJQoOZmF2b3JpdGVfd29yZHMYBiADKAlSDWZhdm9yaXRlV29yZHMSHAoJYmlydGhkYXRlGAcgASgDUgliaXJ0aGRhdGUSHQoKc2hlbGZfbGlmZRgIIAEoAVIJc2hlbGZMaWZlEi8KFHNoZWxmX2xpZmVfaGFzX3ZhbHVlGAkgASgIUhFzaGVsZkxpZmVIYXNWYWx1ZQ==');
@$core.Deprecated('Use gListOfSousChefDescriptor instead')
const GListOfSousChef$json = {
  '1': 'GListOfSousChef',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GSousChef', '10': 'items'},
  ],
};

/// Descriptor for `GListOfSousChef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfSousChefDescriptor = $convert.base64Decode(
    'Cg9HTGlzdE9mU291c0NoZWYSIAoFaXRlbXMYASADKAsyCi5HU291c0NoZWZSBWl0ZW1z');
@$core.Deprecated('Use gKnifeMasterDescriptor instead')
const GKnifeMaster$json = {
  '1': 'GKnifeMaster',
  '2': [
    {
      '1': 'favorite_recipe',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GRecipe',
      '10': 'favoriteRecipe'
    },
    {
      '1': 'favorite_recipe_has_value',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'favoriteRecipeHasValue'
    },
    {
      '1': 'favorite_appliance_type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.GApplianceType',
      '10': 'favoriteApplianceType'
    },
    {'1': 'favorite_words', '3': 4, '4': 3, '5': 9, '10': 'favoriteWords'},
    {'1': 'birthdate', '3': 5, '4': 1, '5': 3, '10': 'birthdate'},
    {'1': 'shelf_life', '3': 6, '4': 1, '5': 1, '10': 'shelfLife'},
    {
      '1': 'shelf_life_has_value',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'shelfLifeHasValue'
    },
    {
      '1': 'favorite_knife',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.GKnife',
      '10': 'favoriteKnife'
    },
  ],
};

/// Descriptor for `GKnifeMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gKnifeMasterDescriptor = $convert.base64Decode(
    'CgxHS25pZmVNYXN0ZXISMQoPZmF2b3JpdGVfcmVjaXBlGAEgASgLMgguR1JlY2lwZVIOZmF2b3JpdGVSZWNpcGUSOQoZZmF2b3JpdGVfcmVjaXBlX2hhc192YWx1ZRgCIAEoCFIWZmF2b3JpdGVSZWNpcGVIYXNWYWx1ZRJHChdmYXZvcml0ZV9hcHBsaWFuY2VfdHlwZRgDIAEoDjIPLkdBcHBsaWFuY2VUeXBlUhVmYXZvcml0ZUFwcGxpYW5jZVR5cGUSJQoOZmF2b3JpdGVfd29yZHMYBCADKAlSDWZhdm9yaXRlV29yZHMSHAoJYmlydGhkYXRlGAUgASgDUgliaXJ0aGRhdGUSHQoKc2hlbGZfbGlmZRgGIAEoAVIJc2hlbGZMaWZlEi8KFHNoZWxmX2xpZmVfaGFzX3ZhbHVlGAcgASgIUhFzaGVsZkxpZmVIYXNWYWx1ZRIuCg5mYXZvcml0ZV9rbmlmZRgIIAEoCzIHLkdLbmlmZVINZmF2b3JpdGVLbmlmZQ==');
@$core.Deprecated('Use gListOfKnifeMasterDescriptor instead')
const GListOfKnifeMaster$json = {
  '1': 'GListOfKnifeMaster',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GKnifeMaster',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfKnifeMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfKnifeMasterDescriptor = $convert.base64Decode(
    'ChJHTGlzdE9mS25pZmVNYXN0ZXISIwoFaXRlbXMYASADKAsyDS5HS25pZmVNYXN0ZXJSBWl0ZW1z');
@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory$json = {
  '1': 'GInventory',
  '2': [
    {
      '1': 'number_of_things',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GInventory.NumberOfThingsEntry',
      '10': 'numberOfThings'
    },
    {
      '1': 'recipes_by_name',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.GInventory.RecipesByNameEntry',
      '10': 'recipesByName'
    },
    {'1': 'time_span', '3': 3, '4': 1, '5': 1, '10': 'timeSpan'},
    {
      '1': 'time_span_has_value',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'timeSpanHasValue'
    },
  ],
  '3': [
    GInventory_NumberOfThingsEntry$json,
    GInventory_RecipesByNameEntry$json
  ],
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_NumberOfThingsEntry$json = {
  '1': 'NumberOfThingsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use gInventoryDescriptor instead')
const GInventory_RecipesByNameEntry$json = {
  '1': 'RecipesByNameEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.GRecipe', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gInventoryDescriptor = $convert.base64Decode(
    'CgpHSW52ZW50b3J5EkkKEG51bWJlcl9vZl90aGluZ3MYASADKAsyHy5HSW52ZW50b3J5Lk51bWJlck9mVGhpbmdzRW50cnlSDm51bWJlck9mVGhpbmdzEkYKD3JlY2lwZXNfYnlfbmFtZRgCIAMoCzIeLkdJbnZlbnRvcnkuUmVjaXBlc0J5TmFtZUVudHJ5Ug1yZWNpcGVzQnlOYW1lEhsKCXRpbWVfc3BhbhgDIAEoAVIIdGltZVNwYW4SLQoTdGltZV9zcGFuX2hhc192YWx1ZRgEIAEoCFIQdGltZVNwYW5IYXNWYWx1ZRpBChNOdW1iZXJPZlRoaW5nc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAEaSgoSUmVjaXBlc0J5TmFtZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh4KBXZhbHVlGAIgASgLMgguR1JlY2lwZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use gListOfInventoryDescriptor instead')
const GListOfInventory$json = {
  '1': 'GListOfInventory',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.GInventory', '10': 'items'},
  ],
};

/// Descriptor for `GListOfInventory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfInventoryDescriptor = $convert.base64Decode(
    'ChBHTGlzdE9mSW52ZW50b3J5EiEKBWl0ZW1zGAEgAygLMgsuR0ludmVudG9yeVIFaXRlbXM=');
@$core.Deprecated('Use gPrecisionSubjectDescriptor instead')
const GPrecisionSubject$json = {
  '1': 'GPrecisionSubject',
  '2': [
    {'1': 'date_property', '3': 1, '4': 1, '5': 3, '10': 'dateProperty'},
    {
      '1': 'duration_property',
      '3': 2,
      '4': 1,
      '5': 1,
      '10': 'durationProperty'
    },
  ],
};

/// Descriptor for `GPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gPrecisionSubjectDescriptor = $convert.base64Decode(
    'ChFHUHJlY2lzaW9uU3ViamVjdBIjCg1kYXRlX3Byb3BlcnR5GAEgASgDUgxkYXRlUHJvcGVydHkSKwoRZHVyYXRpb25fcHJvcGVydHkYAiABKAFSEGR1cmF0aW9uUHJvcGVydHk=');
@$core.Deprecated('Use gListOfPrecisionSubjectDescriptor instead')
const GListOfPrecisionSubject$json = {
  '1': 'GListOfPrecisionSubject',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GPrecisionSubject',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfPrecisionSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfPrecisionSubjectDescriptor =
    $convert.base64Decode(
        'ChdHTGlzdE9mUHJlY2lzaW9uU3ViamVjdBIoCgVpdGVtcxgBIAMoCzISLkdQcmVjaXNpb25TdWJqZWN0UgVpdGVtcw==');
@$core.Deprecated('Use nullableGKnifeTypeDescriptor instead')
const NullableGKnifeType$json = {
  '1': 'NullableGKnifeType',
  '2': [
    {'1': 'has_value', '3': 1, '4': 1, '5': 8, '10': 'hasValue'},
    {'1': 'value', '3': 2, '4': 1, '5': 14, '6': '.GKnifeType', '10': 'value'},
  ],
};

/// Descriptor for `NullableGKnifeType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullableGKnifeTypeDescriptor = $convert.base64Decode(
    'ChJOdWxsYWJsZUdLbmlmZVR5cGUSGwoJaGFzX3ZhbHVlGAEgASgIUghoYXNWYWx1ZRIhCgV2YWx1ZRgCIAEoDjILLkdLbmlmZVR5cGVSBXZhbHVl');
@$core.Deprecated('Use nullableGChefTypeDescriptor instead')
const NullableGChefType$json = {
  '1': 'NullableGChefType',
  '2': [
    {'1': 'has_value', '3': 1, '4': 1, '5': 8, '10': 'hasValue'},
    {'1': 'value', '3': 2, '4': 1, '5': 14, '6': '.GChefType', '10': 'value'},
  ],
};

/// Descriptor for `NullableGChefType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullableGChefTypeDescriptor = $convert.base64Decode(
    'ChFOdWxsYWJsZUdDaGVmVHlwZRIbCgloYXNfdmFsdWUYASABKAhSCGhhc1ZhbHVlEiAKBXZhbHVlGAIgASgOMgouR0NoZWZUeXBlUgV2YWx1ZQ==');
