///
//  Generated code. Do not modify.
//  source: auth/user_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/wrappers.pb.dart' as $9;

class UserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UserInfo',
      createEmptyInstance: create)
    ..aOM<$9.StringValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email',
        subBuilder: $9.StringValue.create)
    ..aOM<$9.StringValue>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'uid',
        subBuilder: $9.StringValue.create)
    ..aOM<$9.BoolValue>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'emailVerified',
        protoName: 'emailVerified',
        subBuilder: $9.BoolValue.create)
    ..aOM<$9.StringValue>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'displayName',
        protoName: 'displayName',
        subBuilder: $9.StringValue.create)
    ..aOM<$9.StringValue>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'password',
        subBuilder: $9.StringValue.create)
    ..aOM<$9.BoolValue>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'disabled',
        subBuilder: $9.BoolValue.create)
    ..aOM<$9.StringValue>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phoneNumber',
        protoName: 'phoneNumber',
        subBuilder: $9.StringValue.create)
    ..aOM<$9.StringValue>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'photoUrl',
        protoName: 'photoUrl',
        subBuilder: $9.StringValue.create)
    ..hasRequiredFields = false;

  UserInfo._() : super();
  factory UserInfo({
    $9.StringValue? email,
    $9.StringValue? uid,
    $9.BoolValue? emailVerified,
    $9.StringValue? displayName,
    $9.StringValue? password,
    $9.BoolValue? disabled,
    $9.StringValue? phoneNumber,
    $9.StringValue? photoUrl,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (uid != null) {
      _result.uid = uid;
    }
    if (emailVerified != null) {
      _result.emailVerified = emailVerified;
    }
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (password != null) {
      _result.password = password;
    }
    if (disabled != null) {
      _result.disabled = disabled;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (photoUrl != null) {
      _result.photoUrl = photoUrl;
    }
    return _result;
  }
  factory UserInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) =>
      super.copyWith((message) => updates(message as UserInfo))
          as UserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $9.StringValue get email => $_getN(0);
  @$pb.TagNumber(1)
  set email($9.StringValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
  @$pb.TagNumber(1)
  $9.StringValue ensureEmail() => $_ensure(0);

  @$pb.TagNumber(2)
  $9.StringValue get uid => $_getN(1);
  @$pb.TagNumber(2)
  set uid($9.StringValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);
  @$pb.TagNumber(2)
  $9.StringValue ensureUid() => $_ensure(1);

  @$pb.TagNumber(3)
  $9.BoolValue get emailVerified => $_getN(2);
  @$pb.TagNumber(3)
  set emailVerified($9.BoolValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEmailVerified() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmailVerified() => clearField(3);
  @$pb.TagNumber(3)
  $9.BoolValue ensureEmailVerified() => $_ensure(2);

  @$pb.TagNumber(4)
  $9.StringValue get displayName => $_getN(3);
  @$pb.TagNumber(4)
  set displayName($9.StringValue v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDisplayName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayName() => clearField(4);
  @$pb.TagNumber(4)
  $9.StringValue ensureDisplayName() => $_ensure(3);

  @$pb.TagNumber(5)
  $9.StringValue get password => $_getN(4);
  @$pb.TagNumber(5)
  set password($9.StringValue v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPassword() => $_has(4);
  @$pb.TagNumber(5)
  void clearPassword() => clearField(5);
  @$pb.TagNumber(5)
  $9.StringValue ensurePassword() => $_ensure(4);

  @$pb.TagNumber(6)
  $9.BoolValue get disabled => $_getN(5);
  @$pb.TagNumber(6)
  set disabled($9.BoolValue v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDisabled() => $_has(5);
  @$pb.TagNumber(6)
  void clearDisabled() => clearField(6);
  @$pb.TagNumber(6)
  $9.BoolValue ensureDisabled() => $_ensure(5);

  @$pb.TagNumber(7)
  $9.StringValue get phoneNumber => $_getN(6);
  @$pb.TagNumber(7)
  set phoneNumber($9.StringValue v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPhoneNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhoneNumber() => clearField(7);
  @$pb.TagNumber(7)
  $9.StringValue ensurePhoneNumber() => $_ensure(6);

  @$pb.TagNumber(8)
  $9.StringValue get photoUrl => $_getN(7);
  @$pb.TagNumber(8)
  set photoUrl($9.StringValue v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPhotoUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhotoUrl() => clearField(8);
  @$pb.TagNumber(8)
  $9.StringValue ensurePhotoUrl() => $_ensure(7);
}
