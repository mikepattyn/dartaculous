///
//  Generated code. Do not modify.
//  source: firebase_user_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GFirebaseUserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFirebaseUserInfo', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailHasValue')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailVerified')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailVerifiedHasValue')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayName')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'displayNameHasValue')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passwordHasValue')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disabled')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disabledHasValue')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumberHasValue')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photoUrl')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photoUrlHasValue')
    ..hasRequiredFields = false
  ;

  GFirebaseUserInfo._() : super();
  factory GFirebaseUserInfo({
    $core.String? email,
    $core.bool? emailHasValue,
    $core.bool? emailVerified,
    $core.bool? emailVerifiedHasValue,
    $core.String? displayName,
    $core.bool? displayNameHasValue,
    $core.String? password,
    $core.bool? passwordHasValue,
    $core.bool? disabled,
    $core.bool? disabledHasValue,
    $core.String? phoneNumber,
    $core.bool? phoneNumberHasValue,
    $core.String? photoUrl,
    $core.bool? photoUrlHasValue,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (emailHasValue != null) {
      _result.emailHasValue = emailHasValue;
    }
    if (emailVerified != null) {
      _result.emailVerified = emailVerified;
    }
    if (emailVerifiedHasValue != null) {
      _result.emailVerifiedHasValue = emailVerifiedHasValue;
    }
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (displayNameHasValue != null) {
      _result.displayNameHasValue = displayNameHasValue;
    }
    if (password != null) {
      _result.password = password;
    }
    if (passwordHasValue != null) {
      _result.passwordHasValue = passwordHasValue;
    }
    if (disabled != null) {
      _result.disabled = disabled;
    }
    if (disabledHasValue != null) {
      _result.disabledHasValue = disabledHasValue;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (phoneNumberHasValue != null) {
      _result.phoneNumberHasValue = phoneNumberHasValue;
    }
    if (photoUrl != null) {
      _result.photoUrl = photoUrl;
    }
    if (photoUrlHasValue != null) {
      _result.photoUrlHasValue = photoUrlHasValue;
    }
    return _result;
  }
  factory GFirebaseUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFirebaseUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFirebaseUserInfo clone() => GFirebaseUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFirebaseUserInfo copyWith(void Function(GFirebaseUserInfo) updates) => super.copyWith((message) => updates(message as GFirebaseUserInfo)) as GFirebaseUserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFirebaseUserInfo create() => GFirebaseUserInfo._();
  GFirebaseUserInfo createEmptyInstance() => create();
  static $pb.PbList<GFirebaseUserInfo> createRepeated() => $pb.PbList<GFirebaseUserInfo>();
  @$core.pragma('dart2js:noInline')
  static GFirebaseUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFirebaseUserInfo>(create);
  static GFirebaseUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get emailHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set emailHasValue($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailHasValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get emailVerified => $_getBF(2);
  @$pb.TagNumber(3)
  set emailVerified($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmailVerified() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmailVerified() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get emailVerifiedHasValue => $_getBF(3);
  @$pb.TagNumber(4)
  set emailVerifiedHasValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmailVerifiedHasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmailVerifiedHasValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get displayName => $_getSZ(4);
  @$pb.TagNumber(5)
  set displayName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisplayName() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisplayName() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get displayNameHasValue => $_getBF(5);
  @$pb.TagNumber(6)
  set displayNameHasValue($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDisplayNameHasValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearDisplayNameHasValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get password => $_getSZ(6);
  @$pb.TagNumber(7)
  set password($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPassword() => $_has(6);
  @$pb.TagNumber(7)
  void clearPassword() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get passwordHasValue => $_getBF(7);
  @$pb.TagNumber(8)
  set passwordHasValue($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPasswordHasValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearPasswordHasValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get disabled => $_getBF(8);
  @$pb.TagNumber(9)
  set disabled($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDisabled() => $_has(8);
  @$pb.TagNumber(9)
  void clearDisabled() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get disabledHasValue => $_getBF(9);
  @$pb.TagNumber(10)
  set disabledHasValue($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDisabledHasValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearDisabledHasValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get phoneNumber => $_getSZ(10);
  @$pb.TagNumber(11)
  set phoneNumber($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPhoneNumber() => $_has(10);
  @$pb.TagNumber(11)
  void clearPhoneNumber() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get phoneNumberHasValue => $_getBF(11);
  @$pb.TagNumber(12)
  set phoneNumberHasValue($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPhoneNumberHasValue() => $_has(11);
  @$pb.TagNumber(12)
  void clearPhoneNumberHasValue() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get photoUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set photoUrl($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPhotoUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearPhotoUrl() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get photoUrlHasValue => $_getBF(13);
  @$pb.TagNumber(14)
  set photoUrlHasValue($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPhotoUrlHasValue() => $_has(13);
  @$pb.TagNumber(14)
  void clearPhotoUrlHasValue() => clearField(14);
}

class GListOfFirebaseUserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfFirebaseUserInfo', createEmptyInstance: create)
    ..pc<GFirebaseUserInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GFirebaseUserInfo.create)
    ..hasRequiredFields = false
  ;

  GListOfFirebaseUserInfo._() : super();
  factory GListOfFirebaseUserInfo({
    $core.Iterable<GFirebaseUserInfo>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfFirebaseUserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfFirebaseUserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfFirebaseUserInfo clone() => GListOfFirebaseUserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfFirebaseUserInfo copyWith(void Function(GListOfFirebaseUserInfo) updates) => super.copyWith((message) => updates(message as GListOfFirebaseUserInfo)) as GListOfFirebaseUserInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfFirebaseUserInfo create() => GListOfFirebaseUserInfo._();
  GListOfFirebaseUserInfo createEmptyInstance() => create();
  static $pb.PbList<GListOfFirebaseUserInfo> createRepeated() => $pb.PbList<GListOfFirebaseUserInfo>();
  @$core.pragma('dart2js:noInline')
  static GListOfFirebaseUserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfFirebaseUserInfo>(create);
  static GListOfFirebaseUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GFirebaseUserInfo> get items => $_getList(0);
}

