///
//  Generated code. Do not modify.
//  source: index_requests.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $6;

class Collation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Collation',
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Locale',
        protoName: 'Locale')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'CaseLevel',
        protoName: 'CaseLevel')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'CaseFirst',
        protoName: 'CaseFirst')
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Strength',
        $pb.PbFieldType.O3,
        protoName: 'Strength')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'NumericOrdering',
        protoName: 'NumericOrdering')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Alternate',
        protoName: 'Alternate')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'MaxVariable',
        protoName: 'MaxVariable')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Normalization',
        protoName: 'Normalization')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'Backwards',
        protoName: 'Backwards')
    ..hasRequiredFields = false;

  Collation._() : super();
  factory Collation({
    $core.String? locale,
    $core.bool? caseLevel,
    $core.String? caseFirst,
    $core.int? strength,
    $core.bool? numericOrdering,
    $core.String? alternate,
    $core.String? maxVariable,
    $core.bool? normalization,
    $core.bool? backwards,
  }) {
    final _result = create();
    if (locale != null) {
      _result.locale = locale;
    }
    if (caseLevel != null) {
      _result.caseLevel = caseLevel;
    }
    if (caseFirst != null) {
      _result.caseFirst = caseFirst;
    }
    if (strength != null) {
      _result.strength = strength;
    }
    if (numericOrdering != null) {
      _result.numericOrdering = numericOrdering;
    }
    if (alternate != null) {
      _result.alternate = alternate;
    }
    if (maxVariable != null) {
      _result.maxVariable = maxVariable;
    }
    if (normalization != null) {
      _result.normalization = normalization;
    }
    if (backwards != null) {
      _result.backwards = backwards;
    }
    return _result;
  }
  factory Collation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Collation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Collation clone() => Collation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Collation copyWith(void Function(Collation) updates) =>
      super.copyWith((message) => updates(message as Collation))
          as Collation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Collation create() => Collation._();
  Collation createEmptyInstance() => create();
  static $pb.PbList<Collation> createRepeated() => $pb.PbList<Collation>();
  @$core.pragma('dart2js:noInline')
  static Collation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Collation>(create);
  static Collation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get caseLevel => $_getBF(1);
  @$pb.TagNumber(2)
  set caseLevel($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCaseLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaseLevel() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get caseFirst => $_getSZ(2);
  @$pb.TagNumber(3)
  set caseFirst($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCaseFirst() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaseFirst() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get strength => $_getIZ(3);
  @$pb.TagNumber(4)
  set strength($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStrength() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrength() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get numericOrdering => $_getBF(4);
  @$pb.TagNumber(5)
  set numericOrdering($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNumericOrdering() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumericOrdering() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get alternate => $_getSZ(5);
  @$pb.TagNumber(6)
  set alternate($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAlternate() => $_has(5);
  @$pb.TagNumber(6)
  void clearAlternate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get maxVariable => $_getSZ(6);
  @$pb.TagNumber(7)
  set maxVariable($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMaxVariable() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxVariable() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get normalization => $_getBF(7);
  @$pb.TagNumber(8)
  set normalization($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasNormalization() => $_has(7);
  @$pb.TagNumber(8)
  void clearNormalization() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get backwards => $_getBF(8);
  @$pb.TagNumber(9)
  set backwards($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasBackwards() => $_has(8);
  @$pb.TagNumber(9)
  void clearBackwards() => clearField(9);
}

class IndexOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'IndexOptions',
      createEmptyInstance: create)
    ..aOM<$6.BoolValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'background',
        subBuilder: $6.BoolValue.create)
    ..aOM<$6.Int32Value>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'expireAfterSeconds',
        protoName: 'expireAfterSeconds',
        subBuilder: $6.Int32Value.create)
    ..aOM<$6.StringValue>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name',
        subBuilder: $6.StringValue.create)
    ..aOM<$6.BoolValue>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sparse',
        subBuilder: $6.BoolValue.create)
    ..a<$core.List<$core.int>>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'storageEngine',
        $pb.PbFieldType.OY,
        protoName: 'storageEngine')
    ..aOM<$6.BoolValue>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'unique',
        subBuilder: $6.BoolValue.create)
    ..aOM<$6.Int32Value>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'version',
        subBuilder: $6.Int32Value.create)
    ..aOM<$6.StringValue>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'defaultLanguage',
        protoName: 'defaultLanguage',
        subBuilder: $6.StringValue.create)
    ..aOM<$6.StringValue>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'languageOverride',
        protoName: 'languageOverride',
        subBuilder: $6.StringValue.create)
    ..aOM<$6.Int32Value>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'textVersion',
        protoName: 'textVersion',
        subBuilder: $6.Int32Value.create)
    ..a<$core.List<$core.int>>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'weights',
        $pb.PbFieldType.OY)
    ..aOM<$6.Int32Value>(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sphereVersion',
        protoName: 'sphereVersion',
        subBuilder: $6.Int32Value.create)
    ..aOM<$6.Int32Value>(
        13,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bits',
        subBuilder: $6.Int32Value.create)
    ..aOM<$6.DoubleValue>(
        14,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'max',
        subBuilder: $6.DoubleValue.create)
    ..aOM<$6.DoubleValue>(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'min',
        subBuilder: $6.DoubleValue.create)
    ..aOM<$6.Int32Value>(
        16,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bucketSize',
        protoName: 'bucketSize',
        subBuilder: $6.Int32Value.create)
    ..a<$core.List<$core.int>>(
        17,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'partialFilterExpression',
        $pb.PbFieldType.OY,
        protoName: 'partialFilterExpression')
    ..a<$core.List<$core.int>>(
        18,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collation',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        19,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'wildcardProjection',
        $pb.PbFieldType.OY,
        protoName: 'wildcardProjection')
    ..aOM<$6.BoolValue>(
        20,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hidden',
        subBuilder: $6.BoolValue.create)
    ..hasRequiredFields = false;

  IndexOptions._() : super();
  factory IndexOptions({
    $6.BoolValue? background,
    $6.Int32Value? expireAfterSeconds,
    $6.StringValue? name,
    $6.BoolValue? sparse,
    $core.List<$core.int>? storageEngine,
    $6.BoolValue? unique,
    $6.Int32Value? version,
    $6.StringValue? defaultLanguage,
    $6.StringValue? languageOverride,
    $6.Int32Value? textVersion,
    $core.List<$core.int>? weights,
    $6.Int32Value? sphereVersion,
    $6.Int32Value? bits,
    $6.DoubleValue? max,
    $6.DoubleValue? min,
    $6.Int32Value? bucketSize,
    $core.List<$core.int>? partialFilterExpression,
    $core.List<$core.int>? collation,
    $core.List<$core.int>? wildcardProjection,
    $6.BoolValue? hidden,
  }) {
    final _result = create();
    if (background != null) {
      _result.background = background;
    }
    if (expireAfterSeconds != null) {
      _result.expireAfterSeconds = expireAfterSeconds;
    }
    if (name != null) {
      _result.name = name;
    }
    if (sparse != null) {
      _result.sparse = sparse;
    }
    if (storageEngine != null) {
      _result.storageEngine = storageEngine;
    }
    if (unique != null) {
      _result.unique = unique;
    }
    if (version != null) {
      _result.version = version;
    }
    if (defaultLanguage != null) {
      _result.defaultLanguage = defaultLanguage;
    }
    if (languageOverride != null) {
      _result.languageOverride = languageOverride;
    }
    if (textVersion != null) {
      _result.textVersion = textVersion;
    }
    if (weights != null) {
      _result.weights = weights;
    }
    if (sphereVersion != null) {
      _result.sphereVersion = sphereVersion;
    }
    if (bits != null) {
      _result.bits = bits;
    }
    if (max != null) {
      _result.max = max;
    }
    if (min != null) {
      _result.min = min;
    }
    if (bucketSize != null) {
      _result.bucketSize = bucketSize;
    }
    if (partialFilterExpression != null) {
      _result.partialFilterExpression = partialFilterExpression;
    }
    if (collation != null) {
      _result.collation = collation;
    }
    if (wildcardProjection != null) {
      _result.wildcardProjection = wildcardProjection;
    }
    if (hidden != null) {
      _result.hidden = hidden;
    }
    return _result;
  }
  factory IndexOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory IndexOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  IndexOptions clone() => IndexOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  IndexOptions copyWith(void Function(IndexOptions) updates) =>
      super.copyWith((message) => updates(message as IndexOptions))
          as IndexOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IndexOptions create() => IndexOptions._();
  IndexOptions createEmptyInstance() => create();
  static $pb.PbList<IndexOptions> createRepeated() =>
      $pb.PbList<IndexOptions>();
  @$core.pragma('dart2js:noInline')
  static IndexOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IndexOptions>(create);
  static IndexOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $6.BoolValue get background => $_getN(0);
  @$pb.TagNumber(1)
  set background($6.BoolValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBackground() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackground() => clearField(1);
  @$pb.TagNumber(1)
  $6.BoolValue ensureBackground() => $_ensure(0);

  @$pb.TagNumber(2)
  $6.Int32Value get expireAfterSeconds => $_getN(1);
  @$pb.TagNumber(2)
  set expireAfterSeconds($6.Int32Value v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExpireAfterSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpireAfterSeconds() => clearField(2);
  @$pb.TagNumber(2)
  $6.Int32Value ensureExpireAfterSeconds() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.StringValue get name => $_getN(2);
  @$pb.TagNumber(3)
  set name($6.StringValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
  @$pb.TagNumber(3)
  $6.StringValue ensureName() => $_ensure(2);

  @$pb.TagNumber(4)
  $6.BoolValue get sparse => $_getN(3);
  @$pb.TagNumber(4)
  set sparse($6.BoolValue v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSparse() => $_has(3);
  @$pb.TagNumber(4)
  void clearSparse() => clearField(4);
  @$pb.TagNumber(4)
  $6.BoolValue ensureSparse() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get storageEngine => $_getN(4);
  @$pb.TagNumber(5)
  set storageEngine($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStorageEngine() => $_has(4);
  @$pb.TagNumber(5)
  void clearStorageEngine() => clearField(5);

  @$pb.TagNumber(6)
  $6.BoolValue get unique => $_getN(5);
  @$pb.TagNumber(6)
  set unique($6.BoolValue v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUnique() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnique() => clearField(6);
  @$pb.TagNumber(6)
  $6.BoolValue ensureUnique() => $_ensure(5);

  @$pb.TagNumber(7)
  $6.Int32Value get version => $_getN(6);
  @$pb.TagNumber(7)
  set version($6.Int32Value v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);
  @$pb.TagNumber(7)
  $6.Int32Value ensureVersion() => $_ensure(6);

  @$pb.TagNumber(8)
  $6.StringValue get defaultLanguage => $_getN(7);
  @$pb.TagNumber(8)
  set defaultLanguage($6.StringValue v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDefaultLanguage() => $_has(7);
  @$pb.TagNumber(8)
  void clearDefaultLanguage() => clearField(8);
  @$pb.TagNumber(8)
  $6.StringValue ensureDefaultLanguage() => $_ensure(7);

  @$pb.TagNumber(9)
  $6.StringValue get languageOverride => $_getN(8);
  @$pb.TagNumber(9)
  set languageOverride($6.StringValue v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasLanguageOverride() => $_has(8);
  @$pb.TagNumber(9)
  void clearLanguageOverride() => clearField(9);
  @$pb.TagNumber(9)
  $6.StringValue ensureLanguageOverride() => $_ensure(8);

  @$pb.TagNumber(10)
  $6.Int32Value get textVersion => $_getN(9);
  @$pb.TagNumber(10)
  set textVersion($6.Int32Value v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasTextVersion() => $_has(9);
  @$pb.TagNumber(10)
  void clearTextVersion() => clearField(10);
  @$pb.TagNumber(10)
  $6.Int32Value ensureTextVersion() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get weights => $_getN(10);
  @$pb.TagNumber(11)
  set weights($core.List<$core.int> v) {
    $_setBytes(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasWeights() => $_has(10);
  @$pb.TagNumber(11)
  void clearWeights() => clearField(11);

  @$pb.TagNumber(12)
  $6.Int32Value get sphereVersion => $_getN(11);
  @$pb.TagNumber(12)
  set sphereVersion($6.Int32Value v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasSphereVersion() => $_has(11);
  @$pb.TagNumber(12)
  void clearSphereVersion() => clearField(12);
  @$pb.TagNumber(12)
  $6.Int32Value ensureSphereVersion() => $_ensure(11);

  @$pb.TagNumber(13)
  $6.Int32Value get bits => $_getN(12);
  @$pb.TagNumber(13)
  set bits($6.Int32Value v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasBits() => $_has(12);
  @$pb.TagNumber(13)
  void clearBits() => clearField(13);
  @$pb.TagNumber(13)
  $6.Int32Value ensureBits() => $_ensure(12);

  @$pb.TagNumber(14)
  $6.DoubleValue get max => $_getN(13);
  @$pb.TagNumber(14)
  set max($6.DoubleValue v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasMax() => $_has(13);
  @$pb.TagNumber(14)
  void clearMax() => clearField(14);
  @$pb.TagNumber(14)
  $6.DoubleValue ensureMax() => $_ensure(13);

  @$pb.TagNumber(15)
  $6.DoubleValue get min => $_getN(14);
  @$pb.TagNumber(15)
  set min($6.DoubleValue v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasMin() => $_has(14);
  @$pb.TagNumber(15)
  void clearMin() => clearField(15);
  @$pb.TagNumber(15)
  $6.DoubleValue ensureMin() => $_ensure(14);

  @$pb.TagNumber(16)
  $6.Int32Value get bucketSize => $_getN(15);
  @$pb.TagNumber(16)
  set bucketSize($6.Int32Value v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasBucketSize() => $_has(15);
  @$pb.TagNumber(16)
  void clearBucketSize() => clearField(16);
  @$pb.TagNumber(16)
  $6.Int32Value ensureBucketSize() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.List<$core.int> get partialFilterExpression => $_getN(16);
  @$pb.TagNumber(17)
  set partialFilterExpression($core.List<$core.int> v) {
    $_setBytes(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasPartialFilterExpression() => $_has(16);
  @$pb.TagNumber(17)
  void clearPartialFilterExpression() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.int> get collation => $_getN(17);
  @$pb.TagNumber(18)
  set collation($core.List<$core.int> v) {
    $_setBytes(17, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasCollation() => $_has(17);
  @$pb.TagNumber(18)
  void clearCollation() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<$core.int> get wildcardProjection => $_getN(18);
  @$pb.TagNumber(19)
  set wildcardProjection($core.List<$core.int> v) {
    $_setBytes(18, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasWildcardProjection() => $_has(18);
  @$pb.TagNumber(19)
  void clearWildcardProjection() => clearField(19);

  @$pb.TagNumber(20)
  $6.BoolValue get hidden => $_getN(19);
  @$pb.TagNumber(20)
  set hidden($6.BoolValue v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasHidden() => $_has(19);
  @$pb.TagNumber(20)
  void clearHidden() => clearField(20);
  @$pb.TagNumber(20)
  $6.BoolValue ensureHidden() => $_ensure(19);
}

class CreateIndexRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateIndexRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'keys',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'indexOptions',
        $pb.PbFieldType.OY,
        protoName: 'indexOptions')
    ..hasRequiredFields = false;

  CreateIndexRequest._() : super();
  factory CreateIndexRequest({
    $core.List<$core.int>? collectionOid,
    $core.List<$core.int>? keys,
    $core.List<$core.int>? indexOptions,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (keys != null) {
      _result.keys = keys;
    }
    if (indexOptions != null) {
      _result.indexOptions = indexOptions;
    }
    return _result;
  }
  factory CreateIndexRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateIndexRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateIndexRequest clone() => CreateIndexRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateIndexRequest copyWith(void Function(CreateIndexRequest) updates) =>
      super.copyWith((message) => updates(message as CreateIndexRequest))
          as CreateIndexRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateIndexRequest create() => CreateIndexRequest._();
  CreateIndexRequest createEmptyInstance() => create();
  static $pb.PbList<CreateIndexRequest> createRepeated() =>
      $pb.PbList<CreateIndexRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateIndexRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateIndexRequest>(create);
  static CreateIndexRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get keys => $_getN(1);
  @$pb.TagNumber(2)
  set keys($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKeys() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeys() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get indexOptions => $_getN(2);
  @$pb.TagNumber(3)
  set indexOptions($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIndexOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndexOptions() => clearField(3);
}

class DropIndexRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DropIndexRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  DropIndexRequest._() : super();
  factory DropIndexRequest({
    $core.List<$core.int>? collectionOid,
    $core.String? name,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory DropIndexRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DropIndexRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DropIndexRequest clone() => DropIndexRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DropIndexRequest copyWith(void Function(DropIndexRequest) updates) =>
      super.copyWith((message) => updates(message as DropIndexRequest))
          as DropIndexRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DropIndexRequest create() => DropIndexRequest._();
  DropIndexRequest createEmptyInstance() => create();
  static $pb.PbList<DropIndexRequest> createRepeated() =>
      $pb.PbList<DropIndexRequest>();
  @$core.pragma('dart2js:noInline')
  static DropIndexRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropIndexRequest>(create);
  static DropIndexRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class DropAllIndexesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DropAllIndexesRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..hasRequiredFields = false;

  DropAllIndexesRequest._() : super();
  factory DropAllIndexesRequest({
    $core.List<$core.int>? collectionOid,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    return _result;
  }
  factory DropAllIndexesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DropAllIndexesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DropAllIndexesRequest clone() =>
      DropAllIndexesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DropAllIndexesRequest copyWith(
          void Function(DropAllIndexesRequest) updates) =>
      super.copyWith((message) => updates(message as DropAllIndexesRequest))
          as DropAllIndexesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DropAllIndexesRequest create() => DropAllIndexesRequest._();
  DropAllIndexesRequest createEmptyInstance() => create();
  static $pb.PbList<DropAllIndexesRequest> createRepeated() =>
      $pb.PbList<DropAllIndexesRequest>();
  @$core.pragma('dart2js:noInline')
  static DropAllIndexesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropAllIndexesRequest>(create);
  static DropAllIndexesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);
}

class ListIndexesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListIndexesRequest',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..hasRequiredFields = false;

  ListIndexesRequest._() : super();
  factory ListIndexesRequest({
    $core.List<$core.int>? collectionOid,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    return _result;
  }
  factory ListIndexesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListIndexesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListIndexesRequest clone() => ListIndexesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListIndexesRequest copyWith(void Function(ListIndexesRequest) updates) =>
      super.copyWith((message) => updates(message as ListIndexesRequest))
          as ListIndexesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListIndexesRequest create() => ListIndexesRequest._();
  ListIndexesRequest createEmptyInstance() => create();
  static $pb.PbList<ListIndexesRequest> createRepeated() =>
      $pb.PbList<ListIndexesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListIndexesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListIndexesRequest>(create);
  static ListIndexesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);
}
