///
//  Generated code. Do not modify.
//  source: starship.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GStarship extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GStarship', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'odometer', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engineNumber', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GStarship._() : super();
  factory GStarship({
    $core.List<$core.int>? range,
    $core.List<$core.int>? odometer,
    $core.int? engineNumber,
  }) {
    final _result = create();
    if (range != null) {
      _result.range = range;
    }
    if (odometer != null) {
      _result.odometer = odometer;
    }
    if (engineNumber != null) {
      _result.engineNumber = engineNumber;
    }
    return _result;
  }
  factory GStarship.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GStarship.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GStarship clone() => GStarship()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GStarship copyWith(void Function(GStarship) updates) => super.copyWith((message) => updates(message as GStarship)) as GStarship; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GStarship create() => GStarship._();
  GStarship createEmptyInstance() => create();
  static $pb.PbList<GStarship> createRepeated() => $pb.PbList<GStarship>();
  @$core.pragma('dart2js:noInline')
  static GStarship getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GStarship>(create);
  static GStarship? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get range => $_getN(0);
  @$pb.TagNumber(1)
  set range($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearRange() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get odometer => $_getN(1);
  @$pb.TagNumber(2)
  set odometer($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOdometer() => $_has(1);
  @$pb.TagNumber(2)
  void clearOdometer() => clearField(2);

  @$pb.TagNumber(4)
  $core.int get engineNumber => $_getIZ(2);
  @$pb.TagNumber(4)
  set engineNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasEngineNumber() => $_has(2);
  @$pb.TagNumber(4)
  void clearEngineNumber() => clearField(4);
}

class GListOfStarship extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfStarship', createEmptyInstance: create)
    ..pc<GStarship>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GStarship.create)
    ..hasRequiredFields = false
  ;

  GListOfStarship._() : super();
  factory GListOfStarship({
    $core.Iterable<GStarship>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfStarship.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfStarship.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfStarship clone() => GListOfStarship()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfStarship copyWith(void Function(GListOfStarship) updates) => super.copyWith((message) => updates(message as GListOfStarship)) as GListOfStarship; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfStarship create() => GListOfStarship._();
  GListOfStarship createEmptyInstance() => create();
  static $pb.PbList<GListOfStarship> createRepeated() => $pb.PbList<GListOfStarship>();
  @$core.pragma('dart2js:noInline')
  static GListOfStarship getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfStarship>(create);
  static GListOfStarship? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GStarship> get items => $_getList(0);
}

