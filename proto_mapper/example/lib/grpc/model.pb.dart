///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/wrappers.pb.dart' as $3;
import 'google/protobuf/duration.pb.dart' as $4;
import 'google/protobuf/timestamp.pb.dart' as $5;

class GIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GIngredient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quantity', $pb.PbFieldType.OD)
    ..aOM<$3.Int32Value>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'batchSize', subBuilder: $3.Int32Value.create)
    ..aOM<$4.Duration>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'estimatedPreparationTime', subBuilder: $4.Duration.create)
    ..aOM<$5.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryDate', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  GIngredient._() : super();
  factory GIngredient({
    $core.String? description,
    $core.double? quantity,
    $3.Int32Value? batchSize,
    $4.Duration? estimatedPreparationTime,
    $5.Timestamp? expiryDate,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (batchSize != null) {
      _result.batchSize = batchSize;
    }
    if (estimatedPreparationTime != null) {
      _result.estimatedPreparationTime = estimatedPreparationTime;
    }
    if (expiryDate != null) {
      _result.expiryDate = expiryDate;
    }
    return _result;
  }
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

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get quantity => $_getN(1);
  @$pb.TagNumber(3)
  set quantity($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $3.Int32Value get batchSize => $_getN(2);
  @$pb.TagNumber(4)
  set batchSize($3.Int32Value v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBatchSize() => $_has(2);
  @$pb.TagNumber(4)
  void clearBatchSize() => clearField(4);
  @$pb.TagNumber(4)
  $3.Int32Value ensureBatchSize() => $_ensure(2);

  @$pb.TagNumber(5)
  $4.Duration get estimatedPreparationTime => $_getN(3);
  @$pb.TagNumber(5)
  set estimatedPreparationTime($4.Duration v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEstimatedPreparationTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearEstimatedPreparationTime() => clearField(5);
  @$pb.TagNumber(5)
  $4.Duration ensureEstimatedPreparationTime() => $_ensure(3);

  @$pb.TagNumber(6)
  $5.Timestamp get expiryDate => $_getN(4);
  @$pb.TagNumber(6)
  set expiryDate($5.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpiryDate() => $_has(4);
  @$pb.TagNumber(6)
  void clearExpiryDate() => clearField(6);
  @$pb.TagNumber(6)
  $5.Timestamp ensureExpiryDate() => $_ensure(4);
}

class GListOfIngredient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfIngredient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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

class GRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ptitle')
    ..pc<GIngredient>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ingredients', $pb.PbFieldType.PM, subBuilder: GIngredient.create)
    ..hasRequiredFields = false
  ;

  GRecipe._() : super();
  factory GRecipe({
    $core.String? id,
    $core.String? ptitle,
    $core.Iterable<GIngredient>? ingredients,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ptitle != null) {
      _result.ptitle = ptitle;
    }
    if (ingredients != null) {
      _result.ingredients.addAll(ingredients);
    }
    return _result;
  }
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

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ptitle => $_getSZ(1);
  @$pb.TagNumber(3)
  set ptitle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPtitle() => $_has(1);
  @$pb.TagNumber(3)
  void clearPtitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<GIngredient> get ingredients => $_getList(2);
}

class GListOfRecipe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfRecipe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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

class GFieldsOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GFieldsOfVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GFieldsOfVehicle._() : super();
  factory GFieldsOfVehicle({
    $core.double? weight,
  }) {
    final _result = create();
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
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

  @$pb.TagNumber(2)
  $core.double get weight => $_getN(0);
  @$pb.TagNumber(2)
  set weight($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(0);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);
}

enum GVehicle_Props {
  vehicle, 
  car, 
  airplane, 
  notSet
}

class GVehicle extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GVehicle_Props> _GVehicle_PropsByTag = {
    1 : GVehicle_Props.vehicle,
    2 : GVehicle_Props.car,
    3 : GVehicle_Props.airplane,
    0 : GVehicle_Props.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vehicle', subBuilder: GFieldsOfVehicle.create)
    ..aOM<GCar>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'car', subBuilder: GCar.create)
    ..aOM<GAirplane>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airplane', subBuilder: GAirplane.create)
    ..hasRequiredFields = false
  ;

  GVehicle._() : super();
  factory GVehicle({
    GFieldsOfVehicle? vehicle,
    GCar? car,
    GAirplane? airplane,
  }) {
    final _result = create();
    if (vehicle != null) {
      _result.vehicle = vehicle;
    }
    if (car != null) {
      _result.car = car;
    }
    if (airplane != null) {
      _result.airplane = airplane;
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

  @$pb.TagNumber(2)
  GCar get car => $_getN(1);
  @$pb.TagNumber(2)
  set car(GCar v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCar() => $_has(1);
  @$pb.TagNumber(2)
  void clearCar() => clearField(2);
  @$pb.TagNumber(2)
  GCar ensureCar() => $_ensure(1);

  @$pb.TagNumber(3)
  GAirplane get airplane => $_getN(2);
  @$pb.TagNumber(3)
  set airplane(GAirplane v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAirplane() => $_has(2);
  @$pb.TagNumber(3)
  void clearAirplane() => clearField(3);
  @$pb.TagNumber(3)
  GAirplane ensureAirplane() => $_ensure(2);
}

class GListOfVehicle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfVehicle', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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

class GCar extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GCar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfCar', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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

class GAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GAirplane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
    ..aOM<GFieldsOfVehicle>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldsOfSuperClass', protoName: 'fieldsOfSuperClass', subBuilder: GFieldsOfVehicle.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registration')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceCeiling', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GAirplane._() : super();
  factory GAirplane({
    GFieldsOfVehicle? fieldsOfSuperClass,
    $core.String? registration,
    $core.int? serviceCeiling,
  }) {
    final _result = create();
    if (fieldsOfSuperClass != null) {
      _result.fieldsOfSuperClass = fieldsOfSuperClass;
    }
    if (registration != null) {
      _result.registration = registration;
    }
    if (serviceCeiling != null) {
      _result.serviceCeiling = serviceCeiling;
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
  $core.String get registration => $_getSZ(1);
  @$pb.TagNumber(2)
  set registration($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistration() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistration() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get serviceCeiling => $_getIZ(2);
  @$pb.TagNumber(3)
  set serviceCeiling($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasServiceCeiling() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceCeiling() => clearField(3);
}

class GListOfAirplane extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GListOfAirplane', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.mycompany.myproject'), createEmptyInstance: create)
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

