///
//  Generated code. Do not modify.
//  source: firebase/change_notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ChangeNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ChangeNotification',
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tokens')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'typeName',
        protoName: 'typeName')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rev')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hashCode',
        protoName: 'hashCode')
    ..hasRequiredFields = false;

  ChangeNotification._() : super();
  factory ChangeNotification({
    $core.Iterable<$core.String>? tokens,
    $core.String? key,
    $core.String? typeName,
    $core.String? rev,
    $core.String? hashCode_5,
  }) {
    final _result = create();
    if (tokens != null) {
      _result.tokens.addAll(tokens);
    }
    if (key != null) {
      _result.key = key;
    }
    if (typeName != null) {
      _result.typeName = typeName;
    }
    if (rev != null) {
      _result.rev = rev;
    }
    if (hashCode_5 != null) {
      _result.hashCode_5 = hashCode_5;
    }
    return _result;
  }
  factory ChangeNotification.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChangeNotification.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChangeNotification clone() => ChangeNotification()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChangeNotification copyWith(void Function(ChangeNotification) updates) =>
      super.copyWith((message) => updates(message as ChangeNotification))
          as ChangeNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeNotification create() => ChangeNotification._();
  ChangeNotification createEmptyInstance() => create();
  static $pb.PbList<ChangeNotification> createRepeated() =>
      $pb.PbList<ChangeNotification>();
  @$core.pragma('dart2js:noInline')
  static ChangeNotification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeNotification>(create);
  static ChangeNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tokens => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get typeName => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTypeName() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get rev => $_getSZ(3);
  @$pb.TagNumber(4)
  set rev($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRev() => $_has(3);
  @$pb.TagNumber(4)
  void clearRev() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hashCode_5 => $_getSZ(4);
  @$pb.TagNumber(5)
  set hashCode_5($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHashCode_5() => $_has(4);
  @$pb.TagNumber(5)
  void clearHashCode_5() => clearField(5);
}
