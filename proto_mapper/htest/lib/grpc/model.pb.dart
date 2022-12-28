///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $0;

class GPerson extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GPerson', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GAnimal>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GAnimal.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$0.StringValue>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: $0.StringValue.create)
    ..hasRequiredFields = false
  ;

  GPerson._() : super();
  factory GPerson({
    GAnimal? fieldsOfSuperClass,
    $core.String? name,
    $0.StringValue? description,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
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
  GAnimal get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GAnimal v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GAnimal ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $0.StringValue get description => $_getN(2);
  @$pb.TagNumber(3)
  set description($0.StringValue v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
  @$pb.TagNumber(3)
  $0.StringValue ensureDescription() => $_ensure(2);
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

class GAnimal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAnimal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..aOM<GBeing>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GBeing.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GAnimal._() : super();
  factory GAnimal({
    GBeing? fieldsOfSuperClass,
    $core.int? height,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (height != null) {
      _result.height = height;
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
  GBeing get fieldsOfSuperClass => $_getN(0);
  @$pb.TagNumber(1)
  set fieldsOfSuperClass(GBeing v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldsOfSuperClass() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldsOfSuperClass() => clearField(1);
  @$pb.TagNumber(1)
  GBeing ensureFieldsOfSuperClass() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);
}

class GListOfAnimal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAnimal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
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

class GBeing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GBeing', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mass', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GBeing._() : super();
  factory GBeing({
    $core.double? mass,
  }) {
    final _result = create();
    if (mass != null) {
      _result.mass = mass;
    }
    return _result;
  }
  factory GBeing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GBeing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GBeing clone() => GBeing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GBeing copyWith(void Function(GBeing) updates) => super.copyWith((message) => updates(message as GBeing)) as GBeing; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GBeing create() => GBeing._();
  GBeing createEmptyInstance() => create();
  static $pb.PbList<GBeing> createRepeated() => $pb.PbList<GBeing>();
  @$core.pragma('dart2js:noInline')
  static GBeing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GBeing>(create);
  static GBeing? _defaultInstance;

  @$pb.TagNumber(2)
  $core.double get mass => $_getN(0);
  @$pb.TagNumber(2)
  set mass($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasMass() => $_has(0);
  @$pb.TagNumber(2)
  void clearMass() => clearField(2);
}

class GListOfBeing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfBeing', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'squarealfa.nozard.techlog'), createEmptyInstance: create)
    ..pc<GBeing>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GBeing.create)
    ..hasRequiredFields = false
  ;

  GListOfBeing._() : super();
  factory GListOfBeing({
    $core.Iterable<GBeing>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GListOfBeing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GListOfBeing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GListOfBeing clone() => GListOfBeing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GListOfBeing copyWith(void Function(GListOfBeing) updates) => super.copyWith((message) => updates(message as GListOfBeing)) as GListOfBeing; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfBeing create() => GListOfBeing._();
  GListOfBeing createEmptyInstance() => create();
  static $pb.PbList<GListOfBeing> createRepeated() => $pb.PbList<GListOfBeing>();
  @$core.pragma('dart2js:noInline')
  static GListOfBeing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GListOfBeing>(create);
  static GListOfBeing? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GBeing> get items => $_getList(0);
}

