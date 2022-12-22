///
//  Generated code. Do not modify.
//  source: lists_host.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/duration.pb.dart' as $6;
import 'google/protobuf/timestamp.pb.dart' as $7;

import 'appliance_type.pbenum.dart' as $8;

class GListsHost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListsHost', createEmptyInstance: create)
    ..p<$core.bool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vbools', $pb.PbFieldType.KB)
    ..p<$core.bool>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvbools', $pb.PbFieldType.KB)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vstrings')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvstrings')
    ..pc<$6.Duration>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdurations', $pb.PbFieldType.PM, subBuilder: $6.Duration.create)
    ..pc<$6.Duration>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdurations', $pb.PbFieldType.PM, subBuilder: $6.Duration.create)
    ..pc<$7.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdatetimes', $pb.PbFieldType.PM, subBuilder: $7.Timestamp.create)
    ..pc<$7.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdatetimes', $pb.PbFieldType.PM, subBuilder: $7.Timestamp.create)
    ..p<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdecimals', $pb.PbFieldType.PY)
    ..p<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdecimals', $pb.PbFieldType.PY)
    ..p<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vints', $pb.PbFieldType.K3)
    ..p<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvints', $pb.PbFieldType.K3)
    ..p<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vdoubles', $pb.PbFieldType.KD)
    ..p<$core.double>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvdoubles', $pb.PbFieldType.KD)
    ..pc<$8.GApplianceType>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vapplianceTypes', $pb.PbFieldType.KE, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values, defaultEnumValue: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT)
    ..pc<$8.GApplianceType>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nvapplianceTypes', $pb.PbFieldType.KE, valueOf: $8.GApplianceType.valueOf, enumValues: $8.GApplianceType.values, defaultEnumValue: $8.GApplianceType.G_APPLIANCE_TYPE_HEAT)
    ..hasRequiredFields = false
  ;

  GListsHost._() : super();
  factory GListsHost({
    $core.Iterable<$core.bool>? vbools,
    $core.Iterable<$core.bool>? nvbools,
    $core.Iterable<$core.String>? vstrings,
    $core.Iterable<$core.String>? nvstrings,
    $core.Iterable<$6.Duration>? vdurations,
    $core.Iterable<$6.Duration>? nvdurations,
    $core.Iterable<$7.Timestamp>? vdatetimes,
    $core.Iterable<$7.Timestamp>? nvdatetimes,
    $core.Iterable<$core.List<$core.int>>? vdecimals,
    $core.Iterable<$core.List<$core.int>>? nvdecimals,
    $core.Iterable<$core.int>? vints,
    $core.Iterable<$core.int>? nvints,
    $core.Iterable<$core.double>? vdoubles,
    $core.Iterable<$core.double>? nvdoubles,
    $core.Iterable<$8.GApplianceType>? vapplianceTypes,
    $core.Iterable<$8.GApplianceType>? nvapplianceTypes,
  }) {
    final _result = create();
    if (vbools != null) {
      _result.vbools.addAll(vbools);
    }
    if (nvbools != null) {
      _result.nvbools.addAll(nvbools);
    }
    if (vstrings != null) {
      _result.vstrings.addAll(vstrings);
    }
    if (nvstrings != null) {
      _result.nvstrings.addAll(nvstrings);
    }
    if (vdurations != null) {
      _result.vdurations.addAll(vdurations);
    }
    if (nvdurations != null) {
      _result.nvdurations.addAll(nvdurations);
    }
    if (vdatetimes != null) {
      _result.vdatetimes.addAll(vdatetimes);
    }
    if (nvdatetimes != null) {
      _result.nvdatetimes.addAll(nvdatetimes);
    }
    if (vdecimals != null) {
      _result.vdecimals.addAll(vdecimals);
    }
    if (nvdecimals != null) {
      _result.nvdecimals.addAll(nvdecimals);
    }
    if (vints != null) {
      _result.vints.addAll(vints);
    }
    if (nvints != null) {
      _result.nvints.addAll(nvints);
    }
    if (vdoubles != null) {
      _result.vdoubles.addAll(vdoubles);
    }
    if (nvdoubles != null) {
      _result.nvdoubles.addAll(nvdoubles);
    }
    if (vapplianceTypes != null) {
      _result.vapplianceTypes.addAll(vapplianceTypes);
    }
    if (nvapplianceTypes != null) {
      _result.nvapplianceTypes.addAll(nvapplianceTypes);
    }
    return _result;
  }
  factory GListsHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListsHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListsHost clone() => GListsHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListsHost copyWith(void Function(GListsHost) updates) => super.copyWith((message) => updates(message as GListsHost)) as GListsHost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListsHost create() => GListsHost._();
  GListsHost createEmptyInstance() => create();
  static $pb.PbList<GListsHost> createRepeated() => $pb.PbList<GListsHost>();
  @$core.pragma('dart2js:noInline')
  static GListsHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListsHost>(create);
  static GListsHost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.bool> get vbools => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.bool> get nvbools => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get vstrings => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get nvstrings => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$6.Duration> get vdurations => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$6.Duration> get nvdurations => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$7.Timestamp> get vdatetimes => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$7.Timestamp> get nvdatetimes => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.List<$core.int>> get vdecimals => $_getList(8);

  @$pb.TagNumber(11)
  $core.List<$core.List<$core.int>> get nvdecimals => $_getList(9);

  @$pb.TagNumber(12)
  $core.List<$core.int> get vints => $_getList(10);

  @$pb.TagNumber(13)
  $core.List<$core.int> get nvints => $_getList(11);

  @$pb.TagNumber(14)
  $core.List<$core.double> get vdoubles => $_getList(12);

  @$pb.TagNumber(15)
  $core.List<$core.double> get nvdoubles => $_getList(13);

  @$pb.TagNumber(16)
  $core.List<$8.GApplianceType> get vapplianceTypes => $_getList(14);

  @$pb.TagNumber(18)
  $core.List<$8.GApplianceType> get nvapplianceTypes => $_getList(15);
}

class GListOfListsHost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfListsHost', createEmptyInstance: create)
    ..pc<GListsHost>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GListsHost.create)
    ..hasRequiredFields = false
  ;

  GListOfListsHost._() : super();
  factory GListOfListsHost({
    $core.Iterable<GListsHost>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfListsHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfListsHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfListsHost clone() => GListOfListsHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfListsHost copyWith(void Function(GListOfListsHost) updates) => super.copyWith((message) => updates(message as GListOfListsHost)) as GListOfListsHost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfListsHost create() => GListOfListsHost._();
  GListOfListsHost createEmptyInstance() => create();
  static $pb.PbList<GListOfListsHost> createRepeated() => $pb.PbList<GListOfListsHost>();
  @$core.pragma('dart2js:noInline')
  static GListOfListsHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfListsHost>(create);
  static GListOfListsHost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GListsHost> get items => $_getList(0);
}

