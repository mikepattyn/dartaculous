///
//  Generated code. Do not modify.
//  source: inheritance.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TFieldsOfBranch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TFieldsOfBranch',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  TFieldsOfBranch._() : super();
  factory TFieldsOfBranch({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory TFieldsOfBranch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TFieldsOfBranch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TFieldsOfBranch clone() => TFieldsOfBranch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TFieldsOfBranch copyWith(void Function(TFieldsOfBranch) updates) =>
      super.copyWith((message) => updates(message as TFieldsOfBranch))
          as TFieldsOfBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TFieldsOfBranch create() => TFieldsOfBranch._();
  TFieldsOfBranch createEmptyInstance() => create();
  static $pb.PbList<TFieldsOfBranch> createRepeated() =>
      $pb.PbList<TFieldsOfBranch>();
  @$core.pragma('dart2js:noInline')
  static TFieldsOfBranch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TFieldsOfBranch>(create);
  static TFieldsOfBranch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

enum TBranch_Props { branch, twig, leaf, notSet }

class TBranch extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TBranch_Props> _TBranch_PropsByTag = {
    1: TBranch_Props.branch,
    2: TBranch_Props.twig,
    3: TBranch_Props.leaf,
    0: TBranch_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TBranch',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<TFieldsOfBranch>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'branch',
        subBuilder: TFieldsOfBranch.create)
    ..aOM<LTwig>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'twig',
        subBuilder: LTwig.create)
    ..aOM<TLeaf>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'leaf',
        subBuilder: TLeaf.create)
    ..hasRequiredFields = false;

  TBranch._() : super();
  factory TBranch({
    TFieldsOfBranch? branch,
    LTwig? twig,
    TLeaf? leaf,
  }) {
    final _result = create();
    if (branch != null) {
      _result.branch = branch;
    }
    if (twig != null) {
      _result.twig = twig;
    }
    if (leaf != null) {
      _result.leaf = leaf;
    }
    return _result;
  }
  factory TBranch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TBranch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TBranch clone() => TBranch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TBranch copyWith(void Function(TBranch) updates) =>
      super.copyWith((message) => updates(message as TBranch))
          as TBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TBranch create() => TBranch._();
  TBranch createEmptyInstance() => create();
  static $pb.PbList<TBranch> createRepeated() => $pb.PbList<TBranch>();
  @$core.pragma('dart2js:noInline')
  static TBranch getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TBranch>(create);
  static TBranch? _defaultInstance;

  TBranch_Props whichProps() => _TBranch_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TFieldsOfBranch get branch => $_getN(0);
  @$pb.TagNumber(1)
  set branch(TFieldsOfBranch v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBranch() => $_has(0);
  @$pb.TagNumber(1)
  void clearBranch() => clearField(1);
  @$pb.TagNumber(1)
  TFieldsOfBranch ensureBranch() => $_ensure(0);

  @$pb.TagNumber(2)
  LTwig get twig => $_getN(1);
  @$pb.TagNumber(2)
  set twig(LTwig v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTwig() => $_has(1);
  @$pb.TagNumber(2)
  void clearTwig() => clearField(2);
  @$pb.TagNumber(2)
  LTwig ensureTwig() => $_ensure(1);

  @$pb.TagNumber(3)
  TLeaf get leaf => $_getN(2);
  @$pb.TagNumber(3)
  set leaf(TLeaf v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLeaf() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeaf() => clearField(3);
  @$pb.TagNumber(3)
  TLeaf ensureLeaf() => $_ensure(2);
}

class TListOfBranch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TListOfBranch',
      createEmptyInstance: create)
    ..pc<TBranch>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: TBranch.create)
    ..hasRequiredFields = false;

  TListOfBranch._() : super();
  factory TListOfBranch({
    $core.Iterable<TBranch>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory TListOfBranch.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TListOfBranch.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TListOfBranch clone() => TListOfBranch()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TListOfBranch copyWith(void Function(TListOfBranch) updates) =>
      super.copyWith((message) => updates(message as TListOfBranch))
          as TListOfBranch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TListOfBranch create() => TListOfBranch._();
  TListOfBranch createEmptyInstance() => create();
  static $pb.PbList<TListOfBranch> createRepeated() =>
      $pb.PbList<TListOfBranch>();
  @$core.pragma('dart2js:noInline')
  static TListOfBranch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TListOfBranch>(create);
  static TListOfBranch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TBranch> get items => $_getList(0);
}

class LFieldsOfTwig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'LFieldsOfTwig',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  LFieldsOfTwig._() : super();
  factory LFieldsOfTwig({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory LFieldsOfTwig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LFieldsOfTwig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LFieldsOfTwig clone() => LFieldsOfTwig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LFieldsOfTwig copyWith(void Function(LFieldsOfTwig) updates) =>
      super.copyWith((message) => updates(message as LFieldsOfTwig))
          as LFieldsOfTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LFieldsOfTwig create() => LFieldsOfTwig._();
  LFieldsOfTwig createEmptyInstance() => create();
  static $pb.PbList<LFieldsOfTwig> createRepeated() =>
      $pb.PbList<LFieldsOfTwig>();
  @$core.pragma('dart2js:noInline')
  static LFieldsOfTwig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LFieldsOfTwig>(create);
  static LFieldsOfTwig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

enum LTwig_Props { twig, leaf, notSet }

class LTwig extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LTwig_Props> _LTwig_PropsByTag = {
    1: LTwig_Props.twig,
    2: LTwig_Props.leaf,
    0: LTwig_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'LTwig',
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LFieldsOfTwig>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'twig',
        subBuilder: LFieldsOfTwig.create)
    ..aOM<TLeaf>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'leaf',
        subBuilder: TLeaf.create)
    ..hasRequiredFields = false;

  LTwig._() : super();
  factory LTwig({
    LFieldsOfTwig? twig,
    TLeaf? leaf,
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
  factory LTwig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LTwig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LTwig clone() => LTwig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LTwig copyWith(void Function(LTwig) updates) =>
      super.copyWith((message) => updates(message as LTwig))
          as LTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LTwig create() => LTwig._();
  LTwig createEmptyInstance() => create();
  static $pb.PbList<LTwig> createRepeated() => $pb.PbList<LTwig>();
  @$core.pragma('dart2js:noInline')
  static LTwig getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LTwig>(create);
  static LTwig? _defaultInstance;

  LTwig_Props whichProps() => _LTwig_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LFieldsOfTwig get twig => $_getN(0);
  @$pb.TagNumber(1)
  set twig(LFieldsOfTwig v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTwig() => $_has(0);
  @$pb.TagNumber(1)
  void clearTwig() => clearField(1);
  @$pb.TagNumber(1)
  LFieldsOfTwig ensureTwig() => $_ensure(0);

  @$pb.TagNumber(2)
  TLeaf get leaf => $_getN(1);
  @$pb.TagNumber(2)
  set leaf(TLeaf v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLeaf() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaf() => clearField(2);
  @$pb.TagNumber(2)
  TLeaf ensureLeaf() => $_ensure(1);
}

class LListOfTwig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'LListOfTwig',
      createEmptyInstance: create)
    ..pc<LTwig>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: LTwig.create)
    ..hasRequiredFields = false;

  LListOfTwig._() : super();
  factory LListOfTwig({
    $core.Iterable<LTwig>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory LListOfTwig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LListOfTwig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LListOfTwig clone() => LListOfTwig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LListOfTwig copyWith(void Function(LListOfTwig) updates) =>
      super.copyWith((message) => updates(message as LListOfTwig))
          as LListOfTwig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LListOfTwig create() => LListOfTwig._();
  LListOfTwig createEmptyInstance() => create();
  static $pb.PbList<LListOfTwig> createRepeated() => $pb.PbList<LListOfTwig>();
  @$core.pragma('dart2js:noInline')
  static LListOfTwig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LListOfTwig>(create);
  static LListOfTwig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LTwig> get items => $_getList(0);
}

class TLeaf extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TLeaf',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  TLeaf._() : super();
  factory TLeaf({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory TLeaf.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TLeaf.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TLeaf clone() => TLeaf()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TLeaf copyWith(void Function(TLeaf) updates) =>
      super.copyWith((message) => updates(message as TLeaf))
          as TLeaf; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TLeaf create() => TLeaf._();
  TLeaf createEmptyInstance() => create();
  static $pb.PbList<TLeaf> createRepeated() => $pb.PbList<TLeaf>();
  @$core.pragma('dart2js:noInline')
  static TLeaf getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TLeaf>(create);
  static TLeaf? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class TListOfLeaf extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TListOfLeaf',
      createEmptyInstance: create)
    ..pc<TLeaf>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: TLeaf.create)
    ..hasRequiredFields = false;

  TListOfLeaf._() : super();
  factory TListOfLeaf({
    $core.Iterable<TLeaf>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory TListOfLeaf.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TListOfLeaf.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TListOfLeaf clone() => TListOfLeaf()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TListOfLeaf copyWith(void Function(TListOfLeaf) updates) =>
      super.copyWith((message) => updates(message as TListOfLeaf))
          as TListOfLeaf; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TListOfLeaf create() => TListOfLeaf._();
  TListOfLeaf createEmptyInstance() => create();
  static $pb.PbList<TListOfLeaf> createRepeated() => $pb.PbList<TListOfLeaf>();
  @$core.pragma('dart2js:noInline')
  static TListOfLeaf getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TListOfLeaf>(create);
  static TListOfLeaf? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TLeaf> get items => $_getList(0);
}
