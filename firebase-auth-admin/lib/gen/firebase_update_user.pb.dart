///
//  Generated code. Do not modify.
//  source: firebase_update_user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'firebase_user_info.pb.dart' as $0;

class GFirebaseUpdateUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFirebaseUpdateUser', createEmptyInstance: create)
    ..aOM<$0.GFirebaseUserInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: $0.GFirebaseUserInfo.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  GFirebaseUpdateUser._() : super();
  factory GFirebaseUpdateUser({
    $0.GFirebaseUserInfo? info,
    $core.String? uid,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }
  factory GFirebaseUpdateUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFirebaseUpdateUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFirebaseUpdateUser clone() => GFirebaseUpdateUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFirebaseUpdateUser copyWith(void Function(GFirebaseUpdateUser) updates) => super.copyWith((message) => updates(message as GFirebaseUpdateUser)) as GFirebaseUpdateUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFirebaseUpdateUser create() => GFirebaseUpdateUser._();
  GFirebaseUpdateUser createEmptyInstance() => create();
  static $pb.PbList<GFirebaseUpdateUser> createRepeated() => $pb.PbList<GFirebaseUpdateUser>();
  @$core.pragma('dart2js:noInline')
  static GFirebaseUpdateUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFirebaseUpdateUser>(create);
  static GFirebaseUpdateUser? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GFirebaseUserInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info($0.GFirebaseUserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  $0.GFirebaseUserInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);
}

class GListOfFirebaseUpdateUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfFirebaseUpdateUser', createEmptyInstance: create)
    ..pc<GFirebaseUpdateUser>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GFirebaseUpdateUser.create)
    ..hasRequiredFields = false
  ;

  GListOfFirebaseUpdateUser._() : super();
  factory GListOfFirebaseUpdateUser({
    $core.Iterable<GFirebaseUpdateUser>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfFirebaseUpdateUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfFirebaseUpdateUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfFirebaseUpdateUser clone() => GListOfFirebaseUpdateUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfFirebaseUpdateUser copyWith(void Function(GListOfFirebaseUpdateUser) updates) => super.copyWith((message) => updates(message as GListOfFirebaseUpdateUser)) as GListOfFirebaseUpdateUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfFirebaseUpdateUser create() => GListOfFirebaseUpdateUser._();
  GListOfFirebaseUpdateUser createEmptyInstance() => create();
  static $pb.PbList<GListOfFirebaseUpdateUser> createRepeated() => $pb.PbList<GListOfFirebaseUpdateUser>();
  @$core.pragma('dart2js:noInline')
  static GListOfFirebaseUpdateUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfFirebaseUpdateUser>(create);
  static GListOfFirebaseUpdateUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GFirebaseUpdateUser> get items => $_getList(0);
}

