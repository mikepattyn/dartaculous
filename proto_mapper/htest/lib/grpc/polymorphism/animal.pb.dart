///
//  Generated code. Do not modify.
//  source: polymorphism/animal.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GAnimal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAnimal', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  GAnimal._() : super();
  factory GAnimal({
    $core.String? description,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory GAnimal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAnimal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAnimal clone() => GAnimal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAnimal copyWith(void Function(GAnimal) updates) => super.copyWith((message) => updates(message as GAnimal)) as GAnimal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAnimal create() => GAnimal._();
  GAnimal createEmptyInstance() => create();
  static $pb.PbList<GAnimal> createRepeated() => $pb.PbList<GAnimal>();
  @$core.pragma('dart2js:noInline')
  static GAnimal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAnimal>(create);
  static GAnimal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);
}

class GListOfAnimal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAnimal', createEmptyInstance: create)
    ..pc<GAnimal>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAnimal.create)
    ..hasRequiredFields = false
  ;

  GListOfAnimal._() : super();
  factory GListOfAnimal({
    $core.Iterable<GAnimal>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAnimal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAnimal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAnimal clone() => GListOfAnimal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAnimal copyWith(void Function(GListOfAnimal) updates) => super.copyWith((message) => updates(message as GListOfAnimal)) as GListOfAnimal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAnimal create() => GListOfAnimal._();
  GListOfAnimal createEmptyInstance() => create();
  static $pb.PbList<GListOfAnimal> createRepeated() => $pb.PbList<GListOfAnimal>();
  @$core.pragma('dart2js:noInline')
  static GListOfAnimal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAnimal>(create);
  static GListOfAnimal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAnimal> get items => $_getList(0);
}

