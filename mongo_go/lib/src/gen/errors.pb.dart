///
//  Generated code. Do not modify.
//  source: errors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'errors.pbenum.dart';

export 'errors.pbenum.dart';

class MongoError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MongoError',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message')
    ..e<ErrorType>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'errorType',
        $pb.PbFieldType.OE,
        protoName: 'errorType',
        defaultOrMaker: ErrorType.unspecified,
        valueOf: ErrorType.valueOf,
        enumValues: ErrorType.values)
    ..hasRequiredFields = false;

  MongoError._() : super();
  factory MongoError({
    $core.String? message,
    ErrorType? errorType,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (errorType != null) {
      _result.errorType = errorType;
    }
    return _result;
  }
  factory MongoError.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MongoError.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MongoError clone() => MongoError()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MongoError copyWith(void Function(MongoError) updates) =>
      super.copyWith((message) => updates(message as MongoError))
          as MongoError; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MongoError create() => MongoError._();
  MongoError createEmptyInstance() => create();
  static $pb.PbList<MongoError> createRepeated() => $pb.PbList<MongoError>();
  @$core.pragma('dart2js:noInline')
  static MongoError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MongoError>(create);
  static MongoError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  ErrorType get errorType => $_getN(1);
  @$pb.TagNumber(2)
  set errorType(ErrorType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasErrorType() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorType() => clearField(2);
}
