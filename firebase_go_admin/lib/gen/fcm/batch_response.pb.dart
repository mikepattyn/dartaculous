///
//  Generated code. Do not modify.
//  source: fcm/batch_response.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BatchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchResponse',
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'failureCount',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'successCount',
        $pb.PbFieldType.O3)
    ..pc<SendResponse>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'responses',
        $pb.PbFieldType.PM,
        subBuilder: SendResponse.create)
    ..hasRequiredFields = false;

  BatchResponse._() : super();
  factory BatchResponse({
    $core.int? failureCount,
    $core.int? successCount,
    $core.Iterable<SendResponse>? responses,
  }) {
    final _result = create();
    if (failureCount != null) {
      _result.failureCount = failureCount;
    }
    if (successCount != null) {
      _result.successCount = successCount;
    }
    if (responses != null) {
      _result.responses.addAll(responses);
    }
    return _result;
  }
  factory BatchResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchResponse clone() => BatchResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchResponse copyWith(void Function(BatchResponse) updates) =>
      super.copyWith((message) => updates(message as BatchResponse))
          as BatchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BatchResponse create() => BatchResponse._();
  BatchResponse createEmptyInstance() => create();
  static $pb.PbList<BatchResponse> createRepeated() =>
      $pb.PbList<BatchResponse>();
  @$core.pragma('dart2js:noInline')
  static BatchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchResponse>(create);
  static BatchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get failureCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set failureCount($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFailureCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearFailureCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get successCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set successCount($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSuccessCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccessCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<SendResponse> get responses => $_getList(2);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SendResponse',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'messageId')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'messageIdHasValue')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'isSuccess')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error')
    ..hasRequiredFields = false;

  SendResponse._() : super();
  factory SendResponse({
    $core.String? messageId,
    $core.bool? messageIdHasValue,
    $core.bool? isSuccess,
    $core.String? error,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (messageIdHasValue != null) {
      _result.messageIdHasValue = messageIdHasValue;
    }
    if (isSuccess != null) {
      _result.isSuccess = isSuccess;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory SendResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SendResponse copyWith(void Function(SendResponse) updates) =>
      super.copyWith((message) => updates(message as SendResponse))
          as SendResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() =>
      $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get messageIdHasValue => $_getBF(1);
  @$pb.TagNumber(2)
  set messageIdHasValue($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessageIdHasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageIdHasValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isSuccess => $_getBF(2);
  @$pb.TagNumber(3)
  set isSuccess($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsSuccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsSuccess() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get error => $_getSZ(3);
  @$pb.TagNumber(4)
  set error($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasError() => $_has(3);
  @$pb.TagNumber(4)
  void clearError() => clearField(4);
}
