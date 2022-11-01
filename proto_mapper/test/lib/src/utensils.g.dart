// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utensils.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $KnifeProtoMapper implements ProtoMapper<Knife, GKnife> {
  const $KnifeProtoMapper();

  @override
  Knife fromProto(GKnife proto) => _$KnifeFromProto(proto);
  @override
  GKnife toProto(Knife entity) => _$KnifeToProto(entity);
  Knife fromJson(String json) => _$KnifeFromProto(GKnife.fromJson(json));
  String toJson(Knife entity) => _$KnifeToProto(entity).writeToJson();
  String toBase64Proto(Knife entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Knife fromBase64Proto(String base64Proto) =>
      _$KnifeFromProto(GKnife.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GKnife _$KnifeToProto(Knife instance) {
  var proto = GKnife();

  proto.name = instance.name;
  proto.type = GKnifeType.valueOf(instance.type.index)!;

  return proto;
}

Knife _$KnifeFromProto(GKnife instance) => Knife(
      name: instance.name,
      type: KnifeType.values[instance.type.value],
    );

extension $KnifeProtoExtension on Knife {
  GKnife toProto() => _$KnifeToProto(this);
  String toJson() => _$KnifeToProto(this).writeToJson();
  static Knife fromProto(GKnife proto) => _$KnifeFromProto(proto);
  static Knife fromJson(String json) => _$KnifeFromProto(GKnife.fromJson(json));
}

extension $GKnifeProtoExtension on GKnife {
  Knife toKnife() => _$KnifeFromProto(this);
}

class $GarlicPressProtoMapper
    implements ProtoMapper<GarlicPress, GGarlicPress> {
  const $GarlicPressProtoMapper();

  @override
  GarlicPress fromProto(GGarlicPress proto) => _$GarlicPressFromProto(proto);
  @override
  GGarlicPress toProto(GarlicPress entity) => _$GarlicPressToProto(entity);
  GarlicPress fromJson(String json) =>
      _$GarlicPressFromProto(GGarlicPress.fromJson(json));
  String toJson(GarlicPress entity) =>
      _$GarlicPressToProto(entity).writeToJson();
  String toBase64Proto(GarlicPress entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  GarlicPress fromBase64Proto(String base64Proto) => _$GarlicPressFromProto(
      GGarlicPress.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GGarlicPress _$GarlicPressToProto(GarlicPress instance) {
  var proto = GGarlicPress();

  proto.name = instance.name;
  proto.machineWashable = instance.machineWashable;

  return proto;
}

GarlicPress _$GarlicPressFromProto(GGarlicPress instance) => GarlicPress(
      name: instance.name,
      machineWashable: instance.machineWashable,
    );

extension $GarlicPressProtoExtension on GarlicPress {
  GGarlicPress toProto() => _$GarlicPressToProto(this);
  String toJson() => _$GarlicPressToProto(this).writeToJson();
  static GarlicPress fromProto(GGarlicPress proto) =>
      _$GarlicPressFromProto(proto);
  static GarlicPress fromJson(String json) =>
      _$GarlicPressFromProto(GGarlicPress.fromJson(json));
}

extension $GGarlicPressProtoExtension on GGarlicPress {
  GarlicPress toGarlicPress() => _$GarlicPressFromProto(this);
}

class $KitchenProtoMapper implements ProtoMapper<Kitchen, GKitchen> {
  const $KitchenProtoMapper();

  @override
  Kitchen fromProto(GKitchen proto) => _$KitchenFromProto(proto);
  @override
  GKitchen toProto(Kitchen entity) => _$KitchenToProto(entity);
  Kitchen fromJson(String json) => _$KitchenFromProto(GKitchen.fromJson(json));
  String toJson(Kitchen entity) => _$KitchenToProto(entity).writeToJson();
  String toBase64Proto(Kitchen entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Kitchen fromBase64Proto(String base64Proto) => _$KitchenFromProto(
      GKitchen.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GKitchen _$KitchenToProto(Kitchen instance) {
  var proto = GKitchen();

  proto.recipeList.addAll(
      instance.recipeList.map((e) => const $RecipeProtoMapper().toProto(e)));

  proto.recipeMap.addAll(instance.recipeMap
      .map((k, v) => MapEntry(k, const $RecipeProtoMapper().toProto(v))));

  proto.nextInspectionDate =
      $wellknown_timestamp.Timestamp.fromDateTime(instance.nextInspectionDate);

  return proto;
}

Kitchen _$KitchenFromProto(GKitchen instance) => Kitchen(
      recipeList: List<Recipe>.unmodifiable(instance.recipeList
          .map((e) => const $RecipeProtoMapper().fromProto(e))),
      recipeMap: instance.recipeMap
          .map((k, v) => MapEntry(k, const $RecipeProtoMapper().fromProto(v))),
      nextInspectionDate: instance.nextInspectionDate.toDateTime(),
    );

extension $KitchenProtoExtension on Kitchen {
  GKitchen toProto() => _$KitchenToProto(this);
  String toJson() => _$KitchenToProto(this).writeToJson();
  static Kitchen fromProto(GKitchen proto) => _$KitchenFromProto(proto);
  static Kitchen fromJson(String json) =>
      _$KitchenFromProto(GKitchen.fromJson(json));
}

extension $GKitchenProtoExtension on GKitchen {
  Kitchen toKitchen() => _$KitchenFromProto(this);
}

class $ChefProtoMapper implements ProtoMapper<Chef, GChef> {
  const $ChefProtoMapper();

  @override
  Chef fromProto(GChef proto) => _$ChefFromProto(proto);
  @override
  GChef toProto(Chef entity) => _$ChefToProto(entity);
  Chef fromJson(String json) => _$ChefFromProto(GChef.fromJson(json));
  String toJson(Chef entity) => _$ChefToProto(entity).writeToJson();
  String toBase64Proto(Chef entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Chef fromBase64Proto(String base64Proto) =>
      _$ChefFromProto(GChef.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GChef _$ChefToProto(Chef instance) {
  var proto = GChef();

  if (instance.favoriteRecipe != null) {
    proto.favoriteRecipe =
        const $RecipeProtoMapper().toProto(instance.favoriteRecipe!);
  }
  proto.favoriteRecipeHasValue = instance.favoriteRecipe != null;

  if (instance.favoriteKnife != null) {
    proto.favoriteKnife =
        const $KnifeProtoMapper().toProto(instance.favoriteKnife!);
  }
  proto.favoriteKnifeHasValue = instance.favoriteKnife != null;

  proto.favoriteApplianceType =
      GApplianceType.valueOf(instance.favoriteApplianceType.index)!;
  proto.favoriteWords.addAll(instance.favoriteWords);

  proto.birthdate =
      $wellknown_timestamp.Timestamp.fromDateTime(instance.birthdate);
  if (instance.shelfLife != null) {
    proto.shelfLife = $wellknown_duration.Duration(
        seconds: Int64(instance.shelfLife!.inSeconds),
        nanos: (instance.shelfLife!.inMicroseconds -
                instance.shelfLife!.inSeconds * 1000000) *
            1000);
  }
  proto.shelfLifeHasValue = instance.shelfLife != null;

  return proto;
}

Chef _$ChefFromProto(GChef instance) => Chef(
      favoriteRecipe: (instance.favoriteRecipeHasValue
          ? (const $RecipeProtoMapper().fromProto(instance.favoriteRecipe))
          : null),
      favoriteKnife: (instance.favoriteKnifeHasValue
          ? (const $KnifeProtoMapper().fromProto(instance.favoriteKnife))
          : null),
      favoriteApplianceType:
          ApplianceType.values[instance.favoriteApplianceType.value],
      favoriteWords:
          List<String>.unmodifiable(instance.favoriteWords.map((e) => e)),
      birthdate: instance.birthdate.toDateTime(),
      shelfLife: (instance.shelfLifeHasValue
          ? (Duration(
              seconds: instance.shelfLife.seconds.toInt(),
              microseconds: (instance.shelfLife.nanos ~/ 1000).toInt()))
          : null),
    );

extension $ChefProtoExtension on Chef {
  GChef toProto() => _$ChefToProto(this);
  String toJson() => _$ChefToProto(this).writeToJson();
  static Chef fromProto(GChef proto) => _$ChefFromProto(proto);
  static Chef fromJson(String json) => _$ChefFromProto(GChef.fromJson(json));
}

extension $GChefProtoExtension on GChef {
  Chef toChef() => _$ChefFromProto(this);
}

class $SousChefProtoMapper implements ProtoMapper<SousChef, GSousChef> {
  const $SousChefProtoMapper();

  @override
  SousChef fromProto(GSousChef proto) => _$SousChefFromProto(proto);
  @override
  GSousChef toProto(SousChef entity) => _$SousChefToProto(entity);
  SousChef fromJson(String json) =>
      _$SousChefFromProto(GSousChef.fromJson(json));
  String toJson(SousChef entity) => _$SousChefToProto(entity).writeToJson();
  String toBase64Proto(SousChef entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  SousChef fromBase64Proto(String base64Proto) => _$SousChefFromProto(
      GSousChef.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GSousChef _$SousChefToProto(SousChef instance) {
  var proto = GSousChef();

  if (instance.favoriteRecipe != null) {
    proto.favoriteRecipe =
        const $RecipeProtoMapper().toProto(instance.favoriteRecipe!);
  }
  proto.favoriteRecipeHasValue = instance.favoriteRecipe != null;

  if (instance.favoriteKnife != null) {
    proto.favoriteKnife =
        const $KnifeProtoMapper().toProto(instance.favoriteKnife!);
  }
  proto.favoriteKnifeHasValue = instance.favoriteKnife != null;

  proto.favoriteApplianceType =
      GApplianceType.valueOf(instance.favoriteApplianceType.index)!;
  proto.favoriteWords.addAll(instance.favoriteWords);

  proto.birthdate =
      $wellknown_timestamp.Timestamp.fromDateTime(instance.birthdate);
  if (instance.shelfLife != null) {
    proto.shelfLife = $wellknown_duration.Duration(
        seconds: Int64(instance.shelfLife!.inSeconds),
        nanos: (instance.shelfLife!.inMicroseconds -
                instance.shelfLife!.inSeconds * 1000000) *
            1000);
  }
  proto.shelfLifeHasValue = instance.shelfLife != null;

  return proto;
}

SousChef _$SousChefFromProto(GSousChef instance) => SousChef(
      favoriteApplianceType:
          ApplianceType.values[instance.favoriteApplianceType.value],
      birthdate: instance.birthdate.toDateTime(),
      favoriteWords:
          List<String>.unmodifiable(instance.favoriteWords.map((e) => e)),
    );

extension $SousChefProtoExtension on SousChef {
  GSousChef toProto() => _$SousChefToProto(this);
  String toJson() => _$SousChefToProto(this).writeToJson();
  static SousChef fromProto(GSousChef proto) => _$SousChefFromProto(proto);
  static SousChef fromJson(String json) =>
      _$SousChefFromProto(GSousChef.fromJson(json));
}

extension $GSousChefProtoExtension on GSousChef {
  SousChef toSousChef() => _$SousChefFromProto(this);
}

class $KnifeMasterProtoMapper
    implements ProtoMapper<KnifeMaster, GKnifeMaster> {
  const $KnifeMasterProtoMapper();

  @override
  KnifeMaster fromProto(GKnifeMaster proto) => _$KnifeMasterFromProto(proto);
  @override
  GKnifeMaster toProto(KnifeMaster entity) => _$KnifeMasterToProto(entity);
  KnifeMaster fromJson(String json) =>
      _$KnifeMasterFromProto(GKnifeMaster.fromJson(json));
  String toJson(KnifeMaster entity) =>
      _$KnifeMasterToProto(entity).writeToJson();
  String toBase64Proto(KnifeMaster entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  KnifeMaster fromBase64Proto(String base64Proto) => _$KnifeMasterFromProto(
      GKnifeMaster.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GKnifeMaster _$KnifeMasterToProto(KnifeMaster instance) {
  var proto = GKnifeMaster();

  if (instance.favoriteRecipe != null) {
    proto.favoriteRecipe =
        const $RecipeProtoMapper().toProto(instance.favoriteRecipe!);
  }
  proto.favoriteRecipeHasValue = instance.favoriteRecipe != null;

  proto.favoriteApplianceType =
      GApplianceType.valueOf(instance.favoriteApplianceType.index)!;
  proto.favoriteWords.addAll(instance.favoriteWords);

  proto.birthdate =
      $wellknown_timestamp.Timestamp.fromDateTime(instance.birthdate);
  if (instance.shelfLife != null) {
    proto.shelfLife = $wellknown_duration.Duration(
        seconds: Int64(instance.shelfLife!.inSeconds),
        nanos: (instance.shelfLife!.inMicroseconds -
                instance.shelfLife!.inSeconds * 1000000) *
            1000);
  }
  proto.shelfLifeHasValue = instance.shelfLife != null;

  proto.favoriteKnife =
      const $KnifeProtoMapper().toProto(instance.favoriteKnife);

  return proto;
}

KnifeMaster _$KnifeMasterFromProto(GKnifeMaster instance) => KnifeMaster(
      favoriteKnife:
          const $KnifeProtoMapper().fromProto(instance.favoriteKnife),
      favoriteApplianceType:
          ApplianceType.values[instance.favoriteApplianceType.value],
      birthdate: instance.birthdate.toDateTime(),
    );

extension $KnifeMasterProtoExtension on KnifeMaster {
  GKnifeMaster toProto() => _$KnifeMasterToProto(this);
  String toJson() => _$KnifeMasterToProto(this).writeToJson();
  static KnifeMaster fromProto(GKnifeMaster proto) =>
      _$KnifeMasterFromProto(proto);
  static KnifeMaster fromJson(String json) =>
      _$KnifeMasterFromProto(GKnifeMaster.fromJson(json));
}

extension $GKnifeMasterProtoExtension on GKnifeMaster {
  KnifeMaster toKnifeMaster() => _$KnifeMasterFromProto(this);
}

class $InventoryProtoMapper implements ProtoMapper<Inventory, GInventory> {
  const $InventoryProtoMapper();

  @override
  Inventory fromProto(GInventory proto) => _$InventoryFromProto(proto);
  @override
  GInventory toProto(Inventory entity) => _$InventoryToProto(entity);
  Inventory fromJson(String json) =>
      _$InventoryFromProto(GInventory.fromJson(json));
  String toJson(Inventory entity) => _$InventoryToProto(entity).writeToJson();
  String toBase64Proto(Inventory entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Inventory fromBase64Proto(String base64Proto) => _$InventoryFromProto(
      GInventory.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GInventory _$InventoryToProto(Inventory instance) {
  var proto = GInventory();

  proto.numberOfThings
      .addAll(instance.numberOfThings.map((k, v) => MapEntry(k, v)));

  proto.recipesByName.addAll(instance.recipesByName
      .map((k, v) => MapEntry(k, const $RecipeProtoMapper().toProto(v))));

  if (instance.timeSpan != null) {
    proto.timeSpan = $wellknown_duration.Duration(
        seconds: Int64(instance.timeSpan!.inSeconds),
        nanos: (instance.timeSpan!.inMicroseconds -
                instance.timeSpan!.inSeconds * 1000000) *
            1000);
  }
  proto.timeSpanHasValue = instance.timeSpan != null;

  return proto;
}

Inventory _$InventoryFromProto(GInventory instance) => Inventory(
      numberOfThings: instance.numberOfThings.map((k, v) => MapEntry(k, v)),
      recipesByName: instance.recipesByName
          .map((k, v) => MapEntry(k, const $RecipeProtoMapper().fromProto(v))),
      timeSpan: (instance.timeSpanHasValue
          ? (Duration(
              seconds: instance.timeSpan.seconds.toInt(),
              microseconds: (instance.timeSpan.nanos ~/ 1000).toInt()))
          : null),
    );

extension $InventoryProtoExtension on Inventory {
  GInventory toProto() => _$InventoryToProto(this);
  String toJson() => _$InventoryToProto(this).writeToJson();
  static Inventory fromProto(GInventory proto) => _$InventoryFromProto(proto);
  static Inventory fromJson(String json) =>
      _$InventoryFromProto(GInventory.fromJson(json));
}

extension $GInventoryProtoExtension on GInventory {
  Inventory toInventory() => _$InventoryFromProto(this);
}

class $PrecisionSubjectProtoMapper
    implements ProtoMapper<PrecisionSubject, GPrecisionSubject> {
  const $PrecisionSubjectProtoMapper();

  @override
  PrecisionSubject fromProto(GPrecisionSubject proto) =>
      _$PrecisionSubjectFromProto(proto);
  @override
  GPrecisionSubject toProto(PrecisionSubject entity) =>
      _$PrecisionSubjectToProto(entity);
  PrecisionSubject fromJson(String json) =>
      _$PrecisionSubjectFromProto(GPrecisionSubject.fromJson(json));
  String toJson(PrecisionSubject entity) =>
      _$PrecisionSubjectToProto(entity).writeToJson();
  String toBase64Proto(PrecisionSubject entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  PrecisionSubject fromBase64Proto(String base64Proto) =>
      _$PrecisionSubjectFromProto(
          GPrecisionSubject.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GPrecisionSubject _$PrecisionSubjectToProto(PrecisionSubject instance) {
  var proto = GPrecisionSubject();

  proto.dateProperty =
      $wellknown_timestamp.Timestamp.fromDateTime(instance.dateProperty);
  proto.durationProperty = $wellknown_duration.Duration(
      seconds: Int64(instance.durationProperty.inSeconds),
      nanos: (instance.durationProperty.inMicroseconds -
              instance.durationProperty.inSeconds * 1000000) *
          1000);

  return proto;
}

PrecisionSubject _$PrecisionSubjectFromProto(GPrecisionSubject instance) =>
    PrecisionSubject(
      dateProperty: instance.dateProperty.toDateTime(),
      durationProperty: Duration(
          seconds: instance.durationProperty.seconds.toInt(),
          microseconds: (instance.durationProperty.nanos ~/ 1000).toInt()),
    );

extension $PrecisionSubjectProtoExtension on PrecisionSubject {
  GPrecisionSubject toProto() => _$PrecisionSubjectToProto(this);
  String toJson() => _$PrecisionSubjectToProto(this).writeToJson();
  static PrecisionSubject fromProto(GPrecisionSubject proto) =>
      _$PrecisionSubjectFromProto(proto);
  static PrecisionSubject fromJson(String json) =>
      _$PrecisionSubjectFromProto(GPrecisionSubject.fromJson(json));
}

extension $GPrecisionSubjectProtoExtension on GPrecisionSubject {
  PrecisionSubject toPrecisionSubject() => _$PrecisionSubjectFromProto(this);
}

class $KnifeTypeProtoMapper implements ProtoMapper<KnifeType, GKnifeType> {
  const $KnifeTypeProtoMapper();

  @override
  KnifeType fromProto(GKnifeType proto) => KnifeType.values[proto.value];
  @override
  GKnifeType toProto(KnifeType entity) => GKnifeType.valueOf(entity.index)!;
}

extension $GKnifeTypeProtoExtension on GKnifeType {
  KnifeType toKnifeType() => const $KnifeTypeProtoMapper().fromProto(this);
}

class $ChefTypeProtoMapper implements ProtoMapper<ChefType, GChefType> {
  const $ChefTypeProtoMapper();

  @override
  ChefType fromProto(GChefType proto) => ChefType.values[proto.value];
  @override
  GChefType toProto(ChefType entity) => GChefType.valueOf(entity.index)!;
}

extension $GChefTypeProtoExtension on GChefType {
  ChefType toChefType() => const $ChefTypeProtoMapper().fromProto(this);
}