///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'model.pbenum.dart';

export 'model.pbenum.dart';

class Int32Value extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Int32Value', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Int32Value._() : super();
  factory Int32Value({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Int32Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int32Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int32Value clone() => Int32Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int32Value copyWith(void Function(Int32Value) updates) => super.copyWith((message) => updates(message as Int32Value)) as Int32Value; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Int32Value create() => Int32Value._();
  Int32Value createEmptyInstance() => create();
  static $pb.PbList<Int32Value> createRepeated() => $pb.PbList<Int32Value>();
  @$core.pragma('dart2js:noInline')
  static Int32Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32Value>(create);
  static Int32Value? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Timestamp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Timestamp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seconds')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Timestamp._() : super();
  factory Timestamp({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    final _result = create();
    if (seconds != null) {
      _result.seconds = seconds;
    }
    if (nanos != null) {
      _result.nanos = nanos;
    }
    return _result;
  }
  factory Timestamp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timestamp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timestamp clone() => Timestamp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timestamp copyWith(void Function(Timestamp) updates) => super.copyWith((message) => updates(message as Timestamp)) as Timestamp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Timestamp create() => Timestamp._();
  Timestamp createEmptyInstance() => create();
  static $pb.PbList<Timestamp> createRepeated() => $pb.PbList<Timestamp>();
  @$core.pragma('dart2js:noInline')
  static Timestamp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timestamp>(create);
  static Timestamp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
}

class Duration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Duration', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seconds')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Duration._() : super();
  factory Duration({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    final _result = create();
    if (seconds != null) {
      _result.seconds = seconds;
    }
    if (nanos != null) {
      _result.nanos = nanos;
    }
    return _result;
  }
  factory Duration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Duration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Duration clone() => Duration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Duration copyWith(void Function(Duration) updates) => super.copyWith((message) => updates(message as Duration)) as Duration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Duration create() => Duration._();
  Duration createEmptyInstance() => create();
  static $pb.PbList<Duration> createRepeated() => $pb.PbList<Duration>();
  @$core.pragma('dart2js:noInline')
  static Duration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Duration>(create);
  static Duration? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
}

class BoolValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoolValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  BoolValue._() : super();
  factory BoolValue({
    $core.bool? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory BoolValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoolValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoolValue clone() => BoolValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoolValue copyWith(void Function(BoolValue) updates) => super.copyWith((message) => updates(message as BoolValue)) as BoolValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoolValue create() => BoolValue._();
  BoolValue createEmptyInstance() => create();
  static $pb.PbList<BoolValue> createRepeated() => $pb.PbList<BoolValue>();
  @$core.pragma('dart2js:noInline')
  static BoolValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolValue>(create);
  static BoolValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class StringValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StringValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  StringValue._() : super();
  factory StringValue({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory StringValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringValue clone() => StringValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringValue copyWith(void Function(StringValue) updates) => super.copyWith((message) => updates(message as StringValue)) as StringValue; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StringValue create() => StringValue._();
  StringValue createEmptyInstance() => create();
  static $pb.PbList<StringValue> createRepeated() => $pb.PbList<StringValue>();
  @$core.pragma('dart2js:noInline')
  static StringValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringValue>(create);
  static StringValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GCalcParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCalcParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter2', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter1', $pb.PbFieldType.O3)
    ..aOM<Int32Value>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter3', subBuilder: Int32Value.create)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter5', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GCalcParameters._() : super();
  factory GCalcParameters({
    $core.int? parameter2,
    $core.int? parameter1,
    Int32Value? parameter3,
    $core.int? parameter5,
  }) {
    final _result = create();
    if (parameter2 != null) {
      _result.parameter2 = parameter2;
    }
    if (parameter1 != null) {
      _result.parameter1 = parameter1;
    }
    if (parameter3 != null) {
      _result.parameter3 = parameter3;
    }
    if (parameter5 != null) {
      _result.parameter5 = parameter5;
    }
    return _result;
  }
  factory GCalcParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCalcParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCalcParameters clone() => GCalcParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCalcParameters copyWith(void Function(GCalcParameters) updates) => super.copyWith((message) => updates(message as GCalcParameters)) as GCalcParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCalcParameters create() => GCalcParameters._();
  GCalcParameters createEmptyInstance() => create();
  static $pb.PbList<GCalcParameters> createRepeated() => $pb.PbList<GCalcParameters>();
  @$core.pragma('dart2js:noInline')
  static GCalcParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCalcParameters>(create);
  static GCalcParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get parameter2 => $_getIZ(0);
  @$pb.TagNumber(1)
  set parameter2($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParameter2() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameter2() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get parameter1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set parameter1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParameter1() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameter1() => clearField(2);

  @$pb.TagNumber(3)
  Int32Value get parameter3 => $_getN(2);
  @$pb.TagNumber(3)
  set parameter3(Int32Value v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasParameter3() => $_has(2);
  @$pb.TagNumber(3)
  void clearParameter3() => clearField(3);
  @$pb.TagNumber(3)
  Int32Value ensureParameter3() => $_ensure(2);

  @$pb.TagNumber(9)
  $core.int get parameter5 => $_getIZ(3);
  @$pb.TagNumber(9)
  set parameter5($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(9)
  $core.bool hasParameter5() => $_has(3);
  @$pb.TagNumber(9)
  void clearParameter5() => clearField(9);
}

class GListOfCalcParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfCalcParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GCalcParameters>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GCalcParameters.create)
    ..hasRequiredFields = false
  ;

  GListOfCalcParameters._() : super();
  factory GListOfCalcParameters({
    $core.Iterable<GCalcParameters>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfCalcParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfCalcParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfCalcParameters clone() => GListOfCalcParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfCalcParameters copyWith(void Function(GListOfCalcParameters) updates) => super.copyWith((message) => updates(message as GListOfCalcParameters)) as GListOfCalcParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfCalcParameters create() => GListOfCalcParameters._();
  GListOfCalcParameters createEmptyInstance() => create();
  static $pb.PbList<GListOfCalcParameters> createRepeated() => $pb.PbList<GListOfCalcParameters>();
  @$core.pragma('dart2js:noInline')
  static GListOfCalcParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfCalcParameters>(create);
  static GListOfCalcParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GCalcParameters> get items => $_getList(0);
}

class GCalcResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCalcResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GCalcResult._() : super();
  factory GCalcResult() => create();
  factory GCalcResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCalcResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCalcResult clone() => GCalcResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCalcResult copyWith(void Function(GCalcResult) updates) => super.copyWith((message) => updates(message as GCalcResult)) as GCalcResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCalcResult create() => GCalcResult._();
  GCalcResult createEmptyInstance() => create();
  static $pb.PbList<GCalcResult> createRepeated() => $pb.PbList<GCalcResult>();
  @$core.pragma('dart2js:noInline')
  static GCalcResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCalcResult>(create);
  static GCalcResult? _defaultInstance;
}

class GListOfCalcResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfCalcResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GCalcResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GCalcResult.create)
    ..hasRequiredFields = false
  ;

  GListOfCalcResult._() : super();
  factory GListOfCalcResult({
    $core.Iterable<GCalcResult>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfCalcResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfCalcResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfCalcResult clone() => GListOfCalcResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfCalcResult copyWith(void Function(GListOfCalcResult) updates) => super.copyWith((message) => updates(message as GListOfCalcResult)) as GListOfCalcResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfCalcResult create() => GListOfCalcResult._();
  GListOfCalcResult createEmptyInstance() => create();
  static $pb.PbList<GListOfCalcResult> createRepeated() => $pb.PbList<GListOfCalcResult>();
  @$core.pragma('dart2js:noInline')
  static GListOfCalcResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfCalcResult>(create);
  static GListOfCalcResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GCalcResult> get items => $_getList(0);
}

class GCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GCategory._() : super();
  factory GCategory() => create();
  factory GCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCategory clone() => GCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCategory copyWith(void Function(GCategory) updates) => super.copyWith((message) => updates(message as GCategory)) as GCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCategory create() => GCategory._();
  GCategory createEmptyInstance() => create();
  static $pb.PbList<GCategory> createRepeated() => $pb.PbList<GCategory>();
  @$core.pragma('dart2js:noInline')
  static GCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCategory>(create);
  static GCategory? _defaultInstance;
}

class GListOfCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GCategory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GCategory.create)
    ..hasRequiredFields = false
  ;

  GListOfCategory._() : super();
  factory GListOfCategory({
    $core.Iterable<GCategory>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfCategory clone() => GListOfCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfCategory copyWith(void Function(GListOfCategory) updates) => super.copyWith((message) => updates(message as GListOfCategory)) as GListOfCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfCategory create() => GListOfCategory._();
  GListOfCategory createEmptyInstance() => create();
  static $pb.PbList<GListOfCategory> createRepeated() => $pb.PbList<GListOfCategory>();
  @$core.pragma('dart2js:noInline')
  static GListOfCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfCategory>(create);
  static GListOfCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GCategory> get items => $_getList(0);
}

class GComponent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GComponent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GComponent._() : super();
  factory GComponent() => create();
  factory GComponent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GComponent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GComponent clone() => GComponent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GComponent copyWith(void Function(GComponent) updates) => super.copyWith((message) => updates(message as GComponent)) as GComponent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GComponent create() => GComponent._();
  GComponent createEmptyInstance() => create();
  static $pb.PbList<GComponent> createRepeated() => $pb.PbList<GComponent>();
  @$core.pragma('dart2js:noInline')
  static GComponent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GComponent>(create);
  static GComponent? _defaultInstance;
}

class GListOfComponent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfComponent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GComponent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GComponent.create)
    ..hasRequiredFields = false
  ;

  GListOfComponent._() : super();
  factory GListOfComponent({
    $core.Iterable<GComponent>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfComponent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfComponent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfComponent clone() => GListOfComponent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfComponent copyWith(void Function(GListOfComponent) updates) => super.copyWith((message) => updates(message as GListOfComponent)) as GListOfComponent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfComponent create() => GListOfComponent._();
  GListOfComponent createEmptyInstance() => create();
  static $pb.PbList<GListOfComponent> createRepeated() => $pb.PbList<GListOfComponent>();
  @$core.pragma('dart2js:noInline')
  static GListOfComponent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfComponent>(create);
  static GListOfComponent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GComponent> get items => $_getList(0);
}

class GConstructObject1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject1._() : super();
  factory GConstructObject1() => create();
  factory GConstructObject1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject1 clone() => GConstructObject1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject1 copyWith(void Function(GConstructObject1) updates) => super.copyWith((message) => updates(message as GConstructObject1)) as GConstructObject1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject1 create() => GConstructObject1._();
  GConstructObject1 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject1> createRepeated() => $pb.PbList<GConstructObject1>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject1>(create);
  static GConstructObject1? _defaultInstance;
}

class GListOfConstructObject1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject1.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject1._() : super();
  factory GListOfConstructObject1({
    $core.Iterable<GConstructObject1>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject1 clone() => GListOfConstructObject1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject1 copyWith(void Function(GListOfConstructObject1) updates) => super.copyWith((message) => updates(message as GListOfConstructObject1)) as GListOfConstructObject1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject1 create() => GListOfConstructObject1._();
  GListOfConstructObject1 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject1> createRepeated() => $pb.PbList<GListOfConstructObject1>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject1>(create);
  static GListOfConstructObject1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject1> get items => $_getList(0);
}

class GConstructObject2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject2._() : super();
  factory GConstructObject2() => create();
  factory GConstructObject2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject2 clone() => GConstructObject2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject2 copyWith(void Function(GConstructObject2) updates) => super.copyWith((message) => updates(message as GConstructObject2)) as GConstructObject2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject2 create() => GConstructObject2._();
  GConstructObject2 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject2> createRepeated() => $pb.PbList<GConstructObject2>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject2>(create);
  static GConstructObject2? _defaultInstance;
}

class GListOfConstructObject2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject2>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject2.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject2._() : super();
  factory GListOfConstructObject2({
    $core.Iterable<GConstructObject2>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject2 clone() => GListOfConstructObject2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject2 copyWith(void Function(GListOfConstructObject2) updates) => super.copyWith((message) => updates(message as GListOfConstructObject2)) as GListOfConstructObject2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject2 create() => GListOfConstructObject2._();
  GListOfConstructObject2 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject2> createRepeated() => $pb.PbList<GListOfConstructObject2>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject2>(create);
  static GListOfConstructObject2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject2> get items => $_getList(0);
}

class GConstructObject3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject3._() : super();
  factory GConstructObject3() => create();
  factory GConstructObject3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject3 clone() => GConstructObject3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject3 copyWith(void Function(GConstructObject3) updates) => super.copyWith((message) => updates(message as GConstructObject3)) as GConstructObject3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject3 create() => GConstructObject3._();
  GConstructObject3 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject3> createRepeated() => $pb.PbList<GConstructObject3>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject3>(create);
  static GConstructObject3? _defaultInstance;
}

class GListOfConstructObject3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject3>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject3.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject3._() : super();
  factory GListOfConstructObject3({
    $core.Iterable<GConstructObject3>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject3 clone() => GListOfConstructObject3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject3 copyWith(void Function(GListOfConstructObject3) updates) => super.copyWith((message) => updates(message as GListOfConstructObject3)) as GListOfConstructObject3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject3 create() => GListOfConstructObject3._();
  GListOfConstructObject3 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject3> createRepeated() => $pb.PbList<GListOfConstructObject3>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject3>(create);
  static GListOfConstructObject3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject3> get items => $_getList(0);
}

class GConstructObject4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject4', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject4._() : super();
  factory GConstructObject4() => create();
  factory GConstructObject4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject4 clone() => GConstructObject4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject4 copyWith(void Function(GConstructObject4) updates) => super.copyWith((message) => updates(message as GConstructObject4)) as GConstructObject4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject4 create() => GConstructObject4._();
  GConstructObject4 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject4> createRepeated() => $pb.PbList<GConstructObject4>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject4>(create);
  static GConstructObject4? _defaultInstance;
}

class GListOfConstructObject4 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject4', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject4>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject4.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject4._() : super();
  factory GListOfConstructObject4({
    $core.Iterable<GConstructObject4>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject4.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject4.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject4 clone() => GListOfConstructObject4()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject4 copyWith(void Function(GListOfConstructObject4) updates) => super.copyWith((message) => updates(message as GListOfConstructObject4)) as GListOfConstructObject4; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject4 create() => GListOfConstructObject4._();
  GListOfConstructObject4 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject4> createRepeated() => $pb.PbList<GListOfConstructObject4>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject4 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject4>(create);
  static GListOfConstructObject4? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject4> get items => $_getList(0);
}

class GConstructObject5 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject5', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject5._() : super();
  factory GConstructObject5() => create();
  factory GConstructObject5.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject5.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject5 clone() => GConstructObject5()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject5 copyWith(void Function(GConstructObject5) updates) => super.copyWith((message) => updates(message as GConstructObject5)) as GConstructObject5; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject5 create() => GConstructObject5._();
  GConstructObject5 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject5> createRepeated() => $pb.PbList<GConstructObject5>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject5 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject5>(create);
  static GConstructObject5? _defaultInstance;
}

class GListOfConstructObject5 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject5', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject5>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject5.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject5._() : super();
  factory GListOfConstructObject5({
    $core.Iterable<GConstructObject5>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject5.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject5.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject5 clone() => GListOfConstructObject5()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject5 copyWith(void Function(GListOfConstructObject5) updates) => super.copyWith((message) => updates(message as GListOfConstructObject5)) as GListOfConstructObject5; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject5 create() => GListOfConstructObject5._();
  GListOfConstructObject5 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject5> createRepeated() => $pb.PbList<GListOfConstructObject5>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject5 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject5>(create);
  static GListOfConstructObject5? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject5> get items => $_getList(0);
}

class GConstructObject6 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject6', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject6._() : super();
  factory GConstructObject6() => create();
  factory GConstructObject6.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject6.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject6 clone() => GConstructObject6()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject6 copyWith(void Function(GConstructObject6) updates) => super.copyWith((message) => updates(message as GConstructObject6)) as GConstructObject6; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject6 create() => GConstructObject6._();
  GConstructObject6 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject6> createRepeated() => $pb.PbList<GConstructObject6>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject6 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject6>(create);
  static GConstructObject6? _defaultInstance;
}

class GListOfConstructObject6 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject6', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject6>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject6.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject6._() : super();
  factory GListOfConstructObject6({
    $core.Iterable<GConstructObject6>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject6.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject6.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject6 clone() => GListOfConstructObject6()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject6 copyWith(void Function(GListOfConstructObject6) updates) => super.copyWith((message) => updates(message as GListOfConstructObject6)) as GListOfConstructObject6; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject6 create() => GListOfConstructObject6._();
  GListOfConstructObject6 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject6> createRepeated() => $pb.PbList<GListOfConstructObject6>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject6 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject6>(create);
  static GListOfConstructObject6? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject6> get items => $_getList(0);
}

class GConstructObject7 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject7', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject7._() : super();
  factory GConstructObject7() => create();
  factory GConstructObject7.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject7.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject7 clone() => GConstructObject7()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject7 copyWith(void Function(GConstructObject7) updates) => super.copyWith((message) => updates(message as GConstructObject7)) as GConstructObject7; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject7 create() => GConstructObject7._();
  GConstructObject7 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject7> createRepeated() => $pb.PbList<GConstructObject7>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject7 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject7>(create);
  static GConstructObject7? _defaultInstance;
}

class GListOfConstructObject7 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject7', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject7>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject7.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject7._() : super();
  factory GListOfConstructObject7({
    $core.Iterable<GConstructObject7>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject7.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject7.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject7 clone() => GListOfConstructObject7()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject7 copyWith(void Function(GListOfConstructObject7) updates) => super.copyWith((message) => updates(message as GListOfConstructObject7)) as GListOfConstructObject7; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject7 create() => GListOfConstructObject7._();
  GListOfConstructObject7 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject7> createRepeated() => $pb.PbList<GListOfConstructObject7>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject7 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject7>(create);
  static GListOfConstructObject7? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject7> get items => $_getList(0);
}

class GConstructObject8 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstructObject8', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstructObject8._() : super();
  factory GConstructObject8() => create();
  factory GConstructObject8.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstructObject8.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstructObject8 clone() => GConstructObject8()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstructObject8 copyWith(void Function(GConstructObject8) updates) => super.copyWith((message) => updates(message as GConstructObject8)) as GConstructObject8; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstructObject8 create() => GConstructObject8._();
  GConstructObject8 createEmptyInstance() => create();
  static $pb.PbList<GConstructObject8> createRepeated() => $pb.PbList<GConstructObject8>();
  @$core.pragma('dart2js:noInline')
  static GConstructObject8 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstructObject8>(create);
  static GConstructObject8? _defaultInstance;
}

class GListOfConstructObject8 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstructObject8', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstructObject8>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstructObject8.create)
    ..hasRequiredFields = false
  ;

  GListOfConstructObject8._() : super();
  factory GListOfConstructObject8({
    $core.Iterable<GConstructObject8>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstructObject8.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstructObject8.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstructObject8 clone() => GListOfConstructObject8()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstructObject8 copyWith(void Function(GListOfConstructObject8) updates) => super.copyWith((message) => updates(message as GListOfConstructObject8)) as GListOfConstructObject8; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject8 create() => GListOfConstructObject8._();
  GListOfConstructObject8 createEmptyInstance() => create();
  static $pb.PbList<GListOfConstructObject8> createRepeated() => $pb.PbList<GListOfConstructObject8>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstructObject8 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstructObject8>(create);
  static GListOfConstructObject8? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstructObject8> get items => $_getList(0);
}

class GEmpty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GEmpty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GEmpty._() : super();
  factory GEmpty() => create();
  factory GEmpty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GEmpty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GEmpty clone() => GEmpty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GEmpty copyWith(void Function(GEmpty) updates) => super.copyWith((message) => updates(message as GEmpty)) as GEmpty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEmpty create() => GEmpty._();
  GEmpty createEmptyInstance() => create();
  static $pb.PbList<GEmpty> createRepeated() => $pb.PbList<GEmpty>();
  @$core.pragma('dart2js:noInline')
  static GEmpty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GEmpty>(create);
  static GEmpty? _defaultInstance;
}

class GListOfEmpty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfEmpty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GEmpty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GEmpty.create)
    ..hasRequiredFields = false
  ;

  GListOfEmpty._() : super();
  factory GListOfEmpty({
    $core.Iterable<GEmpty>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfEmpty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfEmpty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfEmpty clone() => GListOfEmpty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfEmpty copyWith(void Function(GListOfEmpty) updates) => super.copyWith((message) => updates(message as GListOfEmpty)) as GListOfEmpty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfEmpty create() => GListOfEmpty._();
  GListOfEmpty createEmptyInstance() => create();
  static $pb.PbList<GListOfEmpty> createRepeated() => $pb.PbList<GListOfEmpty>();
  @$core.pragma('dart2js:noInline')
  static GListOfEmpty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfEmpty>(create);
  static GListOfEmpty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GEmpty> get items => $_getList(0);
}

class GEncapsulatedFieldsClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GEncapsulatedFieldsClass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalString')
    ..hasRequiredFields = false
  ;

  GEncapsulatedFieldsClass._() : super();
  factory GEncapsulatedFieldsClass({
    $core.String? finalString,
  }) {
    final _result = create();
    if (finalString != null) {
      _result.finalString = finalString;
    }
    return _result;
  }
  factory GEncapsulatedFieldsClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GEncapsulatedFieldsClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GEncapsulatedFieldsClass clone() => GEncapsulatedFieldsClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GEncapsulatedFieldsClass copyWith(void Function(GEncapsulatedFieldsClass) updates) => super.copyWith((message) => updates(message as GEncapsulatedFieldsClass)) as GEncapsulatedFieldsClass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEncapsulatedFieldsClass create() => GEncapsulatedFieldsClass._();
  GEncapsulatedFieldsClass createEmptyInstance() => create();
  static $pb.PbList<GEncapsulatedFieldsClass> createRepeated() => $pb.PbList<GEncapsulatedFieldsClass>();
  @$core.pragma('dart2js:noInline')
  static GEncapsulatedFieldsClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GEncapsulatedFieldsClass>(create);
  static GEncapsulatedFieldsClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get finalString => $_getSZ(0);
  @$pb.TagNumber(1)
  set finalString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinalString() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinalString() => clearField(1);
}

class GListOfEncapsulatedFieldsClass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfEncapsulatedFieldsClass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GEncapsulatedFieldsClass>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GEncapsulatedFieldsClass.create)
    ..hasRequiredFields = false
  ;

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
  factory GListOfEncapsulatedFieldsClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfEncapsulatedFieldsClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfEncapsulatedFieldsClass clone() => GListOfEncapsulatedFieldsClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfEncapsulatedFieldsClass copyWith(void Function(GListOfEncapsulatedFieldsClass) updates) => super.copyWith((message) => updates(message as GListOfEncapsulatedFieldsClass)) as GListOfEncapsulatedFieldsClass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfEncapsulatedFieldsClass create() => GListOfEncapsulatedFieldsClass._();
  GListOfEncapsulatedFieldsClass createEmptyInstance() => create();
  static $pb.PbList<GListOfEncapsulatedFieldsClass> createRepeated() => $pb.PbList<GListOfEncapsulatedFieldsClass>();
  @$core.pragma('dart2js:noInline')
  static GListOfEncapsulatedFieldsClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfEncapsulatedFieldsClass>(create);
  static GListOfEncapsulatedFieldsClass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GEncapsulatedFieldsClass> get items => $_getList(0);
}

class GIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GIngredient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GIngredient._() : super();
  factory GIngredient() => create();
  factory GIngredient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GIngredient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GIngredient clone() => GIngredient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GIngredient copyWith(void Function(GIngredient) updates) => super.copyWith((message) => updates(message as GIngredient)) as GIngredient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GIngredient create() => GIngredient._();
  GIngredient createEmptyInstance() => create();
  static $pb.PbList<GIngredient> createRepeated() => $pb.PbList<GIngredient>();
  @$core.pragma('dart2js:noInline')
  static GIngredient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GIngredient>(create);
  static GIngredient? _defaultInstance;
}

class GListOfIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfIngredient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GIngredient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GIngredient.create)
    ..hasRequiredFields = false
  ;

  GListOfIngredient._() : super();
  factory GListOfIngredient({
    $core.Iterable<GIngredient>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfIngredient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfIngredient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfIngredient clone() => GListOfIngredient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfIngredient copyWith(void Function(GListOfIngredient) updates) => super.copyWith((message) => updates(message as GListOfIngredient)) as GListOfIngredient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfIngredient create() => GListOfIngredient._();
  GListOfIngredient createEmptyInstance() => create();
  static $pb.PbList<GListOfIngredient> createRepeated() => $pb.PbList<GListOfIngredient>();
  @$core.pragma('dart2js:noInline')
  static GListOfIngredient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfIngredient>(create);
  static GListOfIngredient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GIngredient> get items => $_getList(0);
}

class GKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GKey._() : super();
  factory GKey() => create();
  factory GKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKey clone() => GKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKey copyWith(void Function(GKey) updates) => super.copyWith((message) => updates(message as GKey)) as GKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKey create() => GKey._();
  GKey createEmptyInstance() => create();
  static $pb.PbList<GKey> createRepeated() => $pb.PbList<GKey>();
  @$core.pragma('dart2js:noInline')
  static GKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKey>(create);
  static GKey? _defaultInstance;
}

class GListOfKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKey.create)
    ..hasRequiredFields = false
  ;

  GListOfKey._() : super();
  factory GListOfKey({
    $core.Iterable<GKey>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKey clone() => GListOfKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKey copyWith(void Function(GListOfKey) updates) => super.copyWith((message) => updates(message as GListOfKey)) as GListOfKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKey create() => GListOfKey._();
  GListOfKey createEmptyInstance() => create();
  static $pb.PbList<GListOfKey> createRepeated() => $pb.PbList<GListOfKey>();
  @$core.pragma('dart2js:noInline')
  static GListOfKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKey>(create);
  static GListOfKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKey> get items => $_getList(0);
}

class GListsHost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListsHost', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GListsHost._() : super();
  factory GListsHost() => create();
  factory GListsHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListsHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListsHost clone() => GListsHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListsHost copyWith(void Function(GListsHost) updates) => super.copyWith((message) => updates(message as GListsHost)) as GListsHost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListsHost create() => GListsHost._();
  GListsHost createEmptyInstance() => create();
  static $pb.PbList<GListsHost> createRepeated() => $pb.PbList<GListsHost>();
  @$core.pragma('dart2js:noInline')
  static GListsHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListsHost>(create);
  static GListsHost? _defaultInstance;
}

class GListOfListsHost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfListsHost', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GListsHost>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GListsHost.create)
    ..hasRequiredFields = false
  ;

  GListOfListsHost._() : super();
  factory GListOfListsHost({
    $core.Iterable<GListsHost>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfListsHost.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfListsHost.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfListsHost clone() => GListOfListsHost()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfListsHost copyWith(void Function(GListOfListsHost) updates) => super.copyWith((message) => updates(message as GListOfListsHost)) as GListOfListsHost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfListsHost create() => GListOfListsHost._();
  GListOfListsHost createEmptyInstance() => create();
  static $pb.PbList<GListOfListsHost> createRepeated() => $pb.PbList<GListOfListsHost>();
  @$core.pragma('dart2js:noInline')
  static GListOfListsHost getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfListsHost>(create);
  static GListOfListsHost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GListsHost> get items => $_getList(0);
}

class GAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAirplane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAircraft.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wingspan', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GAirplane._() : super();
  factory GAirplane({
    GFieldsOfAircraft? fieldsOfSuperClass,
    $core.int? wingspan,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (wingspan != null) {
      _result.wingspan = wingspan;
    }
    return _result;
  }
  factory GAirplane.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAirplane.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAirplane clone() => GAirplane()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAirplane copyWith(void Function(GAirplane) updates) => super.copyWith((message) => updates(message as GAirplane)) as GAirplane; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAirplane create() => GAirplane._();
  GAirplane createEmptyInstance() => create();
  static $pb.PbList<GAirplane> createRepeated() => $pb.PbList<GAirplane>();
  @$core.pragma('dart2js:noInline')
  static GAirplane getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAirplane>(create);
  static GAirplane? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAircraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAircraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAircraft ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get wingspan => $_getIZ(1);
  @$pb.TagNumber(2)
  set wingspan($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWingspan() => $_has(1);
  @$pb.TagNumber(2)
  void clearWingspan() => clearField(2);
}

class GListOfAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAirplane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GAirplane>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAirplane.create)
    ..hasRequiredFields = false
  ;

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
  factory GListOfAirplane.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAirplane.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAirplane clone() => GListOfAirplane()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAirplane copyWith(void Function(GListOfAirplane) updates) => super.copyWith((message) => updates(message as GListOfAirplane)) as GListOfAirplane; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAirplane create() => GListOfAirplane._();
  GListOfAirplane createEmptyInstance() => create();
  static $pb.PbList<GListOfAirplane> createRepeated() => $pb.PbList<GListOfAirplane>();
  @$core.pragma('dart2js:noInline')
  static GListOfAirplane getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAirplane>(create);
  static GListOfAirplane? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAirplane> get items => $_getList(0);
}

class GBalloon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBalloon', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GBalloon._() : super();
  factory GBalloon() => create();
  factory GBalloon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBalloon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBalloon clone() => GBalloon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBalloon copyWith(void Function(GBalloon) updates) => super.copyWith((message) => updates(message as GBalloon)) as GBalloon; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBalloon create() => GBalloon._();
  GBalloon createEmptyInstance() => create();
  static $pb.PbList<GBalloon> createRepeated() => $pb.PbList<GBalloon>();
  @$core.pragma('dart2js:noInline')
  static GBalloon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBalloon>(create);
  static GBalloon? _defaultInstance;
}

