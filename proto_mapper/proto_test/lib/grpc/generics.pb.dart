///
//  Generated code. Do not modify.
//  source: generics.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum GScheduleConstraint_Props { contestConstraint, notSet }

class GScheduleConstraint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GScheduleConstraint_Props>
      _GScheduleConstraint_PropsByTag = {
    1: GScheduleConstraint_Props.contestConstraint,
    0: GScheduleConstraint_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GScheduleConstraint',
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<GContestConstraint>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contestConstraint',
        subBuilder: GContestConstraint.create)
    ..hasRequiredFields = false;

  GScheduleConstraint._() : super();
  factory GScheduleConstraint({
    GContestConstraint? contestConstraint,
  }) {
    final _result = create();
    if (contestConstraint != null) {
      _result.contestConstraint = contestConstraint;
    }
    return _result;
  }
  factory GScheduleConstraint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GScheduleConstraint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GScheduleConstraint clone() => GScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GScheduleConstraint copyWith(void Function(GScheduleConstraint) updates) =>
      super.copyWith((message) => updates(message as GScheduleConstraint))
          as GScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GScheduleConstraint create() => GScheduleConstraint._();
  GScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GScheduleConstraint> createRepeated() =>
      $pb.PbList<GScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GScheduleConstraint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GScheduleConstraint>(create);
  static GScheduleConstraint? _defaultInstance;

  GScheduleConstraint_Props whichProps() =>
      _GScheduleConstraint_PropsByTag[$_whichOneof(0)]!;
  void clearProps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GContestConstraint get contestConstraint => $_getN(0);
  @$pb.TagNumber(1)
  set contestConstraint(GContestConstraint v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContestConstraint() => $_has(0);
  @$pb.TagNumber(1)
  void clearContestConstraint() => clearField(1);
  @$pb.TagNumber(1)
  GContestConstraint ensureContestConstraint() => $_ensure(0);
}

class GListOfScheduleConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfScheduleConstraint',
      createEmptyInstance: create)
    ..pc<GScheduleConstraint>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GScheduleConstraint.create)
    ..hasRequiredFields = false;

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
  factory GListOfScheduleConstraint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfScheduleConstraint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfScheduleConstraint clone() =>
      GListOfScheduleConstraint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfScheduleConstraint copyWith(
          void Function(GListOfScheduleConstraint) updates) =>
      super.copyWith((message) => updates(message as GListOfScheduleConstraint))
          as GListOfScheduleConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfScheduleConstraint create() => GListOfScheduleConstraint._();
  GListOfScheduleConstraint createEmptyInstance() => create();
  static $pb.PbList<GListOfScheduleConstraint> createRepeated() =>
      $pb.PbList<GListOfScheduleConstraint>();
  @$core.pragma('dart2js:noInline')
  static GListOfScheduleConstraint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfScheduleConstraint>(create);
  static GListOfScheduleConstraint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GScheduleConstraint> get items => $_getList(0);
}

class GConstraintAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GConstraintAdded',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contestScheduleId')
    ..aOM<GScheduleConstraint>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'constraint',
        subBuilder: GScheduleConstraint.create)
    ..hasRequiredFields = false;

  GConstraintAdded._() : super();
  factory GConstraintAdded({
    $core.String? contestScheduleId,
    GScheduleConstraint? constraint,
  }) {
    final _result = create();
    if (contestScheduleId != null) {
      _result.contestScheduleId = contestScheduleId;
    }
    if (constraint != null) {
      _result.constraint = constraint;
    }
    return _result;
  }
  factory GConstraintAdded.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GConstraintAdded.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GConstraintAdded clone() => GConstraintAdded()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GConstraintAdded copyWith(void Function(GConstraintAdded) updates) =>
      super.copyWith((message) => updates(message as GConstraintAdded))
          as GConstraintAdded; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GConstraintAdded create() => GConstraintAdded._();
  GConstraintAdded createEmptyInstance() => create();
  static $pb.PbList<GConstraintAdded> createRepeated() =>
      $pb.PbList<GConstraintAdded>();
  @$core.pragma('dart2js:noInline')
  static GConstraintAdded getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GConstraintAdded>(create);
  static GConstraintAdded? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contestScheduleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set contestScheduleId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContestScheduleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContestScheduleId() => clearField(1);

  @$pb.TagNumber(2)
  GScheduleConstraint get constraint => $_getN(1);
  @$pb.TagNumber(2)
  set constraint(GScheduleConstraint v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConstraint() => $_has(1);
  @$pb.TagNumber(2)
  void clearConstraint() => clearField(2);
  @$pb.TagNumber(2)
  GScheduleConstraint ensureConstraint() => $_ensure(1);
}

class GListOfConstraintAdded extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfConstraintAdded',
      createEmptyInstance: create)
    ..pc<GConstraintAdded>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GConstraintAdded.create)
    ..hasRequiredFields = false;

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
  factory GListOfConstraintAdded.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfConstraintAdded.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfConstraintAdded clone() =>
      GListOfConstraintAdded()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfConstraintAdded copyWith(
          void Function(GListOfConstraintAdded) updates) =>
      super.copyWith((message) => updates(message as GListOfConstraintAdded))
          as GListOfConstraintAdded; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfConstraintAdded create() => GListOfConstraintAdded._();
  GListOfConstraintAdded createEmptyInstance() => create();
  static $pb.PbList<GListOfConstraintAdded> createRepeated() =>
      $pb.PbList<GListOfConstraintAdded>();
  @$core.pragma('dart2js:noInline')
  static GListOfConstraintAdded getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfConstraintAdded>(create);
  static GListOfConstraintAdded? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GConstraintAdded> get items => $_getList(0);
}

class GContestConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GContestConstraint',
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GContestConstraint._() : super();
  factory GContestConstraint() => create();
  factory GContestConstraint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GContestConstraint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GContestConstraint clone() => GContestConstraint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GContestConstraint copyWith(void Function(GContestConstraint) updates) =>
      super.copyWith((message) => updates(message as GContestConstraint))
          as GContestConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GContestConstraint create() => GContestConstraint._();
  GContestConstraint createEmptyInstance() => create();
  static $pb.PbList<GContestConstraint> createRepeated() =>
      $pb.PbList<GContestConstraint>();
  @$core.pragma('dart2js:noInline')
  static GContestConstraint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GContestConstraint>(create);
  static GContestConstraint? _defaultInstance;
}

class GListOfContestConstraint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GListOfContestConstraint',
      createEmptyInstance: create)
    ..pc<GContestConstraint>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'items',
        $pb.PbFieldType.PM,
        subBuilder: GContestConstraint.create)
    ..hasRequiredFields = false;

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
  factory GListOfContestConstraint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GListOfContestConstraint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GListOfContestConstraint clone() =>
      GListOfContestConstraint()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GListOfContestConstraint copyWith(
          void Function(GListOfContestConstraint) updates) =>
      super.copyWith((message) => updates(message as GListOfContestConstraint))
          as GListOfContestConstraint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GListOfContestConstraint create() => GListOfContestConstraint._();
  GListOfContestConstraint createEmptyInstance() => create();
  static $pb.PbList<GListOfContestConstraint> createRepeated() =>
      $pb.PbList<GListOfContestConstraint>();
  @$core.pragma('dart2js:noInline')
  static GListOfContestConstraint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GListOfContestConstraint>(create);
  static GListOfContestConstraint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GContestConstraint> get items => $_getList(0);
}
