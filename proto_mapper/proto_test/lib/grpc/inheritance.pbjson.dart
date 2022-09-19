///
//  Generated code. Do not modify.
//  source: inheritance.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tFieldsOfBranchDescriptor instead')
const TFieldsOfBranch$json = {
  '1': 'TFieldsOfBranch',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TFieldsOfBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tFieldsOfBranchDescriptor = $convert
    .base64Decode('Cg9URmllbGRzT2ZCcmFuY2gSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use tBranchDescriptor instead')
const TBranch$json = {
  '1': 'TBranch',
  '2': [
    {
      '1': 'branch',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.TFieldsOfBranch',
      '9': 0,
      '10': 'branch'
    },
    {'1': 'twig', '3': 2, '4': 1, '5': 11, '6': '.LTwig', '9': 0, '10': 'twig'},
    {'1': 'leaf', '3': 3, '4': 1, '5': 11, '6': '.TLeaf', '9': 0, '10': 'leaf'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `TBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tBranchDescriptor = $convert.base64Decode(
    'CgdUQnJhbmNoEioKBmJyYW5jaBgBIAEoCzIQLlRGaWVsZHNPZkJyYW5jaEgAUgZicmFuY2gSHAoEdHdpZxgCIAEoCzIGLkxUd2lnSABSBHR3aWcSHAoEbGVhZhgDIAEoCzIGLlRMZWFmSABSBGxlYWZCBwoFcHJvcHM=');
@$core.Deprecated('Use tListOfBranchDescriptor instead')
const TListOfBranch$json = {
  '1': 'TListOfBranch',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.TBranch', '10': 'items'},
  ],
};

/// Descriptor for `TListOfBranch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tListOfBranchDescriptor = $convert.base64Decode(
    'Cg1UTGlzdE9mQnJhbmNoEh4KBWl0ZW1zGAEgAygLMgguVEJyYW5jaFIFaXRlbXM=');
@$core.Deprecated('Use lFieldsOfTwigDescriptor instead')
const LFieldsOfTwig$json = {
  '1': 'LFieldsOfTwig',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `LFieldsOfTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lFieldsOfTwigDescriptor =
    $convert.base64Decode('Cg1MRmllbGRzT2ZUd2lnEhIKBG5hbWUYASABKAlSBG5hbWU=');
@$core.Deprecated('Use lTwigDescriptor instead')
const LTwig$json = {
  '1': 'LTwig',
  '2': [
    {
      '1': 'twig',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.LFieldsOfTwig',
      '9': 0,
      '10': 'twig'
    },
    {'1': 'leaf', '3': 2, '4': 1, '5': 11, '6': '.TLeaf', '9': 0, '10': 'leaf'},
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `LTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lTwigDescriptor = $convert.base64Decode(
    'CgVMVHdpZxIkCgR0d2lnGAEgASgLMg4uTEZpZWxkc09mVHdpZ0gAUgR0d2lnEhwKBGxlYWYYAiABKAsyBi5UTGVhZkgAUgRsZWFmQgcKBXByb3Bz');
@$core.Deprecated('Use lListOfTwigDescriptor instead')
const LListOfTwig$json = {
  '1': 'LListOfTwig',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.LTwig', '10': 'items'},
  ],
};

/// Descriptor for `LListOfTwig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lListOfTwigDescriptor = $convert.base64Decode(
    'CgtMTGlzdE9mVHdpZxIcCgVpdGVtcxgBIAMoCzIGLkxUd2lnUgVpdGVtcw==');
@$core.Deprecated('Use tLeafDescriptor instead')
const TLeaf$json = {
  '1': 'TLeaf',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TLeaf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tLeafDescriptor =
    $convert.base64Decode('CgVUTGVhZhISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use tListOfLeafDescriptor instead')
const TListOfLeaf$json = {
  '1': 'TListOfLeaf',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.TLeaf', '10': 'items'},
  ],
};

/// Descriptor for `TListOfLeaf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tListOfLeafDescriptor = $convert.base64Decode(
    'CgtUTGlzdE9mTGVhZhIcCgVpdGVtcxgBIAMoCzIGLlRMZWFmUgVpdGVtcw==');