class GListOfBalloon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfBalloon', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GBalloon>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GBalloon.create)
    ..hasRequiredFields = false
  ;

  GListOfBalloon._() : super();
  factory GListOfBalloon({
    $core.Iterable<GBalloon>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfBalloon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfBalloon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfBalloon clone() => GListOfBalloon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfBalloon copyWith(void Function(GListOfBalloon) updates) => super.copyWith((message) => updates(message as GListOfBalloon)) as GListOfBalloon; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfBalloon create() => GListOfBalloon._();
  GListOfBalloon createEmptyInstance() => create();
  static $pb.PbList<GListOfBalloon> createRepeated() => $pb.PbList<GListOfBalloon>();
  @$core.pragma('dart2js:noInline')
  static GListOfBalloon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfBalloon>(create);
  static GListOfBalloon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GBalloon> get items => $_getList(0);
}

class GBicycle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBicycle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAbstractVehicle.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wheelDiamater', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GBicycle._() : super();
  factory GBicycle({
    GFieldsOfAbstractVehicle? fieldsOfSuperClass,
    $core.List<$core.int>? wheelDiamater,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (wheelDiamater != null) {
      _result.wheelDiamater = wheelDiamater;
    }
    return _result;
  }
  factory GBicycle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBicycle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBicycle clone() => GBicycle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBicycle copyWith(void Function(GBicycle) updates) => super.copyWith((message) => updates(message as GBicycle)) as GBicycle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBicycle create() => GBicycle._();
  GBicycle createEmptyInstance() => create();
  static $pb.PbList<GBicycle> createRepeated() => $pb.PbList<GBicycle>();
  @$core.pragma('dart2js:noInline')
  static GBicycle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBicycle>(create);
  static GBicycle? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAbstractVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get wheelDiamater => $_getN(1);
  @$pb.TagNumber(2)
  set wheelDiamater($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWheelDiamater() => $_has(1);
  @$pb.TagNumber(2)
  void clearWheelDiamater() => clearField(2);
}

class GListOfBicycle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfBicycle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GBicycle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GBicycle.create)
    ..hasRequiredFields = false
  ;

  GListOfBicycle._() : super();
  factory GListOfBicycle({
    $core.Iterable<GBicycle>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfBicycle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfBicycle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfBicycle clone() => GListOfBicycle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfBicycle copyWith(void Function(GListOfBicycle) updates) => super.copyWith((message) => updates(message as GListOfBicycle)) as GListOfBicycle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfBicycle create() => GListOfBicycle._();
  GListOfBicycle createEmptyInstance() => create();
  static $pb.PbList<GListOfBicycle> createRepeated() => $pb.PbList<GListOfBicycle>();
  @$core.pragma('dart2js:noInline')
  static GListOfBicycle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfBicycle>(create);
  static GListOfBicycle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GBicycle> get items => $_getList(0);
}

class GCar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfVehicle.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfDoors', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GCar._() : super();
  factory GCar({
    GFieldsOfVehicle? fieldsOfSuperClass,
    $core.int? numberOfDoors,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (numberOfDoors != null) {
      _result.numberOfDoors = numberOfDoors;
    }
    return _result;
  }
  factory GCar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GCar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GCar clone() => GCar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GCar copyWith(void Function(GCar) updates) => super.copyWith((message) => updates(message as GCar)) as GCar; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GCar create() => GCar._();
  GCar createEmptyInstance() => create();
  static $pb.PbList<GCar> createRepeated() => $pb.PbList<GCar>();
  @$core.pragma('dart2js:noInline')
  static GCar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GCar>(create);
  static GCar? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfVehicle get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfVehicle ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get numberOfDoors => $_getIZ(1);
  @$pb.TagNumber(2)
  set numberOfDoors($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumberOfDoors() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberOfDoors() => clearField(2);
}

class GListOfCar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfCar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GCar>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GCar.create)
    ..hasRequiredFields = false
  ;

  GListOfCar._() : super();
  factory GListOfCar({
    $core.Iterable<GCar>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfCar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfCar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfCar clone() => GListOfCar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfCar copyWith(void Function(GListOfCar) updates) => super.copyWith((message) => updates(message as GListOfCar)) as GListOfCar; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfCar create() => GListOfCar._();
  GListOfCar createEmptyInstance() => create();
  static $pb.PbList<GListOfCar> createRepeated() => $pb.PbList<GListOfCar>();
  @$core.pragma('dart2js:noInline')
  static GListOfCar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfCar>(create);
  static GListOfCar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GCar> get items => $_getList(0);
}

class GEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GEntity._() : super();
  factory GEntity() => create();
  factory GEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GEntity clone() => GEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GEntity copyWith(void Function(GEntity) updates) => super.copyWith((message) => updates(message as GEntity)) as GEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GEntity create() => GEntity._();
  GEntity createEmptyInstance() => create();
  static $pb.PbList<GEntity> createRepeated() => $pb.PbList<GEntity>();
  @$core.pragma('dart2js:noInline')
  static GEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GEntity>(create);
  static GEntity? _defaultInstance;
}

class GListOfEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GEntity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GEntity.create)
    ..hasRequiredFields = false
  ;

  GListOfEntity._() : super();
  factory GListOfEntity({
    $core.Iterable<GEntity>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfEntity clone() => GListOfEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfEntity copyWith(void Function(GListOfEntity) updates) => super.copyWith((message) => updates(message as GListOfEntity)) as GListOfEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfEntity create() => GListOfEntity._();
  GListOfEntity createEmptyInstance() => create();
  static $pb.PbList<GListOfEntity> createRepeated() => $pb.PbList<GListOfEntity>();
  @$core.pragma('dart2js:noInline')
  static GListOfEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfEntity>(create);
  static GListOfEntity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GEntity> get items => $_getList(0);
}

class GGyrocopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GGyrocopter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfRotorcraft.create)
    ..hasRequiredFields = false
  ;

  GGyrocopter._() : super();
  factory GGyrocopter({
    GFieldsOfRotorcraft? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GGyrocopter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GGyrocopter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GGyrocopter clone() => GGyrocopter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GGyrocopter copyWith(void Function(GGyrocopter) updates) => super.copyWith((message) => updates(message as GGyrocopter)) as GGyrocopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGyrocopter create() => GGyrocopter._();
  GGyrocopter createEmptyInstance() => create();
  static $pb.PbList<GGyrocopter> createRepeated() => $pb.PbList<GGyrocopter>();
  @$core.pragma('dart2js:noInline')
  static GGyrocopter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GGyrocopter>(create);
  static GGyrocopter? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfRotorcraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfRotorcraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfRotorcraft ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfGyrocopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfGyrocopter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GGyrocopter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GGyrocopter.create)
    ..hasRequiredFields = false
  ;

  GListOfGyrocopter._() : super();
  factory GListOfGyrocopter({
    $core.Iterable<GGyrocopter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfGyrocopter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfGyrocopter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfGyrocopter clone() => GListOfGyrocopter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfGyrocopter copyWith(void Function(GListOfGyrocopter) updates) => super.copyWith((message) => updates(message as GListOfGyrocopter)) as GListOfGyrocopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfGyrocopter create() => GListOfGyrocopter._();
  GListOfGyrocopter createEmptyInstance() => create();
  static $pb.PbList<GListOfGyrocopter> createRepeated() => $pb.PbList<GListOfGyrocopter>();
  @$core.pragma('dart2js:noInline')
  static GListOfGyrocopter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfGyrocopter>(create);
  static GListOfGyrocopter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GGyrocopter> get items => $_getList(0);
}

class GHelicopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GHelicopter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfRotorcraft.create)
    ..hasRequiredFields = false
  ;

  GHelicopter._() : super();
  factory GHelicopter({
    GFieldsOfRotorcraft? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GHelicopter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GHelicopter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GHelicopter clone() => GHelicopter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GHelicopter copyWith(void Function(GHelicopter) updates) => super.copyWith((message) => updates(message as GHelicopter)) as GHelicopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GHelicopter create() => GHelicopter._();
  GHelicopter createEmptyInstance() => create();
  static $pb.PbList<GHelicopter> createRepeated() => $pb.PbList<GHelicopter>();
  @$core.pragma('dart2js:noInline')
  static GHelicopter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GHelicopter>(create);
  static GHelicopter? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfRotorcraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfRotorcraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfRotorcraft ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfHelicopter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfHelicopter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GHelicopter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GHelicopter.create)
    ..hasRequiredFields = false
  ;

  GListOfHelicopter._() : super();
  factory GListOfHelicopter({
    $core.Iterable<GHelicopter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfHelicopter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfHelicopter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfHelicopter clone() => GListOfHelicopter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfHelicopter copyWith(void Function(GListOfHelicopter) updates) => super.copyWith((message) => updates(message as GListOfHelicopter)) as GListOfHelicopter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfHelicopter create() => GListOfHelicopter._();
  GListOfHelicopter createEmptyInstance() => create();
  static $pb.PbList<GListOfHelicopter> createRepeated() => $pb.PbList<GListOfHelicopter>();
  @$core.pragma('dart2js:noInline')
  static GListOfHelicopter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfHelicopter>(create);
  static GListOfHelicopter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GHelicopter> get items => $_getList(0);
}

class GScooter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GScooter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAbstractVehicle.create)
    ..hasRequiredFields = false
  ;

  GScooter._() : super();
  factory GScooter({
    GFieldsOfAbstractVehicle? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GScooter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GScooter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GScooter clone() => GScooter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GScooter copyWith(void Function(GScooter) updates) => super.copyWith((message) => updates(message as GScooter)) as GScooter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GScooter create() => GScooter._();
  GScooter createEmptyInstance() => create();
  static $pb.PbList<GScooter> createRepeated() => $pb.PbList<GScooter>();
  @$core.pragma('dart2js:noInline')
  static GScooter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GScooter>(create);
  static GScooter? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAbstractVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfScooter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfScooter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GScooter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GScooter.create)
    ..hasRequiredFields = false
  ;

  GListOfScooter._() : super();
  factory GListOfScooter({
    $core.Iterable<GScooter>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfScooter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfScooter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfScooter clone() => GListOfScooter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfScooter copyWith(void Function(GListOfScooter) updates) => super.copyWith((message) => updates(message as GListOfScooter)) as GListOfScooter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfScooter create() => GListOfScooter._();
  GListOfScooter createEmptyInstance() => create();
  static $pb.PbList<GListOfScooter> createRepeated() => $pb.PbList<GListOfScooter>();
  @$core.pragma('dart2js:noInline')
  static GListOfScooter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfScooter>(create);
  static GListOfScooter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GScooter> get items => $_getList(0);
}

class GFieldsOfAbstractVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAbstractVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfAbstractVehicle._() : super();
  factory GFieldsOfAbstractVehicle() => create();
  factory GFieldsOfAbstractVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAbstractVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractVehicle clone() => GFieldsOfAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractVehicle copyWith(void Function(GFieldsOfAbstractVehicle) updates) => super.copyWith((message) => updates(message as GFieldsOfAbstractVehicle)) as GFieldsOfAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractVehicle create() => GFieldsOfAbstractVehicle._();
  GFieldsOfAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAbstractVehicle> createRepeated() => $pb.PbList<GFieldsOfAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAbstractVehicle>(create);
  static GFieldsOfAbstractVehicle? _defaultInstance;
}

enum GAbstractVehicle_Props {
  abstractVehicle, 
  bicycle, 
  scooter, 
  notSet
}

class GAbstractVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAbstractVehicle_Props> _GAbstractVehicle_PropsByTag = {
    1 : GAbstractVehicle_Props.abstractVehicle,
    3 : GAbstractVehicle_Props.bicycle,
    4 : GAbstractVehicle_Props.scooter,
    0 : GAbstractVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAbstractVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOM<GFieldsOfAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'abstractVehicle', subBuilder: GFieldsOfAbstractVehicle.create)
    ..aOM<GBicycle>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bicycle', subBuilder: GBicycle.create)
    ..aOM<GScooter>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scooter', subBuilder: GScooter.create)
    ..hasRequiredFields = false
  ;

  GAbstractVehicle._() : super();
  factory GAbstractVehicle({
    GFieldsOfAbstractVehicle? abstractVehicle,
    GBicycle? bicycle,
    GScooter? scooter,
  }) {
    final _result = create();
    if (abstractVehicle != null) {
      _result.abstractVehicle = abstractVehicle;
    }
    if (bicycle != null) {
      _result.bicycle = bicycle;
    }
    if (scooter != null) {
      _result.scooter = scooter;
    }
    return _result;
  }
  factory GAbstractVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAbstractVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAbstractVehicle clone() => GAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAbstractVehicle copyWith(void Function(GAbstractVehicle) updates) => super.copyWith((message) => updates(message as GAbstractVehicle)) as GAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractVehicle create() => GAbstractVehicle._();
  GAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GAbstractVehicle> createRepeated() => $pb.PbList<GAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GAbstractVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAbstractVehicle>(create);
  static GAbstractVehicle? _defaultInstance;

  GAbstractVehicle_Props whichProps() => _GAbstractVehicle_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle get abstractVehicle => $_getN(0);
  @$pb.TagNumber(1)
  set abstractVehicle(GFieldsOfAbstractVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAbstractVehicle() => $_has(0);
  @$pb.TagNumber(1)
  void clearAbstractVehicle() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractVehicle ensureAbstractVehicle() => $_ensure(0);

  @$pb.TagNumber(3)
  GBicycle get bicycle => $_getN(1);
  @$pb.TagNumber(3)
  set bicycle(GBicycle v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBicycle() => $_has(1);
  @$pb.TagNumber(3)
  void clearBicycle() => clearField(3);
  @$pb.TagNumber(3)
  GBicycle ensureBicycle() => $_ensure(1);

  @$pb.TagNumber(4)
  GScooter get scooter => $_getN(2);
  @$pb.TagNumber(4)
  set scooter(GScooter v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScooter() => $_has(2);
  @$pb.TagNumber(4)
  void clearScooter() => clearField(4);
  @$pb.TagNumber(4)
  GScooter ensureScooter() => $_ensure(2);
}

class GListOfAbstractVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAbstractVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GAbstractVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAbstractVehicle.create)
    ..hasRequiredFields = false
  ;

  GListOfAbstractVehicle._() : super();
  factory GListOfAbstractVehicle({
    $core.Iterable<GAbstractVehicle>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAbstractVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAbstractVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAbstractVehicle clone() => GListOfAbstractVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAbstractVehicle copyWith(void Function(GListOfAbstractVehicle) updates) => super.copyWith((message) => updates(message as GListOfAbstractVehicle)) as GListOfAbstractVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractVehicle create() => GListOfAbstractVehicle._();
  GListOfAbstractVehicle createEmptyInstance() => create();
  static $pb.PbList<GListOfAbstractVehicle> createRepeated() => $pb.PbList<GListOfAbstractVehicle>();
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAbstractVehicle>(create);
  static GListOfAbstractVehicle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAbstractVehicle> get items => $_getList(0);
}

class GFieldsOfAircraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAircraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceCeiling', $pb.PbFieldType.O3)
    ..aOM<GFieldsOfVehicle>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfVehicle.create)
    ..hasRequiredFields = false
  ;

  GFieldsOfAircraft._() : super();
  factory GFieldsOfAircraft({
    $core.int? serviceCeiling,
    GFieldsOfVehicle? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
    }
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GFieldsOfAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAircraft clone() => GFieldsOfAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAircraft copyWith(void Function(GFieldsOfAircraft) updates) => super.copyWith((message) => updates(message as GFieldsOfAircraft)) as GFieldsOfAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAircraft create() => GFieldsOfAircraft._();
  GFieldsOfAircraft createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAircraft> createRepeated() => $pb.PbList<GFieldsOfAircraft>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAircraft>(create);
  static GFieldsOfAircraft? _defaultInstance;

  @$pb.TagNumber(3)
  $core.int get serviceCeiling => $_getIZ(0);
  @$pb.TagNumber(3)
  set serviceCeiling($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasServiceCeiling() => $_has(0);
  @$pb.TagNumber(3)
  void clearServiceCeiling() => clearField(3);

  @$pb.TagNumber(6)
  GFieldsOfVehicle get fieldsOfSuperClass => $_getN(1);
  @$pb.TagNumber(6)
  set fieldsOfSuperClass(GFieldsOfVehicle v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFieldsOfSuperClass() => $_has(1);
  @$pb.TagNumber(6)
  void clearFieldsOfSuperClass() => clearField(6);
  @$pb.TagNumber(6)
  GFieldsOfVehicle ensureFieldsOfSuperClass() => $_ensure(1);
}

enum GAircraft_Props {
  aircraft, 
  airplane, 
  rotorcraft, 
  balloon, 
  notSet
}

class GAircraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAircraft_Props> _GAircraft_PropsByTag = {
    1 : GAircraft_Props.aircraft,
    3 : GAircraft_Props.airplane,
    4 : GAircraft_Props.rotorcraft,
    5 : GAircraft_Props.balloon,
    0 : GAircraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAircraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4, 5])
    ..aOM<GFieldsOfAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aircraft', subBuilder: GFieldsOfAircraft.create)
    ..aOM<GAirplane>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airplane', subBuilder: GAirplane.create)
    ..aOM<GRotorcraft>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotorcraft', subBuilder: GRotorcraft.create)
    ..aOM<GBalloon>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balloon', subBuilder: GBalloon.create)
    ..hasRequiredFields = false
  ;

  GAircraft._() : super();
  factory GAircraft({
    GFieldsOfAircraft? aircraft,
    GAirplane? airplane,
    GRotorcraft? rotorcraft,
    GBalloon? balloon,
  }) {
    final _result = create();
    if (aircraft != null) {
      _result.aircraft = aircraft;
    }
    if (airplane != null) {
      _result.airplane = airplane;
    }
    if (rotorcraft != null) {
      _result.rotorcraft = rotorcraft;
    }
    if (balloon != null) {
      _result.balloon = balloon;
    }
    return _result;
  }
  factory GAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAircraft clone() => GAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAircraft copyWith(void Function(GAircraft) updates) => super.copyWith((message) => updates(message as GAircraft)) as GAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAircraft create() => GAircraft._();
  GAircraft createEmptyInstance() => create();
  static $pb.PbList<GAircraft> createRepeated() => $pb.PbList<GAircraft>();
  @$core.pragma('dart2js:noInline')
  static GAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAircraft>(create);
  static GAircraft? _defaultInstance;

  GAircraft_Props whichProps() => _GAircraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfAircraft get aircraft => $_getN(0);
  @$pb.TagNumber(1)
  set aircraft(GFieldsOfAircraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAircraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearAircraft() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAircraft ensureAircraft() => $_ensure(0);

  @$pb.TagNumber(3)
  GAirplane get airplane => $_getN(1);
  @$pb.TagNumber(3)
  set airplane(GAirplane v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAirplane() => $_has(1);
  @$pb.TagNumber(3)
  void clearAirplane() => clearField(3);
  @$pb.TagNumber(3)
  GAirplane ensureAirplane() => $_ensure(1);

  @$pb.TagNumber(4)
  GRotorcraft get rotorcraft => $_getN(2);
  @$pb.TagNumber(4)
  set rotorcraft(GRotorcraft v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRotorcraft() => $_has(2);
  @$pb.TagNumber(4)
  void clearRotorcraft() => clearField(4);
  @$pb.TagNumber(4)
  GRotorcraft ensureRotorcraft() => $_ensure(2);

  @$pb.TagNumber(5)
  GBalloon get balloon => $_getN(3);
  @$pb.TagNumber(5)
  set balloon(GBalloon v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBalloon() => $_has(3);
  @$pb.TagNumber(5)
  void clearBalloon() => clearField(5);
  @$pb.TagNumber(5)
  GBalloon ensureBalloon() => $_ensure(3);
}

class GListOfAircraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAircraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAircraft.create)
    ..hasRequiredFields = false
  ;

  GListOfAircraft._() : super();
  factory GListOfAircraft({
    $core.Iterable<GAircraft>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAircraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAircraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAircraft clone() => GListOfAircraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAircraft copyWith(void Function(GListOfAircraft) updates) => super.copyWith((message) => updates(message as GListOfAircraft)) as GListOfAircraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAircraft create() => GListOfAircraft._();
  GListOfAircraft createEmptyInstance() => create();
  static $pb.PbList<GListOfAircraft> createRepeated() => $pb.PbList<GListOfAircraft>();
  @$core.pragma('dart2js:noInline')
  static GListOfAircraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAircraft>(create);
  static GListOfAircraft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAircraft> get items => $_getList(0);
}

class GFieldsOfRotorcraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfRotorcraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfAircraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAircraft.create)
    ..hasRequiredFields = false
  ;

  GFieldsOfRotorcraft._() : super();
  factory GFieldsOfRotorcraft({
    GFieldsOfAircraft? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GFieldsOfRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfRotorcraft clone() => GFieldsOfRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfRotorcraft copyWith(void Function(GFieldsOfRotorcraft) updates) => super.copyWith((message) => updates(message as GFieldsOfRotorcraft)) as GFieldsOfRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfRotorcraft create() => GFieldsOfRotorcraft._();
  GFieldsOfRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfRotorcraft> createRepeated() => $pb.PbList<GFieldsOfRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfRotorcraft>(create);
  static GFieldsOfRotorcraft? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAircraft get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAircraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAircraft ensureFieldsOfSuperClass() => $_ensure(0);
}

enum GRotorcraft_Props {
  rotorcraft, 
  helicopter, 
  gyrocopter, 
  notSet
}

class GRotorcraft extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GRotorcraft_Props> _GRotorcraft_PropsByTag = {
    1 : GRotorcraft_Props.rotorcraft,
    3 : GRotorcraft_Props.helicopter,
    4 : GRotorcraft_Props.gyrocopter,
    0 : GRotorcraft_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRotorcraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOM<GFieldsOfRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rotorcraft', subBuilder: GFieldsOfRotorcraft.create)
    ..aOM<GHelicopter>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'helicopter', subBuilder: GHelicopter.create)
    ..aOM<GGyrocopter>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gyrocopter', subBuilder: GGyrocopter.create)
    ..hasRequiredFields = false
  ;

  GRotorcraft._() : super();
  factory GRotorcraft({
    GFieldsOfRotorcraft? rotorcraft,
    GHelicopter? helicopter,
    GGyrocopter? gyrocopter,
  }) {
    final _result = create();
    if (rotorcraft != null) {
      _result.rotorcraft = rotorcraft;
    }
    if (helicopter != null) {
      _result.helicopter = helicopter;
    }
    if (gyrocopter != null) {
      _result.gyrocopter = gyrocopter;
    }
    return _result;
  }
  factory GRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRotorcraft clone() => GRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRotorcraft copyWith(void Function(GRotorcraft) updates) => super.copyWith((message) => updates(message as GRotorcraft)) as GRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRotorcraft create() => GRotorcraft._();
  GRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GRotorcraft> createRepeated() => $pb.PbList<GRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRotorcraft>(create);
  static GRotorcraft? _defaultInstance;

  GRotorcraft_Props whichProps() => _GRotorcraft_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfRotorcraft get rotorcraft => $_getN(0);
  @$pb.TagNumber(1)
  set rotorcraft(GFieldsOfRotorcraft v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRotorcraft() => $_has(0);
  @$pb.TagNumber(1)
  void clearRotorcraft() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfRotorcraft ensureRotorcraft() => $_ensure(0);

  @$pb.TagNumber(3)
  GHelicopter get helicopter => $_getN(1);
  @$pb.TagNumber(3)
  set helicopter(GHelicopter v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHelicopter() => $_has(1);
  @$pb.TagNumber(3)
  void clearHelicopter() => clearField(3);
  @$pb.TagNumber(3)
  GHelicopter ensureHelicopter() => $_ensure(1);

  @$pb.TagNumber(4)
  GGyrocopter get gyrocopter => $_getN(2);
  @$pb.TagNumber(4)
  set gyrocopter(GGyrocopter v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGyrocopter() => $_has(2);
  @$pb.TagNumber(4)
  void clearGyrocopter() => clearField(4);
  @$pb.TagNumber(4)
  GGyrocopter ensureGyrocopter() => $_ensure(2);
}

class GListOfRotorcraft extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfRotorcraft', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GRotorcraft>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GRotorcraft.create)
    ..hasRequiredFields = false
  ;

  GListOfRotorcraft._() : super();
  factory GListOfRotorcraft({
    $core.Iterable<GRotorcraft>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfRotorcraft.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfRotorcraft.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfRotorcraft clone() => GListOfRotorcraft()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfRotorcraft copyWith(void Function(GListOfRotorcraft) updates) => super.copyWith((message) => updates(message as GListOfRotorcraft)) as GListOfRotorcraft; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfRotorcraft create() => GListOfRotorcraft._();
  GListOfRotorcraft createEmptyInstance() => create();
  static $pb.PbList<GListOfRotorcraft> createRepeated() => $pb.PbList<GListOfRotorcraft>();
  @$core.pragma('dart2js:noInline')
  static GListOfRotorcraft getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfRotorcraft>(create);
  static GListOfRotorcraft? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRotorcraft> get items => $_getList(0);
}

class GFieldsOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfVehicle._() : super();
  factory GFieldsOfVehicle() => create();
  factory GFieldsOfVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfVehicle clone() => GFieldsOfVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfVehicle copyWith(void Function(GFieldsOfVehicle) updates) => super.copyWith((message) => updates(message as GFieldsOfVehicle)) as GFieldsOfVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfVehicle create() => GFieldsOfVehicle._();
  GFieldsOfVehicle createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfVehicle> createRepeated() => $pb.PbList<GFieldsOfVehicle>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfVehicle>(create);
  static GFieldsOfVehicle? _defaultInstance;
}

enum GVehicle_Props {
  vehicle, 
  aircraft, 
  car, 
  notSet
}

class GVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GVehicle_Props> _GVehicle_PropsByTag = {
    1 : GVehicle_Props.vehicle,
    3 : GVehicle_Props.aircraft,
    4 : GVehicle_Props.car,
    0 : GVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3, 4])
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vehicle', subBuilder: GFieldsOfVehicle.create)
    ..aOM<GAircraft>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aircraft', subBuilder: GAircraft.create)
    ..aOM<GCar>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'car', subBuilder: GCar.create)
    ..hasRequiredFields = false
  ;

  GVehicle._() : super();
  factory GVehicle({
    GFieldsOfVehicle? vehicle,
    GAircraft? aircraft,
    GCar? car,
  }) {
    final _result = create();
    if (vehicle != null) {
      _result.vehicle = vehicle;
    }
    if (aircraft != null) {
      _result.aircraft = aircraft;
    }
    if (car != null) {
      _result.car = car;
    }
    return _result;
  }
  factory GVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GVehicle clone() => GVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GVehicle copyWith(void Function(GVehicle) updates) => super.copyWith((message) => updates(message as GVehicle)) as GVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GVehicle create() => GVehicle._();
  GVehicle createEmptyInstance() => create();
  static $pb.PbList<GVehicle> createRepeated() => $pb.PbList<GVehicle>();
  @$core.pragma('dart2js:noInline')
  static GVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GVehicle>(create);
  static GVehicle? _defaultInstance;

  GVehicle_Props whichProps() => _GVehicle_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfVehicle get vehicle => $_getN(0);
  @$pb.TagNumber(1)
  set vehicle(GFieldsOfVehicle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVehicle() => $_has(0);
  @$pb.TagNumber(1)
  void clearVehicle() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfVehicle ensureVehicle() => $_ensure(0);

  @$pb.TagNumber(3)
  GAircraft get aircraft => $_getN(1);
  @$pb.TagNumber(3)
  set aircraft(GAircraft v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAircraft() => $_has(1);
  @$pb.TagNumber(3)
  void clearAircraft() => clearField(3);
  @$pb.TagNumber(3)
  GAircraft ensureAircraft() => $_ensure(1);

  @$pb.TagNumber(4)
  GCar get car => $_getN(2);
  @$pb.TagNumber(4)
  set car(GCar v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCar() => $_has(2);
  @$pb.TagNumber(4)
  void clearCar() => clearField(4);
  @$pb.TagNumber(4)
  GCar ensureCar() => $_ensure(2);
}

class GListOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GVehicle.create)
    ..hasRequiredFields = false
  ;

  GListOfVehicle._() : super();
  factory GListOfVehicle({
    $core.Iterable<GVehicle>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfVehicle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfVehicle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfVehicle clone() => GListOfVehicle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfVehicle copyWith(void Function(GListOfVehicle) updates) => super.copyWith((message) => updates(message as GListOfVehicle)) as GListOfVehicle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfVehicle create() => GListOfVehicle._();
  GListOfVehicle createEmptyInstance() => create();
  static $pb.PbList<GListOfVehicle> createRepeated() => $pb.PbList<GListOfVehicle>();
  @$core.pragma('dart2js:noInline')
  static GListOfVehicle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfVehicle>(create);
  static GListOfVehicle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GVehicle> get items => $_getList(0);
}

class GKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnife', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<GKnifeType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: GKnifeType.G_KNIFE_TYPE_CHEFS_KNIFE, valueOf: GKnifeType.valueOf, enumValues: GKnifeType.values)
    ..hasRequiredFields = false
  ;

  GKnife._() : super();
  factory GKnife({
    $core.String? name,
    GKnifeType? type,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory GKnife.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnife.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnife clone() => GKnife()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnife copyWith(void Function(GKnife) updates) => super.copyWith((message) => updates(message as GKnife)) as GKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnife create() => GKnife._();
  GKnife createEmptyInstance() => create();
  static $pb.PbList<GKnife> createRepeated() => $pb.PbList<GKnife>();
  @$core.pragma('dart2js:noInline')
  static GKnife getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnife>(create);
  static GKnife? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  GKnifeType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(GKnifeType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GListOfKnife extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKnife', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GKnife>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKnife.create)
    ..hasRequiredFields = false
  ;

  GListOfKnife._() : super();
  factory GListOfKnife({
    $core.Iterable<GKnife>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKnife.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKnife.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKnife clone() => GListOfKnife()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKnife copyWith(void Function(GListOfKnife) updates) => super.copyWith((message) => updates(message as GListOfKnife)) as GListOfKnife; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKnife create() => GListOfKnife._();
  GListOfKnife createEmptyInstance() => create();
  static $pb.PbList<GListOfKnife> createRepeated() => $pb.PbList<GListOfKnife>();
  @$core.pragma('dart2js:noInline')
  static GListOfKnife getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKnife>(create);
  static GListOfKnife? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKnife> get items => $_getList(0);
}

class GGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GGarlicPress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GGarlicPress._() : super();
  factory GGarlicPress() => create();
  factory GGarlicPress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GGarlicPress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GGarlicPress clone() => GGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GGarlicPress copyWith(void Function(GGarlicPress) updates) => super.copyWith((message) => updates(message as GGarlicPress)) as GGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GGarlicPress create() => GGarlicPress._();
  GGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GGarlicPress> createRepeated() => $pb.PbList<GGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GGarlicPress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GGarlicPress>(create);
  static GGarlicPress? _defaultInstance;
}

class GListOfGarlicPress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfGarlicPress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GGarlicPress>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GGarlicPress.create)
    ..hasRequiredFields = false
  ;

  GListOfGarlicPress._() : super();
  factory GListOfGarlicPress({
    $core.Iterable<GGarlicPress>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfGarlicPress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfGarlicPress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfGarlicPress clone() => GListOfGarlicPress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfGarlicPress copyWith(void Function(GListOfGarlicPress) updates) => super.copyWith((message) => updates(message as GListOfGarlicPress)) as GListOfGarlicPress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfGarlicPress create() => GListOfGarlicPress._();
  GListOfGarlicPress createEmptyInstance() => create();
  static $pb.PbList<GListOfGarlicPress> createRepeated() => $pb.PbList<GListOfGarlicPress>();
  @$core.pragma('dart2js:noInline')
  static GListOfGarlicPress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfGarlicPress>(create);
  static GListOfGarlicPress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GGarlicPress> get items => $_getList(0);
}

class GKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKitchen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GKitchen._() : super();
  factory GKitchen() => create();
  factory GKitchen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKitchen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKitchen clone() => GKitchen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKitchen copyWith(void Function(GKitchen) updates) => super.copyWith((message) => updates(message as GKitchen)) as GKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKitchen create() => GKitchen._();
  GKitchen createEmptyInstance() => create();
  static $pb.PbList<GKitchen> createRepeated() => $pb.PbList<GKitchen>();
  @$core.pragma('dart2js:noInline')
  static GKitchen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKitchen>(create);
  static GKitchen? _defaultInstance;
}

class GListOfKitchen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKitchen', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GKitchen>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKitchen.create)
    ..hasRequiredFields = false
  ;

  GListOfKitchen._() : super();
  factory GListOfKitchen({
    $core.Iterable<GKitchen>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKitchen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKitchen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKitchen clone() => GListOfKitchen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKitchen copyWith(void Function(GListOfKitchen) updates) => super.copyWith((message) => updates(message as GListOfKitchen)) as GListOfKitchen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKitchen create() => GListOfKitchen._();
  GListOfKitchen createEmptyInstance() => create();
  static $pb.PbList<GListOfKitchen> createRepeated() => $pb.PbList<GListOfKitchen>();
  @$core.pragma('dart2js:noInline')
  static GListOfKitchen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKitchen>(create);
  static GListOfKitchen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKitchen> get items => $_getList(0);
}

class GChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GChef', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GRecipe>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteRecipe', subBuilder: GRecipe.create)
    ..aOM<GKnife>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..e<GApplianceType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteApplianceType', $pb.PbFieldType.OE, defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteWords')
    ..aOM<Duration>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'birthdate', subBuilder: Duration.create)
    ..aOM<Duration>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shelfLife', subBuilder: Duration.create)
    ..hasRequiredFields = false
  ;

  GChef._() : super();
  factory GChef({
    GRecipe? favoriteRecipe,
    GKnife? favoriteKnife,
    GApplianceType? favoriteApplianceType,
    $core.Iterable<$core.String>? favoriteWords,
    Duration? birthdate,
    Duration? shelfLife,
  }) {
    final _result = create();
    if (favoriteRecipe != null) {
      _result.favoriteRecipe = favoriteRecipe;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    if (favoriteApplianceType != null) {
      _result.favoriteApplianceType = favoriteApplianceType;
    }
    if (favoriteWords != null) {
      _result.favoriteWords.addAll(favoriteWords);
    }
    if (birthdate != null) {
      _result.birthdate = birthdate;
    }
    if (shelfLife != null) {
      _result.shelfLife = shelfLife;
    }
    return _result;
  }
  factory GChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GChef clone() => GChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GChef copyWith(void Function(GChef) updates) => super.copyWith((message) => updates(message as GChef)) as GChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GChef create() => GChef._();
  GChef createEmptyInstance() => create();
  static $pb.PbList<GChef> createRepeated() => $pb.PbList<GChef>();
  @$core.pragma('dart2js:noInline')
  static GChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GChef>(create);
  static GChef? _defaultInstance;

  @$pb.TagNumber(2)
  GRecipe get favoriteRecipe => $_getN(0);
  @$pb.TagNumber(2)
  set favoriteRecipe(GRecipe v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteRecipe() => $_has(0);
  @$pb.TagNumber(2)
  void clearFavoriteRecipe() => clearField(2);
  @$pb.TagNumber(2)
  GRecipe ensureFavoriteRecipe() => $_ensure(0);

  @$pb.TagNumber(3)
  GKnife get favoriteKnife => $_getN(1);
  @$pb.TagNumber(3)
  set favoriteKnife(GKnife v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFavoriteKnife() => $_has(1);
  @$pb.TagNumber(3)
  void clearFavoriteKnife() => clearField(3);
  @$pb.TagNumber(3)
  GKnife ensureFavoriteKnife() => $_ensure(1);

  @$pb.TagNumber(4)
  GApplianceType get favoriteApplianceType => $_getN(2);
  @$pb.TagNumber(4)
  set favoriteApplianceType(GApplianceType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFavoriteApplianceType() => $_has(2);
  @$pb.TagNumber(4)
  void clearFavoriteApplianceType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get favoriteWords => $_getList(3);

  @$pb.TagNumber(6)
  Duration get birthdate => $_getN(4);
  @$pb.TagNumber(6)
  set birthdate(Duration v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBirthdate() => $_has(4);
  @$pb.TagNumber(6)
  void clearBirthdate() => clearField(6);
  @$pb.TagNumber(6)
  Duration ensureBirthdate() => $_ensure(4);

  @$pb.TagNumber(7)
  Duration get shelfLife => $_getN(5);
  @$pb.TagNumber(7)
  set shelfLife(Duration v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasShelfLife() => $_has(5);
  @$pb.TagNumber(7)
  void clearShelfLife() => clearField(7);
  @$pb.TagNumber(7)
  Duration ensureShelfLife() => $_ensure(5);
}

class GListOfChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfChef', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GChef.create)
    ..hasRequiredFields = false
  ;

  GListOfChef._() : super();
  factory GListOfChef({
    $core.Iterable<GChef>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfChef clone() => GListOfChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfChef copyWith(void Function(GListOfChef) updates) => super.copyWith((message) => updates(message as GListOfChef)) as GListOfChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfChef create() => GListOfChef._();
  GListOfChef createEmptyInstance() => create();
  static $pb.PbList<GListOfChef> createRepeated() => $pb.PbList<GListOfChef>();
  @$core.pragma('dart2js:noInline')
  static GListOfChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfChef>(create);
  static GListOfChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GChef> get items => $_getList(0);
}

class GSousChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GSousChef', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GChef.create)
    ..hasRequiredFields = false
  ;

  GSousChef._() : super();
  factory GSousChef({
    GChef? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GSousChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GSousChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GSousChef clone() => GSousChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GSousChef copyWith(void Function(GSousChef) updates) => super.copyWith((message) => updates(message as GSousChef)) as GSousChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSousChef create() => GSousChef._();
  GSousChef createEmptyInstance() => create();
  static $pb.PbList<GSousChef> createRepeated() => $pb.PbList<GSousChef>();
  @$core.pragma('dart2js:noInline')
  static GSousChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSousChef>(create);
  static GSousChef? _defaultInstance;

  @$pb.TagNumber(1)
  GChef get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GChef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GChef ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfSousChef extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfSousChef', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GSousChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GSousChef.create)
    ..hasRequiredFields = false
  ;

  GListOfSousChef._() : super();
  factory GListOfSousChef({
    $core.Iterable<GSousChef>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfSousChef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfSousChef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfSousChef clone() => GListOfSousChef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfSousChef copyWith(void Function(GListOfSousChef) updates) => super.copyWith((message) => updates(message as GListOfSousChef)) as GListOfSousChef; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfSousChef create() => GListOfSousChef._();
  GListOfSousChef createEmptyInstance() => create();
  static $pb.PbList<GListOfSousChef> createRepeated() => $pb.PbList<GListOfSousChef>();
  @$core.pragma('dart2js:noInline')
  static GListOfSousChef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfSousChef>(create);
  static GListOfSousChef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GSousChef> get items => $_getList(0);
}

class GKnifeMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnifeMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GChef>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GChef.create)
    ..aOM<GKnife>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'favoriteKnife', subBuilder: GKnife.create)
    ..hasRequiredFields = false
  ;

  GKnifeMaster._() : super();
  factory GKnifeMaster({
    GChef? fieldsOfSuperClass,
    GKnife? favoriteKnife,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (favoriteKnife != null) {
      _result.favoriteKnife = favoriteKnife;
    }
    return _result;
  }
  factory GKnifeMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnifeMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnifeMaster clone() => GKnifeMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnifeMaster copyWith(void Function(GKnifeMaster) updates) => super.copyWith((message) => updates(message as GKnifeMaster)) as GKnifeMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnifeMaster create() => GKnifeMaster._();
  GKnifeMaster createEmptyInstance() => create();
  static $pb.PbList<GKnifeMaster> createRepeated() => $pb.PbList<GKnifeMaster>();
  @$core.pragma('dart2js:noInline')
  static GKnifeMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnifeMaster>(create);
  static GKnifeMaster? _defaultInstance;

  @$pb.TagNumber(1)
  GChef get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GChef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GChef ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  GKnife get favoriteKnife => $_getN(1);
  @$pb.TagNumber(2)
  set favoriteKnife(GKnife v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFavoriteKnife() => $_has(1);
  @$pb.TagNumber(2)
  void clearFavoriteKnife() => clearField(2);
  @$pb.TagNumber(2)
  GKnife ensureFavoriteKnife() => $_ensure(1);
}

class GListOfKnifeMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfKnifeMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GKnifeMaster>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GKnifeMaster.create)
    ..hasRequiredFields = false
  ;

  GListOfKnifeMaster._() : super();
  factory GListOfKnifeMaster({
    $core.Iterable<GKnifeMaster>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfKnifeMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfKnifeMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfKnifeMaster clone() => GListOfKnifeMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfKnifeMaster copyWith(void Function(GListOfKnifeMaster) updates) => super.copyWith((message) => updates(message as GListOfKnifeMaster)) as GListOfKnifeMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfKnifeMaster create() => GListOfKnifeMaster._();
  GListOfKnifeMaster createEmptyInstance() => create();
  static $pb.PbList<GListOfKnifeMaster> createRepeated() => $pb.PbList<GListOfKnifeMaster>();
  @$core.pragma('dart2js:noInline')
  static GListOfKnifeMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfKnifeMaster>(create);
  static GListOfKnifeMaster? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GKnifeMaster> get items => $_getList(0);
}

class GInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GInventory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GInventory._() : super();
  factory GInventory() => create();
  factory GInventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GInventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GInventory clone() => GInventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GInventory copyWith(void Function(GInventory) updates) => super.copyWith((message) => updates(message as GInventory)) as GInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GInventory create() => GInventory._();
  GInventory createEmptyInstance() => create();
  static $pb.PbList<GInventory> createRepeated() => $pb.PbList<GInventory>();
  @$core.pragma('dart2js:noInline')
  static GInventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GInventory>(create);
  static GInventory? _defaultInstance;
}

class GListOfInventory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfInventory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GInventory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GInventory.create)
    ..hasRequiredFields = false
  ;

  GListOfInventory._() : super();
  factory GListOfInventory({
    $core.Iterable<GInventory>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfInventory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfInventory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfInventory clone() => GListOfInventory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfInventory copyWith(void Function(GListOfInventory) updates) => super.copyWith((message) => updates(message as GListOfInventory)) as GListOfInventory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfInventory create() => GListOfInventory._();
  GListOfInventory createEmptyInstance() => create();
  static $pb.PbList<GListOfInventory> createRepeated() => $pb.PbList<GListOfInventory>();
  @$core.pragma('dart2js:noInline')
  static GListOfInventory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfInventory>(create);
  static GListOfInventory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GInventory> get items => $_getList(0);
}

class GPrecisionSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GPrecisionSubject', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GPrecisionSubject._() : super();
  factory GPrecisionSubject() => create();
  factory GPrecisionSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GPrecisionSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GPrecisionSubject clone() => GPrecisionSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GPrecisionSubject copyWith(void Function(GPrecisionSubject) updates) => super.copyWith((message) => updates(message as GPrecisionSubject)) as GPrecisionSubject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPrecisionSubject create() => GPrecisionSubject._();
  GPrecisionSubject createEmptyInstance() => create();
  static $pb.PbList<GPrecisionSubject> createRepeated() => $pb.PbList<GPrecisionSubject>();
  @$core.pragma('dart2js:noInline')
  static GPrecisionSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GPrecisionSubject>(create);
  static GPrecisionSubject? _defaultInstance;
}

class GListOfPrecisionSubject extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfPrecisionSubject', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GPrecisionSubject>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GPrecisionSubject.create)
    ..hasRequiredFields = false
  ;

  GListOfPrecisionSubject._() : super();
  factory GListOfPrecisionSubject({
    $core.Iterable<GPrecisionSubject>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfPrecisionSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfPrecisionSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfPrecisionSubject clone() => GListOfPrecisionSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfPrecisionSubject copyWith(void Function(GListOfPrecisionSubject) updates) => super.copyWith((message) => updates(message as GListOfPrecisionSubject)) as GListOfPrecisionSubject; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfPrecisionSubject create() => GListOfPrecisionSubject._();
  GListOfPrecisionSubject createEmptyInstance() => create();
  static $pb.PbList<GListOfPrecisionSubject> createRepeated() => $pb.PbList<GListOfPrecisionSubject>();
  @$core.pragma('dart2js:noInline')
  static GListOfPrecisionSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfPrecisionSubject>(create);
  static GListOfPrecisionSubject? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GPrecisionSubject> get items => $_getList(0);
}

class GRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GRecipe._() : super();
  factory GRecipe() => create();
  factory GRecipe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRecipe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRecipe clone() => GRecipe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRecipe copyWith(void Function(GRecipe) updates) => super.copyWith((message) => updates(message as GRecipe)) as GRecipe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRecipe create() => GRecipe._();
  GRecipe createEmptyInstance() => create();
  static $pb.PbList<GRecipe> createRepeated() => $pb.PbList<GRecipe>();
  @$core.pragma('dart2js:noInline')
  static GRecipe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRecipe>(create);
  static GRecipe? _defaultInstance;
}

class GListOfRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfRecipe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..hasRequiredFields = false
  ;

  GListOfRecipe._() : super();
  factory GListOfRecipe({
    $core.Iterable<GRecipe>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfRecipe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfRecipe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfRecipe clone() => GListOfRecipe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfRecipe copyWith(void Function(GListOfRecipe) updates) => super.copyWith((message) => updates(message as GListOfRecipe)) as GListOfRecipe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfRecipe create() => GListOfRecipe._();
  GListOfRecipe createEmptyInstance() => create();
  static $pb.PbList<GListOfRecipe> createRepeated() => $pb.PbList<GListOfRecipe>();
  @$core.pragma('dart2js:noInline')
  static GListOfRecipe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfRecipe>(create);
  static GListOfRecipe? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRecipe> get items => $_getList(0);
}

class GStarship extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GStarship', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GStarship._() : super();
  factory GStarship() => create();
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
}

class GListOfStarship extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfStarship', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
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

class GPerson extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GPerson', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<BoolValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boolValue', subBuilder: BoolValue.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decVal', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GPerson._() : super();
  factory GPerson({
    BoolValue? boolValue,
    $core.List<$core.int>? decVal,
  }) {
    final _result = create();
    if (boolValue != null) {
      _result.boolValue = boolValue;
    }
    if (decVal != null) {
      _result.decVal = decVal;
    }
    return _result;
  }
  factory GPerson.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GPerson.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GPerson clone() => GPerson()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GPerson copyWith(void Function(GPerson) updates) => super.copyWith((message) => updates(message as GPerson)) as GPerson; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GPerson create() => GPerson._();
  GPerson createEmptyInstance() => create();
  static $pb.PbList<GPerson> createRepeated() => $pb.PbList<GPerson>();
  @$core.pragma('dart2js:noInline')
  static GPerson getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GPerson>(create);
  static GPerson? _defaultInstance;

  @$pb.TagNumber(1)
  BoolValue get boolValue => $_getN(0);
  @$pb.TagNumber(1)
  set boolValue(BoolValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoolValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoolValue() => clearField(1);
  @$pb.TagNumber(1)
  BoolValue ensureBoolValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get decVal => $_getN(1);
  @$pb.TagNumber(2)
  set decVal($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDecVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearDecVal() => clearField(2);
}

class GListOfPerson extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfPerson', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GPerson>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GPerson.create)
    ..hasRequiredFields = false
  ;

  GListOfPerson._() : super();
  factory GListOfPerson({
    $core.Iterable<GPerson>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfPerson.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfPerson.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfPerson clone() => GListOfPerson()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfPerson copyWith(void Function(GListOfPerson) updates) => super.copyWith((message) => updates(message as GListOfPerson)) as GListOfPerson; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfPerson create() => GListOfPerson._();
  GListOfPerson createEmptyInstance() => create();
  static $pb.PbList<GListOfPerson> createRepeated() => $pb.PbList<GListOfPerson>();
  @$core.pragma('dart2js:noInline')
  static GListOfPerson getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfPerson>(create);
  static GListOfPerson? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GPerson> get items => $_getList(0);
}

class GAbstractParentClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAbstractParentClass1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GAbstractParentClass1._() : super();
  factory GAbstractParentClass1() => create();
  factory GAbstractParentClass1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAbstractParentClass1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAbstractParentClass1 clone() => GAbstractParentClass1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAbstractParentClass1 copyWith(void Function(GAbstractParentClass1) updates) => super.copyWith((message) => updates(message as GAbstractParentClass1)) as GAbstractParentClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass1 create() => GAbstractParentClass1._();
  GAbstractParentClass1 createEmptyInstance() => create();
  static $pb.PbList<GAbstractParentClass1> createRepeated() => $pb.PbList<GAbstractParentClass1>();
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAbstractParentClass1>(create);
  static GAbstractParentClass1? _defaultInstance;
}

class GListOfAbstractParentClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAbstractParentClass1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GAbstractParentClass1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAbstractParentClass1.create)
    ..hasRequiredFields = false
  ;

  GListOfAbstractParentClass1._() : super();
  factory GListOfAbstractParentClass1({
    $core.Iterable<GAbstractParentClass1>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAbstractParentClass1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAbstractParentClass1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAbstractParentClass1 clone() => GListOfAbstractParentClass1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAbstractParentClass1 copyWith(void Function(GListOfAbstractParentClass1) updates) => super.copyWith((message) => updates(message as GListOfAbstractParentClass1)) as GListOfAbstractParentClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass1 create() => GListOfAbstractParentClass1._();
  GListOfAbstractParentClass1 createEmptyInstance() => create();
  static $pb.PbList<GListOfAbstractParentClass1> createRepeated() => $pb.PbList<GListOfAbstractParentClass1>();
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAbstractParentClass1>(create);
  static GListOfAbstractParentClass1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAbstractParentClass1> get items => $_getList(0);
}

class GFieldsOfAbstractParentClass2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfAbstractParentClass2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfAbstractParentClass2._() : super();
  factory GFieldsOfAbstractParentClass2() => create();
  factory GFieldsOfAbstractParentClass2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfAbstractParentClass2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractParentClass2 clone() => GFieldsOfAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfAbstractParentClass2 copyWith(void Function(GFieldsOfAbstractParentClass2) updates) => super.copyWith((message) => updates(message as GFieldsOfAbstractParentClass2)) as GFieldsOfAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractParentClass2 create() => GFieldsOfAbstractParentClass2._();
  GFieldsOfAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfAbstractParentClass2> createRepeated() => $pb.PbList<GFieldsOfAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfAbstractParentClass2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfAbstractParentClass2>(create);
  static GFieldsOfAbstractParentClass2? _defaultInstance;
}

enum GAbstractParentClass2_Props {
  abstractParentClass2, 
  subClass1, 
  notSet
}

class GAbstractParentClass2 extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAbstractParentClass2_Props> _GAbstractParentClass2_PropsByTag = {
    1 : GAbstractParentClass2_Props.abstractParentClass2,
    3 : GAbstractParentClass2_Props.subClass1,
    0 : GAbstractParentClass2_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAbstractParentClass2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfAbstractParentClass2>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'abstractParentClass2', subBuilder: GFieldsOfAbstractParentClass2.create)
    ..aOM<GSubClass1>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subClass1', subBuilder: GSubClass1.create)
    ..hasRequiredFields = false
  ;

  GAbstractParentClass2._() : super();
  factory GAbstractParentClass2({
    GFieldsOfAbstractParentClass2? abstractParentClass2,
    GSubClass1? subClass1,
  }) {
    final _result = create();
    if (abstractParentClass2 != null) {
      _result.abstractParentClass2 = abstractParentClass2;
    }
    if (subClass1 != null) {
      _result.subClass1 = subClass1;
    }
    return _result;
  }
  factory GAbstractParentClass2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GAbstractParentClass2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GAbstractParentClass2 clone() => GAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GAbstractParentClass2 copyWith(void Function(GAbstractParentClass2) updates) => super.copyWith((message) => updates(message as GAbstractParentClass2)) as GAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass2 create() => GAbstractParentClass2._();
  GAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GAbstractParentClass2> createRepeated() => $pb.PbList<GAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GAbstractParentClass2>(create);
  static GAbstractParentClass2? _defaultInstance;

  GAbstractParentClass2_Props whichProps() => _GAbstractParentClass2_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 get abstractParentClass2 => $_getN(0);
  @$pb.TagNumber(1)
  set abstractParentClass2(GFieldsOfAbstractParentClass2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAbstractParentClass2() => $_has(0);
  @$pb.TagNumber(1)
  void clearAbstractParentClass2() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 ensureAbstractParentClass2() => $_ensure(0);

  @$pb.TagNumber(3)
  GSubClass1 get subClass1 => $_getN(1);
  @$pb.TagNumber(3)
  set subClass1(GSubClass1 v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubClass1() => $_has(1);
  @$pb.TagNumber(3)
  void clearSubClass1() => clearField(3);
  @$pb.TagNumber(3)
  GSubClass1 ensureSubClass1() => $_ensure(1);
}

class GListOfAbstractParentClass2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAbstractParentClass2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GAbstractParentClass2>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GAbstractParentClass2.create)
    ..hasRequiredFields = false
  ;

  GListOfAbstractParentClass2._() : super();
  factory GListOfAbstractParentClass2({
    $core.Iterable<GAbstractParentClass2>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfAbstractParentClass2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfAbstractParentClass2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfAbstractParentClass2 clone() => GListOfAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfAbstractParentClass2 copyWith(void Function(GListOfAbstractParentClass2) updates) => super.copyWith((message) => updates(message as GListOfAbstractParentClass2)) as GListOfAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass2 create() => GListOfAbstractParentClass2._();
  GListOfAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GListOfAbstractParentClass2> createRepeated() => $pb.PbList<GListOfAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfAbstractParentClass2>(create);
  static GListOfAbstractParentClass2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAbstractParentClass2> get items => $_getList(0);
}

class GSubClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GSubClass1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfAbstractParentClass2>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfAbstractParentClass2.create)
    ..hasRequiredFields = false
  ;

  GSubClass1._() : super();
  factory GSubClass1({
    GFieldsOfAbstractParentClass2? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GSubClass1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GSubClass1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GSubClass1 clone() => GSubClass1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GSubClass1 copyWith(void Function(GSubClass1) updates) => super.copyWith((message) => updates(message as GSubClass1)) as GSubClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSubClass1 create() => GSubClass1._();
  GSubClass1 createEmptyInstance() => create();
  static $pb.PbList<GSubClass1> createRepeated() => $pb.PbList<GSubClass1>();
  @$core.pragma('dart2js:noInline')
  static GSubClass1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GSubClass1>(create);
  static GSubClass1? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfAbstractParentClass2 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfAbstractParentClass2 ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfSubClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfSubClass1', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GSubClass1>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GSubClass1.create)
    ..hasRequiredFields = false
  ;

  GListOfSubClass1._() : super();
  factory GListOfSubClass1({
    $core.Iterable<GSubClass1>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfSubClass1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfSubClass1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfSubClass1 clone() => GListOfSubClass1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfSubClass1 copyWith(void Function(GListOfSubClass1) updates) => super.copyWith((message) => updates(message as GListOfSubClass1)) as GListOfSubClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfSubClass1 create() => GListOfSubClass1._();
  GListOfSubClass1 createEmptyInstance() => create();
  static $pb.PbList<GListOfSubClass1> createRepeated() => $pb.PbList<GListOfSubClass1>();
  @$core.pragma('dart2js:noInline')
  static GListOfSubClass1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfSubClass1>(create);
  static GListOfSubClass1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GSubClass1> get items => $_getList(0);
}

class GFieldsOfScheduleConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfScheduleConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfScheduleConstraint._() : super();
  factory GFieldsOfScheduleConstraint() => create();
  factory GFieldsOfScheduleConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfScheduleConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfScheduleConstraint clone() => GFieldsOfScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfScheduleConstraint copyWith(void Function(GFieldsOfScheduleConstraint) updates) => super.copyWith((message) => updates(message as GFieldsOfScheduleConstraint)) as GFieldsOfScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfScheduleConstraint create() => GFieldsOfScheduleConstraint._();
  GFieldsOfScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfScheduleConstraint> createRepeated() => $pb.PbList<GFieldsOfScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfScheduleConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfScheduleConstraint>(create);
  static GFieldsOfScheduleConstraint? _defaultInstance;
}

enum GScheduleConstraint_Props {
  scheduleConstraint, 
  contestConstraint, 
  notSet
}

class GScheduleConstraint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GScheduleConstraint_Props> _GScheduleConstraint_PropsByTag = {
    1 : GScheduleConstraint_Props.scheduleConstraint,
    3 : GScheduleConstraint_Props.contestConstraint,
    0 : GScheduleConstraint_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GScheduleConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfScheduleConstraint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleConstraint', subBuilder: GFieldsOfScheduleConstraint.create)
    ..aOM<GContestConstraint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contestConstraint', subBuilder: GContestConstraint.create)
    ..hasRequiredFields = false
  ;

  GScheduleConstraint._() : super();
  factory GScheduleConstraint({
    GFieldsOfScheduleConstraint? scheduleConstraint,
    GContestConstraint? contestConstraint,
  }) {
    final _result = create();
    if (scheduleConstraint != null) {
      _result.scheduleConstraint = scheduleConstraint;
    }
    if (contestConstraint != null) {
      _result.contestConstraint = contestConstraint;
    }
    return _result;
  }
  factory GScheduleConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GScheduleConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GScheduleConstraint clone() => GScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GScheduleConstraint copyWith(void Function(GScheduleConstraint) updates) => super.copyWith((message) => updates(message as GScheduleConstraint)) as GScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GScheduleConstraint create() => GScheduleConstraint._();
  GScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GScheduleConstraint> createRepeated() => $pb.PbList<GScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GScheduleConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GScheduleConstraint>(create);
  static GScheduleConstraint? _defaultInstance;

  GScheduleConstraint_Props whichProps() => _GScheduleConstraint_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint get scheduleConstraint => $_getN(0);
  @$pb.TagNumber(1)
  set scheduleConstraint(GFieldsOfScheduleConstraint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleConstraint() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleConstraint() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint ensureScheduleConstraint() => $_ensure(0);

  @$pb.TagNumber(3)
  GContestConstraint get contestConstraint => $_getN(1);
  @$pb.TagNumber(3)
  set contestConstraint(GContestConstraint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasContestConstraint() => $_has(1);
  @$pb.TagNumber(3)
  void clearContestConstraint() => clearField(3);
  @$pb.TagNumber(3)
  GContestConstraint ensureContestConstraint() => $_ensure(1);
}

class GListOfScheduleConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfScheduleConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GScheduleConstraint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GScheduleConstraint.create)
    ..hasRequiredFields = false
  ;

  GListOfScheduleConstraint._() : super();
  factory GListOfScheduleConstraint({
    $core.Iterable<GScheduleConstraint>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfScheduleConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfScheduleConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfScheduleConstraint clone() => GListOfScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfScheduleConstraint copyWith(void Function(GListOfScheduleConstraint) updates) => super.copyWith((message) => updates(message as GListOfScheduleConstraint)) as GListOfScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfScheduleConstraint create() => GListOfScheduleConstraint._();
  GListOfScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GListOfScheduleConstraint> createRepeated() => $pb.PbList<GListOfScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GListOfScheduleConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfScheduleConstraint>(create);
  static GListOfScheduleConstraint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GScheduleConstraint> get items => $_getList(0);
}

class GConstraintAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GConstraintAdded', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GConstraintAdded._() : super();
  factory GConstraintAdded() => create();
  factory GConstraintAdded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GConstraintAdded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GConstraintAdded clone() => GConstraintAdded()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GConstraintAdded copyWith(void Function(GConstraintAdded) updates) => super.copyWith((message) => updates(message as GConstraintAdded)) as GConstraintAdded; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstraintAdded create() => GConstraintAdded._();
  GConstraintAdded createEmptyInstance() => create();
  static $pb.PbList<GConstraintAdded> createRepeated() => $pb.PbList<GConstraintAdded>();
  @$core.pragma('dart2js:noInline')
  static GConstraintAdded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GConstraintAdded>(create);
  static GConstraintAdded? _defaultInstance;
}

class GListOfConstraintAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfConstraintAdded', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GConstraintAdded>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GConstraintAdded.create)
    ..hasRequiredFields = false
  ;

  GListOfConstraintAdded._() : super();
  factory GListOfConstraintAdded({
    $core.Iterable<GConstraintAdded>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfConstraintAdded.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfConstraintAdded.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfConstraintAdded clone() => GListOfConstraintAdded()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfConstraintAdded copyWith(void Function(GListOfConstraintAdded) updates) => super.copyWith((message) => updates(message as GListOfConstraintAdded)) as GListOfConstraintAdded; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstraintAdded create() => GListOfConstraintAdded._();
  GListOfConstraintAdded createEmptyInstance() => create();
  static $pb.PbList<GListOfConstraintAdded> createRepeated() => $pb.PbList<GListOfConstraintAdded>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstraintAdded getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfConstraintAdded>(create);
  static GListOfConstraintAdded? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstraintAdded> get items => $_getList(0);
}

class GContestConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GContestConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfScheduleConstraint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfScheduleConstraint.create)
    ..hasRequiredFields = false
  ;

  GContestConstraint._() : super();
  factory GContestConstraint({
    GFieldsOfScheduleConstraint? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GContestConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GContestConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GContestConstraint clone() => GContestConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GContestConstraint copyWith(void Function(GContestConstraint) updates) => super.copyWith((message) => updates(message as GContestConstraint)) as GContestConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GContestConstraint create() => GContestConstraint._();
  GContestConstraint createEmptyInstance() => create();
  static $pb.PbList<GContestConstraint> createRepeated() => $pb.PbList<GContestConstraint>();
  @$core.pragma('dart2js:noInline')
  static GContestConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GContestConstraint>(create);
  static GContestConstraint? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfScheduleConstraint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfScheduleConstraint ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfContestConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfContestConstraint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GContestConstraint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GContestConstraint.create)
    ..hasRequiredFields = false
  ;

  GListOfContestConstraint._() : super();
  factory GListOfContestConstraint({
    $core.Iterable<GContestConstraint>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfContestConstraint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfContestConstraint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfContestConstraint clone() => GListOfContestConstraint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfContestConstraint copyWith(void Function(GListOfContestConstraint) updates) => super.copyWith((message) => updates(message as GListOfContestConstraint)) as GListOfContestConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfContestConstraint create() => GListOfContestConstraint._();
  GListOfContestConstraint createEmptyInstance() => create();
  static $pb.PbList<GListOfContestConstraint> createRepeated() => $pb.PbList<GListOfContestConstraint>();
  @$core.pragma('dart2js:noInline')
  static GListOfContestConstraint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfContestConstraint>(create);
  static GListOfContestConstraint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GContestConstraint> get items => $_getList(0);
}

class GFieldsOfBranch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfBranch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GFieldsOfBranch._() : super();
  factory GFieldsOfBranch() => create();
  factory GFieldsOfBranch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfBranch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfBranch clone() => GFieldsOfBranch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfBranch copyWith(void Function(GFieldsOfBranch) updates) => super.copyWith((message) => updates(message as GFieldsOfBranch)) as GFieldsOfBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfBranch create() => GFieldsOfBranch._();
  GFieldsOfBranch createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfBranch> createRepeated() => $pb.PbList<GFieldsOfBranch>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfBranch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfBranch>(create);
  static GFieldsOfBranch? _defaultInstance;
}

enum GBranch_Props {
  branch, 
  twig, 
  notSet
}

class GBranch extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GBranch_Props> _GBranch_PropsByTag = {
    1 : GBranch_Props.branch,
    3 : GBranch_Props.twig,
    0 : GBranch_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBranch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfBranch>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branch', subBuilder: GFieldsOfBranch.create)
    ..aOM<GTwig>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'twig', subBuilder: GTwig.create)
    ..hasRequiredFields = false
  ;

  GBranch._() : super();
  factory GBranch({
    GFieldsOfBranch? branch,
    GTwig? twig,
  }) {
    final _result = create();
    if (branch != null) {
      _result.branch = branch;
    }
    if (twig != null) {
      _result.twig = twig;
    }
    return _result;
  }
  factory GBranch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBranch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBranch clone() => GBranch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBranch copyWith(void Function(GBranch) updates) => super.copyWith((message) => updates(message as GBranch)) as GBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBranch create() => GBranch._();
  GBranch createEmptyInstance() => create();
  static $pb.PbList<GBranch> createRepeated() => $pb.PbList<GBranch>();
  @$core.pragma('dart2js:noInline')
  static GBranch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBranch>(create);
  static GBranch? _defaultInstance;

  GBranch_Props whichProps() => _GBranch_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfBranch get branch => $_getN(0);
  @$pb.TagNumber(1)
  set branch(GFieldsOfBranch v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBranch() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranch() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfBranch ensureBranch() => $_ensure(0);

  @$pb.TagNumber(3)
  GTwig get twig => $_getN(1);
  @$pb.TagNumber(3)
  set twig(GTwig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTwig() => $_has(1);
  @$pb.TagNumber(3)
  void clearTwig() => clearField(3);
  @$pb.TagNumber(3)
  GTwig ensureTwig() => $_ensure(1);
}

class GListOfBranch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfBranch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GBranch>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GBranch.create)
    ..hasRequiredFields = false
  ;

  GListOfBranch._() : super();
  factory GListOfBranch({
    $core.Iterable<GBranch>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfBranch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfBranch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfBranch clone() => GListOfBranch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfBranch copyWith(void Function(GListOfBranch) updates) => super.copyWith((message) => updates(message as GListOfBranch)) as GListOfBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfBranch create() => GListOfBranch._();
  GListOfBranch createEmptyInstance() => create();
  static $pb.PbList<GListOfBranch> createRepeated() => $pb.PbList<GListOfBranch>();
  @$core.pragma('dart2js:noInline')
  static GListOfBranch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfBranch>(create);
  static GListOfBranch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GBranch> get items => $_getList(0);
}

class GFieldsOfTwig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfTwig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfBranch>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfBranch.create)
    ..hasRequiredFields = false
  ;

  GFieldsOfTwig._() : super();
  factory GFieldsOfTwig({
    GFieldsOfBranch? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GFieldsOfTwig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GFieldsOfTwig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GFieldsOfTwig clone() => GFieldsOfTwig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GFieldsOfTwig copyWith(void Function(GFieldsOfTwig) updates) => super.copyWith((message) => updates(message as GFieldsOfTwig)) as GFieldsOfTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GFieldsOfTwig create() => GFieldsOfTwig._();
  GFieldsOfTwig createEmptyInstance() => create();
  static $pb.PbList<GFieldsOfTwig> createRepeated() => $pb.PbList<GFieldsOfTwig>();
  @$core.pragma('dart2js:noInline')
  static GFieldsOfTwig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GFieldsOfTwig>(create);
  static GFieldsOfTwig? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfBranch get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfBranch v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfBranch ensureFieldsOfSuperClass() => $_ensure(0);
}

enum GTwig_Props {
  twig, 
  leaf, 
  notSet
}

class GTwig extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GTwig_Props> _GTwig_PropsByTag = {
    1 : GTwig_Props.twig,
    3 : GTwig_Props.leaf,
    0 : GTwig_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GTwig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<GFieldsOfTwig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'twig', subBuilder: GFieldsOfTwig.create)
    ..aOM<GLeaf>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leaf', subBuilder: GLeaf.create)
    ..hasRequiredFields = false
  ;

  GTwig._() : super();
  factory GTwig({
    GFieldsOfTwig? twig,
    GLeaf? leaf,
  }) {
    final _result = create();
    if (twig != null) {
      _result.twig = twig;
    }
    if (leaf != null) {
      _result.leaf = leaf;
    }
    return _result;
  }
  factory GTwig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GTwig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GTwig clone() => GTwig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GTwig copyWith(void Function(GTwig) updates) => super.copyWith((message) => updates(message as GTwig)) as GTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GTwig create() => GTwig._();
  GTwig createEmptyInstance() => create();
  static $pb.PbList<GTwig> createRepeated() => $pb.PbList<GTwig>();
  @$core.pragma('dart2js:noInline')
  static GTwig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GTwig>(create);
  static GTwig? _defaultInstance;

  GTwig_Props whichProps() => _GTwig_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GFieldsOfTwig get twig => $_getN(0);
  @$pb.TagNumber(1)
  set twig(GFieldsOfTwig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTwig() => $_has(0);
  @$pb.TagNumber(1)
  void clearTwig() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfTwig ensureTwig() => $_ensure(0);

  @$pb.TagNumber(3)
  GLeaf get leaf => $_getN(1);
  @$pb.TagNumber(3)
  set leaf(GLeaf v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLeaf() => $_has(1);
  @$pb.TagNumber(3)
  void clearLeaf() => clearField(3);
  @$pb.TagNumber(3)
  GLeaf ensureLeaf() => $_ensure(1);
}

class GListOfTwig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfTwig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GTwig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GTwig.create)
    ..hasRequiredFields = false
  ;

  GListOfTwig._() : super();
  factory GListOfTwig({
    $core.Iterable<GTwig>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfTwig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfTwig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfTwig clone() => GListOfTwig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfTwig copyWith(void Function(GListOfTwig) updates) => super.copyWith((message) => updates(message as GListOfTwig)) as GListOfTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfTwig create() => GListOfTwig._();
  GListOfTwig createEmptyInstance() => create();
  static $pb.PbList<GListOfTwig> createRepeated() => $pb.PbList<GListOfTwig>();
  @$core.pragma('dart2js:noInline')
  static GListOfTwig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfTwig>(create);
  static GListOfTwig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GTwig> get items => $_getList(0);
}

class GLeaf extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GLeaf', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GFieldsOfTwig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfTwig.create)
    ..hasRequiredFields = false
  ;

  GLeaf._() : super();
  factory GLeaf({
    GFieldsOfTwig? fieldsOfSuperClass,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    return _result;
  }
  factory GLeaf.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GLeaf.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GLeaf clone() => GLeaf()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GLeaf copyWith(void Function(GLeaf) updates) => super.copyWith((message) => updates(message as GLeaf)) as GLeaf; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GLeaf create() => GLeaf._();
  GLeaf createEmptyInstance() => create();
  static $pb.PbList<GLeaf> createRepeated() => $pb.PbList<GLeaf>();
  @$core.pragma('dart2js:noInline')
  static GLeaf getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GLeaf>(create);
  static GLeaf? _defaultInstance;

  @$pb.TagNumber(1)
  GFieldsOfTwig get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GFieldsOfTwig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GFieldsOfTwig ensureFieldsOfSuperClass() => $_ensure(0);
}

class GListOfLeaf extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfLeaf', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GLeaf>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GLeaf.create)
    ..hasRequiredFields = false
  ;

  GListOfLeaf._() : super();
  factory GListOfLeaf({
    $core.Iterable<GLeaf>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfLeaf.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfLeaf.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfLeaf clone() => GListOfLeaf()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfLeaf copyWith(void Function(GListOfLeaf) updates) => super.copyWith((message) => updates(message as GListOfLeaf)) as GListOfLeaf; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfLeaf create() => GListOfLeaf._();
  GListOfLeaf createEmptyInstance() => create();
  static $pb.PbList<GListOfLeaf> createRepeated() => $pb.PbList<GListOfLeaf>();
  @$core.pragma('dart2js:noInline')
  static GListOfLeaf getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfLeaf>(create);
  static GListOfLeaf? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GLeaf> get items => $_getList(0);
}

class GApplianceType_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GApplianceType_Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..e<GApplianceType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..hasRequiredFields = false
  ;

  GApplianceType_Message._() : super();
  factory GApplianceType_Message({
    GApplianceType? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GApplianceType_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GApplianceType_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GApplianceType_Message clone() => GApplianceType_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GApplianceType_Message copyWith(void Function(GApplianceType_Message) updates) => super.copyWith((message) => updates(message as GApplianceType_Message)) as GApplianceType_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GApplianceType_Message create() => GApplianceType_Message._();
  GApplianceType_Message createEmptyInstance() => create();
  static $pb.PbList<GApplianceType_Message> createRepeated() => $pb.PbList<GApplianceType_Message>();
  @$core.pragma('dart2js:noInline')
  static GApplianceType_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GApplianceType_Message>(create);
  static GApplianceType_Message? _defaultInstance;

  @$pb.TagNumber(1)
  GApplianceType get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GApplianceType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GRecipeTypes_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipeTypes_Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..e<GRecipeTypes>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GRecipeTypes.G_RECIPE_TYPES_COOK, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values)
    ..hasRequiredFields = false
  ;

  GRecipeTypes_Message._() : super();
  factory GRecipeTypes_Message({
    GRecipeTypes? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GRecipeTypes_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRecipeTypes_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRecipeTypes_Message clone() => GRecipeTypes_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRecipeTypes_Message copyWith(void Function(GRecipeTypes_Message) updates) => super.copyWith((message) => updates(message as GRecipeTypes_Message)) as GRecipeTypes_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRecipeTypes_Message create() => GRecipeTypes_Message._();
  GRecipeTypes_Message createEmptyInstance() => create();
  static $pb.PbList<GRecipeTypes_Message> createRepeated() => $pb.PbList<GRecipeTypes_Message>();
  @$core.pragma('dart2js:noInline')
  static GRecipeTypes_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRecipeTypes_Message>(create);
  static GRecipeTypes_Message? _defaultInstance;

  @$pb.TagNumber(1)
  GRecipeTypes get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GRecipeTypes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GKnifeType_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GKnifeType_Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..e<GKnifeType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GKnifeType.G_KNIFE_TYPE_CHEFS_KNIFE, valueOf: GKnifeType.valueOf, enumValues: GKnifeType.values)
    ..hasRequiredFields = false
  ;

  GKnifeType_Message._() : super();
  factory GKnifeType_Message({
    GKnifeType? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GKnifeType_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GKnifeType_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GKnifeType_Message clone() => GKnifeType_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GKnifeType_Message copyWith(void Function(GKnifeType_Message) updates) => super.copyWith((message) => updates(message as GKnifeType_Message)) as GKnifeType_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GKnifeType_Message create() => GKnifeType_Message._();
  GKnifeType_Message createEmptyInstance() => create();
  static $pb.PbList<GKnifeType_Message> createRepeated() => $pb.PbList<GKnifeType_Message>();
  @$core.pragma('dart2js:noInline')
  static GKnifeType_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GKnifeType_Message>(create);
  static GKnifeType_Message? _defaultInstance;

  @$pb.TagNumber(1)
  GKnifeType get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GKnifeType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class GChefType_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GChefType_Message', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..e<GChefType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GChefType.G_CHEF_TYPE_SENIOR_CHEF, valueOf: GChefType.valueOf, enumValues: GChefType.values)
    ..hasRequiredFields = false
  ;

  GChefType_Message._() : super();
  factory GChefType_Message({
    GChefType? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GChefType_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GChefType_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GChefType_Message clone() => GChefType_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GChefType_Message copyWith(void Function(GChefType_Message) updates) => super.copyWith((message) => updates(message as GChefType_Message)) as GChefType_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GChefType_Message create() => GChefType_Message._();
  GChefType_Message createEmptyInstance() => create();
  static $pb.PbList<GChefType_Message> createRepeated() => $pb.PbList<GChefType_Message>();
  @$core.pragma('dart2js:noInline')
  static GChefType_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GChefType_Message>(create);
  static GChefType_Message? _defaultInstance;

  @$pb.TagNumber(1)
  GChefType get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GChefType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class G_GRecipeService_Delete_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_Delete_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_Delete_Return._() : super();
  factory G_GRecipeService_Delete_Return() => create();
  factory G_GRecipeService_Delete_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_Delete_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Delete_Return clone() => G_GRecipeService_Delete_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Delete_Return copyWith(void Function(G_GRecipeService_Delete_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_Delete_Return)) as G_GRecipeService_Delete_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Delete_Return create() => G_GRecipeService_Delete_Return._();
  G_GRecipeService_Delete_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_Delete_Return> createRepeated() => $pb.PbList<G_GRecipeService_Delete_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Delete_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_Delete_Return>(create);
  static G_GRecipeService_Delete_Return? _defaultInstance;
}

class G_GRecipeService_Search_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_Search_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_Search_Parameters._() : super();
  factory G_GRecipeService_Search_Parameters() => create();
  factory G_GRecipeService_Search_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_Search_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Search_Parameters clone() => G_GRecipeService_Search_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Search_Parameters copyWith(void Function(G_GRecipeService_Search_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_Search_Parameters)) as G_GRecipeService_Search_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Search_Parameters create() => G_GRecipeService_Search_Parameters._();
  G_GRecipeService_Search_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_Search_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_Search_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Search_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_Search_Parameters>(create);
  static G_GRecipeService_Search_Parameters? _defaultInstance;
}

class G_GRecipeService_SearchNullable_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_SearchNullable_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_SearchNullable_Parameters._() : super();
  factory G_GRecipeService_SearchNullable_Parameters() => create();
  factory G_GRecipeService_SearchNullable_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_SearchNullable_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_SearchNullable_Parameters clone() => G_GRecipeService_SearchNullable_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_SearchNullable_Parameters copyWith(void Function(G_GRecipeService_SearchNullable_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_SearchNullable_Parameters)) as G_GRecipeService_SearchNullable_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_SearchNullable_Parameters create() => G_GRecipeService_SearchNullable_Parameters._();
  G_GRecipeService_SearchNullable_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_SearchNullable_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_SearchNullable_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_SearchNullable_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_SearchNullable_Parameters>(create);
  static G_GRecipeService_SearchNullable_Parameters? _defaultInstance;
}

class G_GRecipeService_SearchNullable_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_SearchNullable_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_SearchNullable_Return._() : super();
  factory G_GRecipeService_SearchNullable_Return({
    $core.Iterable<GRecipe>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory G_GRecipeService_SearchNullable_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_SearchNullable_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_SearchNullable_Return clone() => G_GRecipeService_SearchNullable_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_SearchNullable_Return copyWith(void Function(G_GRecipeService_SearchNullable_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_SearchNullable_Return)) as G_GRecipeService_SearchNullable_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_SearchNullable_Return create() => G_GRecipeService_SearchNullable_Return._();
  G_GRecipeService_SearchNullable_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_SearchNullable_Return> createRepeated() => $pb.PbList<G_GRecipeService_SearchNullable_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_SearchNullable_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_SearchNullable_Return>(create);
  static G_GRecipeService_SearchNullable_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRecipe> get value => $_getList(0);
}

class G_GRecipeService_InsertMany_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_InsertMany_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_InsertMany_Return._() : super();
  factory G_GRecipeService_InsertMany_Return() => create();
  factory G_GRecipeService_InsertMany_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_InsertMany_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_InsertMany_Return clone() => G_GRecipeService_InsertMany_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_InsertMany_Return copyWith(void Function(G_GRecipeService_InsertMany_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_InsertMany_Return)) as G_GRecipeService_InsertMany_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_InsertMany_Return create() => G_GRecipeService_InsertMany_Return._();
  G_GRecipeService_InsertMany_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_InsertMany_Return> createRepeated() => $pb.PbList<G_GRecipeService_InsertMany_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_InsertMany_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_InsertMany_Return>(create);
  static G_GRecipeService_InsertMany_Return? _defaultInstance;
}

class G_GRecipeService_GetNullable_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetNullable_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetNullable_Parameters._() : super();
  factory G_GRecipeService_GetNullable_Parameters() => create();
  factory G_GRecipeService_GetNullable_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetNullable_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetNullable_Parameters clone() => G_GRecipeService_GetNullable_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetNullable_Parameters copyWith(void Function(G_GRecipeService_GetNullable_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetNullable_Parameters)) as G_GRecipeService_GetNullable_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetNullable_Parameters create() => G_GRecipeService_GetNullable_Parameters._();
  G_GRecipeService_GetNullable_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetNullable_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetNullable_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetNullable_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetNullable_Parameters>(create);
  static G_GRecipeService_GetNullable_Parameters? _defaultInstance;
}

class G_GRecipeService_GetNullable_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetNullable_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GRecipe>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', subBuilder: GRecipe.create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetNullable_Return._() : super();
  factory G_GRecipeService_GetNullable_Return({
    GRecipe? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory G_GRecipeService_GetNullable_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetNullable_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetNullable_Return clone() => G_GRecipeService_GetNullable_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetNullable_Return copyWith(void Function(G_GRecipeService_GetNullable_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetNullable_Return)) as G_GRecipeService_GetNullable_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetNullable_Return create() => G_GRecipeService_GetNullable_Return._();
  G_GRecipeService_GetNullable_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetNullable_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetNullable_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetNullable_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetNullable_Return>(create);
  static G_GRecipeService_GetNullable_Return? _defaultInstance;

  @$pb.TagNumber(1)
  GRecipe get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GRecipe v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  GRecipe ensureValue() => $_ensure(0);
}

class G_GRecipeService_Count_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_Count_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_Count_Parameters._() : super();
  factory G_GRecipeService_Count_Parameters() => create();
  factory G_GRecipeService_Count_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_Count_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Count_Parameters clone() => G_GRecipeService_Count_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Count_Parameters copyWith(void Function(G_GRecipeService_Count_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_Count_Parameters)) as G_GRecipeService_Count_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Count_Parameters create() => G_GRecipeService_Count_Parameters._();
  G_GRecipeService_Count_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_Count_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_Count_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Count_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_Count_Parameters>(create);
  static G_GRecipeService_Count_Parameters? _defaultInstance;
}

class G_GRecipeService_Count_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_Count_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_Count_Return._() : super();
  factory G_GRecipeService_Count_Return({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory G_GRecipeService_Count_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_Count_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Count_Return clone() => G_GRecipeService_Count_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Count_Return copyWith(void Function(G_GRecipeService_Count_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_Count_Return)) as G_GRecipeService_Count_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Count_Return create() => G_GRecipeService_Count_Return._();
  G_GRecipeService_Count_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_Count_Return> createRepeated() => $pb.PbList<G_GRecipeService_Count_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Count_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_Count_Return>(create);
  static G_GRecipeService_Count_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class G_GRecipeService_CountNullable_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_CountNullable_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'returnNull')
    ..hasRequiredFields = false
  ;

  G_GRecipeService_CountNullable_Parameters._() : super();
  factory G_GRecipeService_CountNullable_Parameters({
    $core.bool? returnNull,
  }) {
    final _result = create();
    if (returnNull != null) {
      _result.returnNull = returnNull;
    }
    return _result;
  }
  factory G_GRecipeService_CountNullable_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_CountNullable_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_CountNullable_Parameters clone() => G_GRecipeService_CountNullable_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_CountNullable_Parameters copyWith(void Function(G_GRecipeService_CountNullable_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_CountNullable_Parameters)) as G_GRecipeService_CountNullable_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_CountNullable_Parameters create() => G_GRecipeService_CountNullable_Parameters._();
  G_GRecipeService_CountNullable_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_CountNullable_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_CountNullable_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_CountNullable_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_CountNullable_Parameters>(create);
  static G_GRecipeService_CountNullable_Parameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get returnNull => $_getBF(0);
  @$pb.TagNumber(1)
  set returnNull($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReturnNull() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturnNull() => clearField(1);
}

class G_GRecipeService_CountNullable_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_CountNullable_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<Int32Value>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', subBuilder: Int32Value.create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_CountNullable_Return._() : super();
  factory G_GRecipeService_CountNullable_Return({
    Int32Value? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory G_GRecipeService_CountNullable_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_CountNullable_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_CountNullable_Return clone() => G_GRecipeService_CountNullable_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_CountNullable_Return copyWith(void Function(G_GRecipeService_CountNullable_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_CountNullable_Return)) as G_GRecipeService_CountNullable_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_CountNullable_Return create() => G_GRecipeService_CountNullable_Return._();
  G_GRecipeService_CountNullable_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_CountNullable_Return> createRepeated() => $pb.PbList<G_GRecipeService_CountNullable_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_CountNullable_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_CountNullable_Return>(create);
  static G_GRecipeService_CountNullable_Return? _defaultInstance;

  @$pb.TagNumber(1)
  Int32Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Int32Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Int32Value ensureValue() => $_ensure(0);
}

class G_GRecipeService_Reindex_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_Reindex_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_Reindex_Parameters._() : super();
  factory G_GRecipeService_Reindex_Parameters() => create();
  factory G_GRecipeService_Reindex_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_Reindex_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Reindex_Parameters clone() => G_GRecipeService_Reindex_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Reindex_Parameters copyWith(void Function(G_GRecipeService_Reindex_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_Reindex_Parameters)) as G_GRecipeService_Reindex_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Reindex_Parameters create() => G_GRecipeService_Reindex_Parameters._();
  G_GRecipeService_Reindex_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_Reindex_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_Reindex_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Reindex_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_Reindex_Parameters>(create);
  static G_GRecipeService_Reindex_Parameters? _defaultInstance;
}

class G_GRecipeService_Reindex_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_Reindex_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_Reindex_Return._() : super();
  factory G_GRecipeService_Reindex_Return() => create();
  factory G_GRecipeService_Reindex_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_Reindex_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Reindex_Return clone() => G_GRecipeService_Reindex_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_Reindex_Return copyWith(void Function(G_GRecipeService_Reindex_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_Reindex_Return)) as G_GRecipeService_Reindex_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Reindex_Return create() => G_GRecipeService_Reindex_Return._();
  G_GRecipeService_Reindex_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_Reindex_Return> createRepeated() => $pb.PbList<G_GRecipeService_Reindex_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_Reindex_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_Reindex_Return>(create);
  static G_GRecipeService_Reindex_Return? _defaultInstance;
}

class G_GRecipeService_GetMainRecipeType_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetMainRecipeType_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetMainRecipeType_Parameters._() : super();
  factory G_GRecipeService_GetMainRecipeType_Parameters() => create();
  factory G_GRecipeService_GetMainRecipeType_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetMainRecipeType_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeType_Parameters clone() => G_GRecipeService_GetMainRecipeType_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeType_Parameters copyWith(void Function(G_GRecipeService_GetMainRecipeType_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetMainRecipeType_Parameters)) as G_GRecipeService_GetMainRecipeType_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeType_Parameters create() => G_GRecipeService_GetMainRecipeType_Parameters._();
  G_GRecipeService_GetMainRecipeType_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetMainRecipeType_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetMainRecipeType_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeType_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetMainRecipeType_Parameters>(create);
  static G_GRecipeService_GetMainRecipeType_Parameters? _defaultInstance;
}

class G_GRecipeService_GetMainRecipeType_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetMainRecipeType_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..e<GRecipeTypes>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GRecipeTypes.G_RECIPE_TYPES_COOK, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetMainRecipeType_Return._() : super();
  factory G_GRecipeService_GetMainRecipeType_Return({
    GRecipeTypes? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory G_GRecipeService_GetMainRecipeType_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetMainRecipeType_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeType_Return clone() => G_GRecipeService_GetMainRecipeType_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeType_Return copyWith(void Function(G_GRecipeService_GetMainRecipeType_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetMainRecipeType_Return)) as G_GRecipeService_GetMainRecipeType_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeType_Return create() => G_GRecipeService_GetMainRecipeType_Return._();
  G_GRecipeService_GetMainRecipeType_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetMainRecipeType_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetMainRecipeType_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeType_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetMainRecipeType_Return>(create);
  static G_GRecipeService_GetMainRecipeType_Return? _defaultInstance;

  @$pb.TagNumber(1)
  GRecipeTypes get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GRecipeTypes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class G_GRecipeService_GetMainRecipeTypeNullable_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetMainRecipeTypeNullable_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetMainRecipeTypeNullable_Parameters._() : super();
  factory G_GRecipeService_GetMainRecipeTypeNullable_Parameters() => create();
  factory G_GRecipeService_GetMainRecipeTypeNullable_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetMainRecipeTypeNullable_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeTypeNullable_Parameters clone() => G_GRecipeService_GetMainRecipeTypeNullable_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeTypeNullable_Parameters copyWith(void Function(G_GRecipeService_GetMainRecipeTypeNullable_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetMainRecipeTypeNullable_Parameters)) as G_GRecipeService_GetMainRecipeTypeNullable_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeTypeNullable_Parameters create() => G_GRecipeService_GetMainRecipeTypeNullable_Parameters._();
  G_GRecipeService_GetMainRecipeTypeNullable_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetMainRecipeTypeNullable_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetMainRecipeTypeNullable_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeTypeNullable_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetMainRecipeTypeNullable_Parameters>(create);
  static G_GRecipeService_GetMainRecipeTypeNullable_Parameters? _defaultInstance;
}

class G_GRecipeService_GetMainRecipeTypeNullable_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetMainRecipeTypeNullable_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GRecipeTypes_Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', subBuilder: GRecipeTypes_Message.create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetMainRecipeTypeNullable_Return._() : super();
  factory G_GRecipeService_GetMainRecipeTypeNullable_Return({
    GRecipeTypes_Message? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory G_GRecipeService_GetMainRecipeTypeNullable_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetMainRecipeTypeNullable_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeTypeNullable_Return clone() => G_GRecipeService_GetMainRecipeTypeNullable_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetMainRecipeTypeNullable_Return copyWith(void Function(G_GRecipeService_GetMainRecipeTypeNullable_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetMainRecipeTypeNullable_Return)) as G_GRecipeService_GetMainRecipeTypeNullable_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeTypeNullable_Return create() => G_GRecipeService_GetMainRecipeTypeNullable_Return._();
  G_GRecipeService_GetMainRecipeTypeNullable_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetMainRecipeTypeNullable_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetMainRecipeTypeNullable_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetMainRecipeTypeNullable_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetMainRecipeTypeNullable_Return>(create);
  static G_GRecipeService_GetMainRecipeTypeNullable_Return? _defaultInstance;

  @$pb.TagNumber(1)
  GRecipeTypes_Message get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GRecipeTypes_Message v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  GRecipeTypes_Message ensureValue() => $_ensure(0);
}

class G_GRecipeService_GetRecipeTypeList_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetRecipeTypeList_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetRecipeTypeList_Parameters._() : super();
  factory G_GRecipeService_GetRecipeTypeList_Parameters() => create();
  factory G_GRecipeService_GetRecipeTypeList_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetRecipeTypeList_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeList_Parameters clone() => G_GRecipeService_GetRecipeTypeList_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeList_Parameters copyWith(void Function(G_GRecipeService_GetRecipeTypeList_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetRecipeTypeList_Parameters)) as G_GRecipeService_GetRecipeTypeList_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeList_Parameters create() => G_GRecipeService_GetRecipeTypeList_Parameters._();
  G_GRecipeService_GetRecipeTypeList_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetRecipeTypeList_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetRecipeTypeList_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeList_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetRecipeTypeList_Parameters>(create);
  static G_GRecipeService_GetRecipeTypeList_Parameters? _defaultInstance;
}

class G_GRecipeService_GetRecipeTypeList_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetRecipeTypeList_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GRecipeTypes>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetRecipeTypeList_Return._() : super();
  factory G_GRecipeService_GetRecipeTypeList_Return({
    $core.Iterable<GRecipeTypes>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory G_GRecipeService_GetRecipeTypeList_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetRecipeTypeList_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeList_Return clone() => G_GRecipeService_GetRecipeTypeList_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeList_Return copyWith(void Function(G_GRecipeService_GetRecipeTypeList_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetRecipeTypeList_Return)) as G_GRecipeService_GetRecipeTypeList_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeList_Return create() => G_GRecipeService_GetRecipeTypeList_Return._();
  G_GRecipeService_GetRecipeTypeList_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetRecipeTypeList_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetRecipeTypeList_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeList_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetRecipeTypeList_Return>(create);
  static G_GRecipeService_GetRecipeTypeList_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRecipeTypes> get value => $_getList(0);
}

class G_GRecipeService_GetRecipeTypeListNullable_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetRecipeTypeListNullable_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetRecipeTypeListNullable_Parameters._() : super();
  factory G_GRecipeService_GetRecipeTypeListNullable_Parameters() => create();
  factory G_GRecipeService_GetRecipeTypeListNullable_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetRecipeTypeListNullable_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeListNullable_Parameters clone() => G_GRecipeService_GetRecipeTypeListNullable_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeListNullable_Parameters copyWith(void Function(G_GRecipeService_GetRecipeTypeListNullable_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetRecipeTypeListNullable_Parameters)) as G_GRecipeService_GetRecipeTypeListNullable_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeListNullable_Parameters create() => G_GRecipeService_GetRecipeTypeListNullable_Parameters._();
  G_GRecipeService_GetRecipeTypeListNullable_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetRecipeTypeListNullable_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetRecipeTypeListNullable_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeListNullable_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetRecipeTypeListNullable_Parameters>(create);
  static G_GRecipeService_GetRecipeTypeListNullable_Parameters? _defaultInstance;
}

class G_GRecipeService_GetRecipeTypeListNullable_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetRecipeTypeListNullable_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GRecipeTypes>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetRecipeTypeListNullable_Return._() : super();
  factory G_GRecipeService_GetRecipeTypeListNullable_Return({
    $core.Iterable<GRecipeTypes>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory G_GRecipeService_GetRecipeTypeListNullable_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetRecipeTypeListNullable_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeListNullable_Return clone() => G_GRecipeService_GetRecipeTypeListNullable_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetRecipeTypeListNullable_Return copyWith(void Function(G_GRecipeService_GetRecipeTypeListNullable_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetRecipeTypeListNullable_Return)) as G_GRecipeService_GetRecipeTypeListNullable_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeListNullable_Return create() => G_GRecipeService_GetRecipeTypeListNullable_Return._();
  G_GRecipeService_GetRecipeTypeListNullable_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetRecipeTypeListNullable_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetRecipeTypeListNullable_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetRecipeTypeListNullable_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetRecipeTypeListNullable_Return>(create);
  static G_GRecipeService_GetRecipeTypeListNullable_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GRecipeTypes> get value => $_getList(0);
}

class G_GRecipeService_GetListOfInts_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetListOfInts_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetListOfInts_Parameters._() : super();
  factory G_GRecipeService_GetListOfInts_Parameters() => create();
  factory G_GRecipeService_GetListOfInts_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetListOfInts_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfInts_Parameters clone() => G_GRecipeService_GetListOfInts_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfInts_Parameters copyWith(void Function(G_GRecipeService_GetListOfInts_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetListOfInts_Parameters)) as G_GRecipeService_GetListOfInts_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfInts_Parameters create() => G_GRecipeService_GetListOfInts_Parameters._();
  G_GRecipeService_GetListOfInts_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetListOfInts_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetListOfInts_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfInts_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetListOfInts_Parameters>(create);
  static G_GRecipeService_GetListOfInts_Parameters? _defaultInstance;
}

class G_GRecipeService_GetListOfInts_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetListOfInts_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetListOfInts_Return._() : super();
  factory G_GRecipeService_GetListOfInts_Return({
    $core.Iterable<$core.int>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory G_GRecipeService_GetListOfInts_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetListOfInts_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfInts_Return clone() => G_GRecipeService_GetListOfInts_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfInts_Return copyWith(void Function(G_GRecipeService_GetListOfInts_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetListOfInts_Return)) as G_GRecipeService_GetListOfInts_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfInts_Return create() => G_GRecipeService_GetListOfInts_Return._();
  G_GRecipeService_GetListOfInts_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetListOfInts_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetListOfInts_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfInts_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetListOfInts_Return>(create);
  static G_GRecipeService_GetListOfInts_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getList(0);
}

class G_GRecipeService_GetListOfIntsNullable_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetListOfIntsNullable_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetListOfIntsNullable_Parameters._() : super();
  factory G_GRecipeService_GetListOfIntsNullable_Parameters() => create();
  factory G_GRecipeService_GetListOfIntsNullable_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetListOfIntsNullable_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfIntsNullable_Parameters clone() => G_GRecipeService_GetListOfIntsNullable_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfIntsNullable_Parameters copyWith(void Function(G_GRecipeService_GetListOfIntsNullable_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetListOfIntsNullable_Parameters)) as G_GRecipeService_GetListOfIntsNullable_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfIntsNullable_Parameters create() => G_GRecipeService_GetListOfIntsNullable_Parameters._();
  G_GRecipeService_GetListOfIntsNullable_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetListOfIntsNullable_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_GetListOfIntsNullable_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfIntsNullable_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetListOfIntsNullable_Parameters>(create);
  static G_GRecipeService_GetListOfIntsNullable_Parameters? _defaultInstance;
}

class G_GRecipeService_GetListOfIntsNullable_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_GetListOfIntsNullable_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_GetListOfIntsNullable_Return._() : super();
  factory G_GRecipeService_GetListOfIntsNullable_Return({
    $core.Iterable<$core.int>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory G_GRecipeService_GetListOfIntsNullable_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_GetListOfIntsNullable_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfIntsNullable_Return clone() => G_GRecipeService_GetListOfIntsNullable_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_GetListOfIntsNullable_Return copyWith(void Function(G_GRecipeService_GetListOfIntsNullable_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_GetListOfIntsNullable_Return)) as G_GRecipeService_GetListOfIntsNullable_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfIntsNullable_Return create() => G_GRecipeService_GetListOfIntsNullable_Return._();
  G_GRecipeService_GetListOfIntsNullable_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_GetListOfIntsNullable_Return> createRepeated() => $pb.PbList<G_GRecipeService_GetListOfIntsNullable_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_GetListOfIntsNullable_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_GetListOfIntsNullable_Return>(create);
  static G_GRecipeService_GetListOfIntsNullable_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getList(0);
}

class G_GRecipeService_SearchRecipeStream_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_SearchRecipeStream_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_SearchRecipeStream_Parameters._() : super();
  factory G_GRecipeService_SearchRecipeStream_Parameters() => create();
  factory G_GRecipeService_SearchRecipeStream_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_SearchRecipeStream_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_SearchRecipeStream_Parameters clone() => G_GRecipeService_SearchRecipeStream_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_SearchRecipeStream_Parameters copyWith(void Function(G_GRecipeService_SearchRecipeStream_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_SearchRecipeStream_Parameters)) as G_GRecipeService_SearchRecipeStream_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_SearchRecipeStream_Parameters create() => G_GRecipeService_SearchRecipeStream_Parameters._();
  G_GRecipeService_SearchRecipeStream_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_SearchRecipeStream_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_SearchRecipeStream_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_SearchRecipeStream_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_SearchRecipeStream_Parameters>(create);
  static G_GRecipeService_SearchRecipeStream_Parameters? _defaultInstance;
}

class G_GRecipeService_ReceiveStream_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_ReceiveStream_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_ReceiveStream_Return._() : super();
  factory G_GRecipeService_ReceiveStream_Return() => create();
  factory G_GRecipeService_ReceiveStream_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_ReceiveStream_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveStream_Return clone() => G_GRecipeService_ReceiveStream_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveStream_Return copyWith(void Function(G_GRecipeService_ReceiveStream_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_ReceiveStream_Return)) as G_GRecipeService_ReceiveStream_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveStream_Return create() => G_GRecipeService_ReceiveStream_Return._();
  G_GRecipeService_ReceiveStream_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_ReceiveStream_Return> createRepeated() => $pb.PbList<G_GRecipeService_ReceiveStream_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveStream_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_ReceiveStream_Return>(create);
  static G_GRecipeService_ReceiveStream_Return? _defaultInstance;
}

class G_GRecipeService_ReceiveLotsOfArgs_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_ReceiveLotsOfArgs_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pString')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pInt', $pb.PbFieldType.O3)
    ..e<GRecipeTypes>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pRecipeTypes', $pb.PbFieldType.OE, defaultOrMaker: GRecipeTypes.G_RECIPE_TYPES_COOK, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values)
    ..aOM<GRecipe>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pRecipe', subBuilder: GRecipe.create)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListStrings')
    ..p<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListInts', $pb.PbFieldType.K3)
    ..pc<GRecipeTypes>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListRecipeTypes', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..pc<GRecipe>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListRecipes', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetString')
    ..p<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetInt', $pb.PbFieldType.K3)
    ..pc<GRecipeTypes>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetRecipeTypes', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..pc<GRecipe>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetRecipe', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..pPS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableString')
    ..p<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableInt', $pb.PbFieldType.K3)
    ..pc<GRecipeTypes>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableRecipeTypes', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..pc<GRecipe>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableRecipe', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_ReceiveLotsOfArgs_Parameters._() : super();
  factory G_GRecipeService_ReceiveLotsOfArgs_Parameters({
    $core.String? pString,
    $core.int? pInt,
    GRecipeTypes? pRecipeTypes,
    GRecipe? pRecipe,
    $core.Iterable<$core.String>? pListStrings,
    $core.Iterable<$core.int>? pListInts,
    $core.Iterable<GRecipeTypes>? pListRecipeTypes,
    $core.Iterable<GRecipe>? pListRecipes,
    $core.Iterable<$core.String>? pSetString,
    $core.Iterable<$core.int>? pSetInt,
    $core.Iterable<GRecipeTypes>? pSetRecipeTypes,
    $core.Iterable<GRecipe>? pSetRecipe,
    $core.Iterable<$core.String>? pIterableString,
    $core.Iterable<$core.int>? pIterableInt,
    $core.Iterable<GRecipeTypes>? pIterableRecipeTypes,
    $core.Iterable<GRecipe>? pIterableRecipe,
  }) {
    final _result = create();
    if (pString != null) {
      _result.pString = pString;
    }
    if (pInt != null) {
      _result.pInt = pInt;
    }
    if (pRecipeTypes != null) {
      _result.pRecipeTypes = pRecipeTypes;
    }
    if (pRecipe != null) {
      _result.pRecipe = pRecipe;
    }
    if (pListStrings != null) {
      _result.pListStrings.addAll(pListStrings);
    }
    if (pListInts != null) {
      _result.pListInts.addAll(pListInts);
    }
    if (pListRecipeTypes != null) {
      _result.pListRecipeTypes.addAll(pListRecipeTypes);
    }
    if (pListRecipes != null) {
      _result.pListRecipes.addAll(pListRecipes);
    }
    if (pSetString != null) {
      _result.pSetString.addAll(pSetString);
    }
    if (pSetInt != null) {
      _result.pSetInt.addAll(pSetInt);
    }
    if (pSetRecipeTypes != null) {
      _result.pSetRecipeTypes.addAll(pSetRecipeTypes);
    }
    if (pSetRecipe != null) {
      _result.pSetRecipe.addAll(pSetRecipe);
    }
    if (pIterableString != null) {
      _result.pIterableString.addAll(pIterableString);
    }
    if (pIterableInt != null) {
      _result.pIterableInt.addAll(pIterableInt);
    }
    if (pIterableRecipeTypes != null) {
      _result.pIterableRecipeTypes.addAll(pIterableRecipeTypes);
    }
    if (pIterableRecipe != null) {
      _result.pIterableRecipe.addAll(pIterableRecipe);
    }
    return _result;
  }
  factory G_GRecipeService_ReceiveLotsOfArgs_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_ReceiveLotsOfArgs_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfArgs_Parameters clone() => G_GRecipeService_ReceiveLotsOfArgs_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfArgs_Parameters copyWith(void Function(G_GRecipeService_ReceiveLotsOfArgs_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_ReceiveLotsOfArgs_Parameters)) as G_GRecipeService_ReceiveLotsOfArgs_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfArgs_Parameters create() => G_GRecipeService_ReceiveLotsOfArgs_Parameters._();
  G_GRecipeService_ReceiveLotsOfArgs_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_ReceiveLotsOfArgs_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_ReceiveLotsOfArgs_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfArgs_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_ReceiveLotsOfArgs_Parameters>(create);
  static G_GRecipeService_ReceiveLotsOfArgs_Parameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pString => $_getSZ(0);
  @$pb.TagNumber(1)
  set pString($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPString() => $_has(0);
  @$pb.TagNumber(1)
  void clearPString() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pInt => $_getIZ(1);
  @$pb.TagNumber(2)
  set pInt($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPInt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPInt() => clearField(2);

  @$pb.TagNumber(3)
  GRecipeTypes get pRecipeTypes => $_getN(2);
  @$pb.TagNumber(3)
  set pRecipeTypes(GRecipeTypes v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPRecipeTypes() => $_has(2);
  @$pb.TagNumber(3)
  void clearPRecipeTypes() => clearField(3);

  @$pb.TagNumber(4)
  GRecipe get pRecipe => $_getN(3);
  @$pb.TagNumber(4)
  set pRecipe(GRecipe v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPRecipe() => $_has(3);
  @$pb.TagNumber(4)
  void clearPRecipe() => clearField(4);
  @$pb.TagNumber(4)
  GRecipe ensurePRecipe() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get pListStrings => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get pListInts => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<GRecipeTypes> get pListRecipeTypes => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<GRecipe> get pListRecipes => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.String> get pSetString => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get pSetInt => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<GRecipeTypes> get pSetRecipeTypes => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<GRecipe> get pSetRecipe => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.String> get pIterableString => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<$core.int> get pIterableInt => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<GRecipeTypes> get pIterableRecipeTypes => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<GRecipe> get pIterableRecipe => $_getList(15);
}

class G_GRecipeService_ReceiveLotsOfArgs_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_ReceiveLotsOfArgs_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_ReceiveLotsOfArgs_Return._() : super();
  factory G_GRecipeService_ReceiveLotsOfArgs_Return() => create();
  factory G_GRecipeService_ReceiveLotsOfArgs_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_ReceiveLotsOfArgs_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfArgs_Return clone() => G_GRecipeService_ReceiveLotsOfArgs_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfArgs_Return copyWith(void Function(G_GRecipeService_ReceiveLotsOfArgs_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_ReceiveLotsOfArgs_Return)) as G_GRecipeService_ReceiveLotsOfArgs_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfArgs_Return create() => G_GRecipeService_ReceiveLotsOfArgs_Return._();
  G_GRecipeService_ReceiveLotsOfArgs_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_ReceiveLotsOfArgs_Return> createRepeated() => $pb.PbList<G_GRecipeService_ReceiveLotsOfArgs_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfArgs_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_ReceiveLotsOfArgs_Return>(create);
  static G_GRecipeService_ReceiveLotsOfArgs_Return? _defaultInstance;
}

class G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<StringValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pString', subBuilder: StringValue.create)
    ..aOM<Int32Value>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pInt', subBuilder: Int32Value.create)
    ..aOM<GRecipeTypes_Message>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pRecipeTypes', subBuilder: GRecipeTypes_Message.create)
    ..aOM<GRecipe>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pRecipe', subBuilder: GRecipe.create)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListStrings')
    ..p<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListInts', $pb.PbFieldType.K3)
    ..pc<GRecipeTypes>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListRecipeTypes', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..pc<GRecipe>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pListRecipes', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetString')
    ..p<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetInt', $pb.PbFieldType.K3)
    ..pc<GRecipeTypes>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetRecipeTypes', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..pc<GRecipe>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pSetRecipe', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..pPS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableString')
    ..p<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableInt', $pb.PbFieldType.K3)
    ..pc<GRecipeTypes>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableRecipeTypes', $pb.PbFieldType.KE, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values, defaultEnumValue: GRecipeTypes.G_RECIPE_TYPES_COOK)
    ..pc<GRecipe>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pIterableRecipe', $pb.PbFieldType.PM, subBuilder: GRecipe.create)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters._() : super();
  factory G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters({
    StringValue? pString,
    Int32Value? pInt,
    GRecipeTypes_Message? pRecipeTypes,
    GRecipe? pRecipe,
    $core.Iterable<$core.String>? pListStrings,
    $core.Iterable<$core.int>? pListInts,
    $core.Iterable<GRecipeTypes>? pListRecipeTypes,
    $core.Iterable<GRecipe>? pListRecipes,
    $core.Iterable<$core.String>? pSetString,
    $core.Iterable<$core.int>? pSetInt,
    $core.Iterable<GRecipeTypes>? pSetRecipeTypes,
    $core.Iterable<GRecipe>? pSetRecipe,
    $core.Iterable<$core.String>? pIterableString,
    $core.Iterable<$core.int>? pIterableInt,
    $core.Iterable<GRecipeTypes>? pIterableRecipeTypes,
    $core.Iterable<GRecipe>? pIterableRecipe,
  }) {
    final _result = create();
    if (pString != null) {
      _result.pString = pString;
    }
    if (pInt != null) {
      _result.pInt = pInt;
    }
    if (pRecipeTypes != null) {
      _result.pRecipeTypes = pRecipeTypes;
    }
    if (pRecipe != null) {
      _result.pRecipe = pRecipe;
    }
    if (pListStrings != null) {
      _result.pListStrings.addAll(pListStrings);
    }
    if (pListInts != null) {
      _result.pListInts.addAll(pListInts);
    }
    if (pListRecipeTypes != null) {
      _result.pListRecipeTypes.addAll(pListRecipeTypes);
    }
    if (pListRecipes != null) {
      _result.pListRecipes.addAll(pListRecipes);
    }
    if (pSetString != null) {
      _result.pSetString.addAll(pSetString);
    }
    if (pSetInt != null) {
      _result.pSetInt.addAll(pSetInt);
    }
    if (pSetRecipeTypes != null) {
      _result.pSetRecipeTypes.addAll(pSetRecipeTypes);
    }
    if (pSetRecipe != null) {
      _result.pSetRecipe.addAll(pSetRecipe);
    }
    if (pIterableString != null) {
      _result.pIterableString.addAll(pIterableString);
    }
    if (pIterableInt != null) {
      _result.pIterableInt.addAll(pIterableInt);
    }
    if (pIterableRecipeTypes != null) {
      _result.pIterableRecipeTypes.addAll(pIterableRecipeTypes);
    }
    if (pIterableRecipe != null) {
      _result.pIterableRecipe.addAll(pIterableRecipe);
    }
    return _result;
  }
  factory G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters clone() => G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters copyWith(void Function(G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters) updates) => super.copyWith((message) => updates(message as G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters)) as G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters create() => G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters._();
  G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters> createRepeated() => $pb.PbList<G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters>(create);
  static G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters? _defaultInstance;

  @$pb.TagNumber(1)
  StringValue get pString => $_getN(0);
  @$pb.TagNumber(1)
  set pString(StringValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPString() => $_has(0);
  @$pb.TagNumber(1)
  void clearPString() => clearField(1);
  @$pb.TagNumber(1)
  StringValue ensurePString() => $_ensure(0);

  @$pb.TagNumber(2)
  Int32Value get pInt => $_getN(1);
  @$pb.TagNumber(2)
  set pInt(Int32Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPInt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPInt() => clearField(2);
  @$pb.TagNumber(2)
  Int32Value ensurePInt() => $_ensure(1);

  @$pb.TagNumber(3)
  GRecipeTypes_Message get pRecipeTypes => $_getN(2);
  @$pb.TagNumber(3)
  set pRecipeTypes(GRecipeTypes_Message v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPRecipeTypes() => $_has(2);
  @$pb.TagNumber(3)
  void clearPRecipeTypes() => clearField(3);
  @$pb.TagNumber(3)
  GRecipeTypes_Message ensurePRecipeTypes() => $_ensure(2);

  @$pb.TagNumber(4)
  GRecipe get pRecipe => $_getN(3);
  @$pb.TagNumber(4)
  set pRecipe(GRecipe v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPRecipe() => $_has(3);
  @$pb.TagNumber(4)
  void clearPRecipe() => clearField(4);
  @$pb.TagNumber(4)
  GRecipe ensurePRecipe() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get pListStrings => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get pListInts => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<GRecipeTypes> get pListRecipeTypes => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<GRecipe> get pListRecipes => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$core.String> get pSetString => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get pSetInt => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<GRecipeTypes> get pSetRecipeTypes => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<GRecipe> get pSetRecipe => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<$core.String> get pIterableString => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<$core.int> get pIterableInt => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<GRecipeTypes> get pIterableRecipeTypes => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<GRecipe> get pIterableRecipe => $_getList(15);
}

class G_GRecipeService_ReceiveLotsOfNullableArgs_Return extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'G_GRecipeService_ReceiveLotsOfNullableArgs_Return', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  G_GRecipeService_ReceiveLotsOfNullableArgs_Return._() : super();
  factory G_GRecipeService_ReceiveLotsOfNullableArgs_Return({
    $core.Iterable<$core.int>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value.addAll(value);
    }
    return _result;
  }
  factory G_GRecipeService_ReceiveLotsOfNullableArgs_Return.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory G_GRecipeService_ReceiveLotsOfNullableArgs_Return.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfNullableArgs_Return clone() => G_GRecipeService_ReceiveLotsOfNullableArgs_Return()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  G_GRecipeService_ReceiveLotsOfNullableArgs_Return copyWith(void Function(G_GRecipeService_ReceiveLotsOfNullableArgs_Return) updates) => super.copyWith((message) => updates(message as G_GRecipeService_ReceiveLotsOfNullableArgs_Return)) as G_GRecipeService_ReceiveLotsOfNullableArgs_Return; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfNullableArgs_Return create() => G_GRecipeService_ReceiveLotsOfNullableArgs_Return._();
  G_GRecipeService_ReceiveLotsOfNullableArgs_Return createEmptyInstance() => create();
  static $pb.PbList<G_GRecipeService_ReceiveLotsOfNullableArgs_Return> createRepeated() => $pb.PbList<G_GRecipeService_ReceiveLotsOfNullableArgs_Return>();
  @$core.pragma('dart2js:noInline')
  static G_GRecipeService_ReceiveLotsOfNullableArgs_Return getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<G_GRecipeService_ReceiveLotsOfNullableArgs_Return>(create);
  static G_GRecipeService_ReceiveLotsOfNullableArgs_Return? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getList(0);
}

