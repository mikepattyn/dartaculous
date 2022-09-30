///
//  Generated code. Do not modify.
//  source: polymorphism/airplane.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GAirplane',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weight',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serviceCeiling',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'wingspan',
        $pb.PbFieldType.O3)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..hasRequiredFields = false;

  GAirplane._() : super();
  factory GAirplane({
    $core.int? weight,
    $core.int? serviceCeiling,
    $core.int? wingspan,
    $core.String? key,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
    }
    if (wingspan != null) {
      _result.wingspan = wingspan;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory GAirplane.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GAirplane.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GAirplane clone() => GAirplane()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GAirplane copyWith(void Function(GAirplane) updates) =>
      super.copyWith((message) => updates(message as GAirplane))
          as GAirplane; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAirplane create() => GAirplane._();
  GAirplane createEmptyInstance() => create();
  static $pb.PbList<GAirplane> createRepeated() => $pb.PbList<GAirplane>();
  @$core.pragma('dart2js:noInline')
  static GAirplane getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAirplane>(create);
  static GAirplane? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get weight => $_getIZ(0);
  @$pb.TagNumber(1)
  set weight($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get serviceCeiling => $_getIZ(1);
  @$pb.TagNumber(2)
  set serviceCeiling($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceCeiling() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceCeiling() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get wingspan => $_getIZ(2);
  @$pb.TagNumber(3)
  set wingspan($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWingspan() => $_has(2);
  @$pb.TagNumber(3)
  void clearWingspan() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get key => $_getSZ(3);
  @$pb.TagNumber(4)
  set key($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearKey() => clearField(4);
}

class GListOfAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfAirplane',
      createEmptyInstance: create)
    ..pc<GAirplane>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GAirplane.create)
    ..hasRequiredFields = false;

  GListOfAirplane._() : super();
  factory GListOfAirplane({
    $core.Iterable<GAirplane>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAirplane.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfAirplane.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfAirplane clone() => GListOfAirplane()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfAirplane copyWith(void Function(GListOfAirplane) updates) =>
      super.copyWith((message) => updates(message as GListOfAirplane))
          as GListOfAirplane; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAirplane create() => GListOfAirplane._();
  GListOfAirplane createEmptyInstance() => create();
  static $pb.PbList<GListOfAirplane> createRepeated() =>
      $pb.PbList<GListOfAirplane>();
  @$core.pragma('dart2js:noInline')
  static GListOfAirplane getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfAirplane>(create);
  static GListOfAirplane? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAirplane> get items => $_getList(0);
}
