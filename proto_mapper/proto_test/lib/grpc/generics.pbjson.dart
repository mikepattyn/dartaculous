///
//  Generated code. Do not modify.
//  source: generics.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gScheduleConstraintDescriptor instead')
const GScheduleConstraint$json = {
  '1': 'GScheduleConstraint',
  '2': [
    {
      '1': 'contest_constraint',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.GContestConstraint',
      '9': 0,
      '10': 'contestConstraint'
    },
  ],
  '8': [
    {'1': 'props'},
  ],
};

/// Descriptor for `GScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gScheduleConstraintDescriptor = $convert.base64Decode(
    'ChNHU2NoZWR1bGVDb25zdHJhaW50EkQKEmNvbnRlc3RfY29uc3RyYWludBgBIAEoCzITLkdDb250ZXN0Q29uc3RyYWludEgAUhFjb250ZXN0Q29uc3RyYWludEIHCgVwcm9wcw==');
@$core.Deprecated('Use gListOfScheduleConstraintDescriptor instead')
const GListOfScheduleConstraint$json = {
  '1': 'GListOfScheduleConstraint',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GScheduleConstraint',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfScheduleConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfScheduleConstraintDescriptor =
    $convert.base64Decode(
        'ChlHTGlzdE9mU2NoZWR1bGVDb25zdHJhaW50EioKBWl0ZW1zGAEgAygLMhQuR1NjaGVkdWxlQ29uc3RyYWludFIFaXRlbXM=');
@$core.Deprecated('Use gConstraintAddedDescriptor instead')
const GConstraintAdded$json = {
  '1': 'GConstraintAdded',
  '2': [
    {
      '1': 'contest_schedule_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'contestScheduleId'
    },
    {
      '1': 'constraint',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.GScheduleConstraint',
      '10': 'constraint'
    },
  ],
};

/// Descriptor for `GConstraintAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gConstraintAddedDescriptor = $convert.base64Decode(
    'ChBHQ29uc3RyYWludEFkZGVkEi4KE2NvbnRlc3Rfc2NoZWR1bGVfaWQYASABKAlSEWNvbnRlc3RTY2hlZHVsZUlkEjQKCmNvbnN0cmFpbnQYAiABKAsyFC5HU2NoZWR1bGVDb25zdHJhaW50Ugpjb25zdHJhaW50');
@$core.Deprecated('Use gListOfConstraintAddedDescriptor instead')
const GListOfConstraintAdded$json = {
  '1': 'GListOfConstraintAdded',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GConstraintAdded',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfConstraintAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfConstraintAddedDescriptor =
    $convert.base64Decode(
        'ChZHTGlzdE9mQ29uc3RyYWludEFkZGVkEicKBWl0ZW1zGAEgAygLMhEuR0NvbnN0cmFpbnRBZGRlZFIFaXRlbXM=');
@$core.Deprecated('Use gContestConstraintDescriptor instead')
const GContestConstraint$json = {
  '1': 'GContestConstraint',
};

/// Descriptor for `GContestConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gContestConstraintDescriptor =
    $convert.base64Decode('ChJHQ29udGVzdENvbnN0cmFpbnQ=');
@$core.Deprecated('Use gListOfContestConstraintDescriptor instead')
const GListOfContestConstraint$json = {
  '1': 'GListOfContestConstraint',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.GContestConstraint',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GListOfContestConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gListOfContestConstraintDescriptor =
    $convert.base64Decode(
        'ChhHTGlzdE9mQ29udGVzdENvbnN0cmFpbnQSKQoFaXRlbXMYASADKAsyEy5HQ29udGVzdENvbnN0cmFpbnRSBWl0ZW1z');
