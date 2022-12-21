///
//  Generated code. Do not modify.
//  source: polymorphism/bicycle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GBicycle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBicycle', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wheelDiamater', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  GBicycle._() : super();
  factory GBicycle({
    $core.int? weight,
    $core.List<$core.int>? wheelDiamater,
    $core.String? key,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    if (wheelDiamater != null) {
      _result.wheelDiamater = wheelDiamater;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GBicycle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBicycle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBicycle clone() => GBicycle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBicycle copyWith(void Function(GBicycle) updates) => super.copyWith((message) => updates(message as GBicycle)) as GBicycle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBicycle create() => GBicycle._();
  GBicycle createEmptyInstance() => create();
  static $pb.PbList<GBicycle> createRepeated() => $pb.PbList<GBicycle>();
  @$core.pragma('dart2js:noInline')
  static GBicycle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBicycle>(create);
  static GBicycle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(1)
  set weight($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get wheelDiamater => $_getN(1);
  @$pb.TagNumber(2)
  set wheelDiamater($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWheelDiamater() => $_has(1);
  @$pb.TagNumber(2)
  void clearWheelDiamater() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
}

class GListOfBicycle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfBicycle', createEmptyInstance: create)
    ..pc<GBicycle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GBicycle.create)
    ..hasRequiredFields = false
  ;

  GListOfBicycle._() : super();
  factory GListOfBicycle({
    $core.Iterable<GBicycle>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfBicycle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfBicycle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfBicycle clone() => GListOfBicycle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfBicycle copyWith(void Function(GListOfBicycle) updates) => super.copyWith((message) => updates(message as GListOfBicycle)) as GListOfBicycle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfBicycle create() => GListOfBicycle._();
  GListOfBicycle createEmptyInstance() => create();
  static $pb.PbList<GListOfBicycle> createRepeated() => $pb.PbList<GListOfBicycle>();
  @$core.pragma('dart2js:noInline')
  static GListOfBicycle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfBicycle>(create);
  static GListOfBicycle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GBicycle> get items => $_getList(0);
}

