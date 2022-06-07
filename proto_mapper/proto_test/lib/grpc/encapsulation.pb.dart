///
//  Generated code. Do not modify.
//  source: encapsulation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GEncapsulatedFieldsClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GEncapsulatedFieldsClass',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'finalString')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'encapsulatedString')
    ..pPS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'encapsulatedCollection')
    ..hasRequiredFields = false;

  GEncapsulatedFieldsClass._() : super();
  factory GEncapsulatedFieldsClass({
    $core.String? finalString,
    $core.String? encapsulatedString,
    $core.Iterable<$core.String>? encapsulatedCollection,
  }) {
    final _result = create();
    if (finalString != null) {
      _result.finalString = finalString;
    }
    if (encapsulatedString != null) {
      _result.encapsulatedString = encapsulatedString;
    }
    if (encapsulatedCollection != null) {
      _result.encapsulatedCollection.addAll(encapsulatedCollection);
    }
    return _result;
  }
  factory GEncapsulatedFieldsClass.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GEncapsulatedFieldsClass.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GEncapsulatedFieldsClass clone() =>
      GEncapsulatedFieldsClass()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GEncapsulatedFieldsClass copyWith(
          void Function(GEncapsulatedFieldsClass) updates) =>
      super.copyWith((message) => updates(message as GEncapsulatedFieldsClass))
          as GEncapsulatedFieldsClass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEncapsulatedFieldsClass create() => GEncapsulatedFieldsClass._();
  GEncapsulatedFieldsClass createEmptyInstance() => create();
  static $pb.PbList<GEncapsulatedFieldsClass> createRepeated() =>
      $pb.PbList<GEncapsulatedFieldsClass>();
  @$core.pragma('dart2js:noInline')
  static GEncapsulatedFieldsClass getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GEncapsulatedFieldsClass>(create);
  static GEncapsulatedFieldsClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalString => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalString($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFinalString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalString() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get encapsulatedString => $_getSZ(1);
  @$pb.TagNumber(2)
  set encapsulatedString($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEncapsulatedString() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncapsulatedString() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get encapsulatedCollection => $_getList(2);
}

class GListOfEncapsulatedFieldsClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfEncapsulatedFieldsClass',
      createEmptyInstance: create)
    ..pc<GEncapsulatedFieldsClass>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GEncapsulatedFieldsClass.create)
    ..hasRequiredFields = false;

  GListOfEncapsulatedFieldsClass._() : super();
  factory GListOfEncapsulatedFieldsClass({
    $core.Iterable<GEncapsulatedFieldsClass>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfEncapsulatedFieldsClass.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfEncapsulatedFieldsClass.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfEncapsulatedFieldsClass clone() =>
      GListOfEncapsulatedFieldsClass()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfEncapsulatedFieldsClass copyWith(
          void Function(GListOfEncapsulatedFieldsClass) updates) =>
      super.copyWith(
              (message) => updates(message as GListOfEncapsulatedFieldsClass))
          as GListOfEncapsulatedFieldsClass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfEncapsulatedFieldsClass create() =>
      GListOfEncapsulatedFieldsClass._();
  GListOfEncapsulatedFieldsClass createEmptyInstance() => create();
  static $pb.PbList<GListOfEncapsulatedFieldsClass> createRepeated() =>
      $pb.PbList<GListOfEncapsulatedFieldsClass>();
  @$core.pragma('dart2js:noInline')
  static GListOfEncapsulatedFieldsClass getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfEncapsulatedFieldsClass>(create);
  static GListOfEncapsulatedFieldsClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GEncapsulatedFieldsClass> get items => $_getList(0);
}
