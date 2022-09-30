///
//  Generated code. Do not modify.
//  source: abstract_missing_subclass.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GAbstractParentClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GAbstractParentClass1',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GAbstractParentClass1._() : super();
  factory GAbstractParentClass1() => create();
  factory GAbstractParentClass1.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GAbstractParentClass1.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GAbstractParentClass1 clone() =>
      GAbstractParentClass1()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GAbstractParentClass1 copyWith(
          void Function(GAbstractParentClass1) updates) =>
      super.copyWith((message) => updates(message as GAbstractParentClass1))
          as GAbstractParentClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass1 create() => GAbstractParentClass1._();
  GAbstractParentClass1 createEmptyInstance() => create();
  static $pb.PbList<GAbstractParentClass1> createRepeated() =>
      $pb.PbList<GAbstractParentClass1>();
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass1 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GAbstractParentClass1>(create);
  static GAbstractParentClass1? _defaultInstance;
}

class GListOfAbstractParentClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfAbstractParentClass1',
      createEmptyInstance: create)
    ..pc<GAbstractParentClass1>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GAbstractParentClass1.create)
    ..hasRequiredFields = false;

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
  factory GListOfAbstractParentClass1.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfAbstractParentClass1.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfAbstractParentClass1 clone() =>
      GListOfAbstractParentClass1()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfAbstractParentClass1 copyWith(
          void Function(GListOfAbstractParentClass1) updates) =>
      super.copyWith(
              (message) => updates(message as GListOfAbstractParentClass1))
          as GListOfAbstractParentClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass1 create() =>
      GListOfAbstractParentClass1._();
  GListOfAbstractParentClass1 createEmptyInstance() => create();
  static $pb.PbList<GListOfAbstractParentClass1> createRepeated() =>
      $pb.PbList<GListOfAbstractParentClass1>();
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass1 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfAbstractParentClass1>(create);
  static GListOfAbstractParentClass1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAbstractParentClass1> get items => $_getList(0);
}

enum GAbstractParentClass2_Props { subClass1, notSet }

class GAbstractParentClass2 extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GAbstractParentClass2_Props>
      _GAbstractParentClass2_PropsByTag = {
    1: GAbstractParentClass2_Props.subClass1,
    0: GAbstractParentClass2_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GAbstractParentClass2',
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<GSubClass1>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'subClass1',
        subBuilder: GSubClass1.create)
    ..hasRequiredFields = false;

  GAbstractParentClass2._() : super();
  factory GAbstractParentClass2({
    GSubClass1? subClass1,
  }) {
    final _result = create();
    if (subClass1 != null) {
      _result.subClass1 = subClass1;
    }
    return _result;
  }
  factory GAbstractParentClass2.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GAbstractParentClass2.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GAbstractParentClass2 clone() =>
      GAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GAbstractParentClass2 copyWith(
          void Function(GAbstractParentClass2) updates) =>
      super.copyWith((message) => updates(message as GAbstractParentClass2))
          as GAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass2 create() => GAbstractParentClass2._();
  GAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GAbstractParentClass2> createRepeated() =>
      $pb.PbList<GAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GAbstractParentClass2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GAbstractParentClass2>(create);
  static GAbstractParentClass2? _defaultInstance;

  GAbstractParentClass2_Props whichProps() =>
      _GAbstractParentClass2_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GSubClass1 get subClass1 => $_getN(0);
  @$pb.TagNumber(1)
  set subClass1(GSubClass1 v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSubClass1() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubClass1() => clearField(1);
  @$pb.TagNumber(1)
  GSubClass1 ensureSubClass1() => $_ensure(0);
}

class GListOfAbstractParentClass2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfAbstractParentClass2',
      createEmptyInstance: create)
    ..pc<GAbstractParentClass2>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GAbstractParentClass2.create)
    ..hasRequiredFields = false;

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
  factory GListOfAbstractParentClass2.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfAbstractParentClass2.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfAbstractParentClass2 clone() =>
      GListOfAbstractParentClass2()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfAbstractParentClass2 copyWith(
          void Function(GListOfAbstractParentClass2) updates) =>
      super.copyWith(
              (message) => updates(message as GListOfAbstractParentClass2))
          as GListOfAbstractParentClass2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass2 create() =>
      GListOfAbstractParentClass2._();
  GListOfAbstractParentClass2 createEmptyInstance() => create();
  static $pb.PbList<GListOfAbstractParentClass2> createRepeated() =>
      $pb.PbList<GListOfAbstractParentClass2>();
  @$core.pragma('dart2js:noInline')
  static GListOfAbstractParentClass2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfAbstractParentClass2>(create);
  static GListOfAbstractParentClass2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GAbstractParentClass2> get items => $_getList(0);
}

class GSubClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GSubClass1',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GSubClass1._() : super();
  factory GSubClass1() => create();
  factory GSubClass1.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GSubClass1.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GSubClass1 clone() => GSubClass1()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GSubClass1 copyWith(void Function(GSubClass1) updates) =>
      super.copyWith((message) => updates(message as GSubClass1))
          as GSubClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GSubClass1 create() => GSubClass1._();
  GSubClass1 createEmptyInstance() => create();
  static $pb.PbList<GSubClass1> createRepeated() => $pb.PbList<GSubClass1>();
  @$core.pragma('dart2js:noInline')
  static GSubClass1 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GSubClass1>(create);
  static GSubClass1? _defaultInstance;
}

class GListOfSubClass1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfSubClass1',
      createEmptyInstance: create)
    ..pc<GSubClass1>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GSubClass1.create)
    ..hasRequiredFields = false;

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
  factory GListOfSubClass1.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfSubClass1.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfSubClass1 clone() => GListOfSubClass1()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfSubClass1 copyWith(void Function(GListOfSubClass1) updates) =>
      super.copyWith((message) => updates(message as GListOfSubClass1))
          as GListOfSubClass1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfSubClass1 create() => GListOfSubClass1._();
  GListOfSubClass1 createEmptyInstance() => create();
  static $pb.PbList<GListOfSubClass1> createRepeated() =>
      $pb.PbList<GListOfSubClass1>();
  @$core.pragma('dart2js:noInline')
  static GListOfSubClass1 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfSubClass1>(create);
  static GListOfSubClass1? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GSubClass1> get items => $_getList(0);
}
