// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $RecipeProtoMapper implements ProtoMapper<Recipe, GRecipe> {
  const $RecipeProtoMapper();

  @override
  Recipe fromProto(GRecipe proto) => _$RecipeFromProto(proto);

  @override
  GRecipe toProto(Recipe entity) => _$RecipeToProto(entity);

  GRecipe toFieldsOfProto(Recipe entity) => _$RecipeToProto(entity);

  Recipe fromJson(String json) => _$RecipeFromProto(GRecipe.fromJson(json));
  String toJson(Recipe entity) => _$RecipeToProto(entity).writeToJson();

  String toBase64Proto(Recipe entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Recipe fromBase64Proto(String base64Proto) =>
      GRecipe.fromJson(utf8.decode(base64Decode(base64Proto))).toRecipe();
}

GRecipe _$RecipeToProto(Recipe instance) {
  var proto = GRecipe();

  proto.title = instance.title;
  if (instance.description != null) {
    proto.description = StringValue(value: instance.description);
  }

  proto.category = const $CategoryProtoMapper().toProto(instance.category);
  proto.ingredients.addAll(instance.ingredients
      .map((e) => const $IngredientProtoMapper().toProto(e)));

  proto.publishDate = Int64(instance.publishDate.microsecondsSinceEpoch);
  if (instance.expiryDate != null) {
    proto.expiryDate =
        Int64Value(value: Int64(instance.expiryDate!.microsecondsSinceEpoch));
  }

  proto.preparationDuration =
      Int64(instance.preparationDuration.inMicroseconds);
  if (instance.totalDuration != null) {
    proto.totalDuration =
        Int64Value(value: Int64(instance.totalDuration!.inMicroseconds));
  }

  proto.isPublished = instance.isPublished;
  if (instance.requiresRobot != null) {
    proto.requiresRobot = BoolValue(value: instance.requiresRobot);
  }

  if (instance.grossWeight != null) {
    proto.grossWeight = DoubleValue(value: instance.grossWeight);
  }

  if (instance.netWeight != null) {
    proto.netWeight = DoubleValue(value: instance.netWeight);
  }

  proto.mainApplianceType =
      GApplianceType.valueOf(instance.mainApplianceType.index)!;
  if (instance.secondaryApplianceType != null) {
    proto.secondaryApplianceType = GApplianceType_Message(
        value: GApplianceType.valueOf(instance.secondaryApplianceType!.index)!);
  }

  proto.tags.addAll(instance.tags);

  proto.extraTags.addAll(instance.extraTags ?? []);

  return proto;
}

Recipe _$RecipeFromProto(GRecipe proto) {
  return Recipe(
    title: proto.title,
    category: const $CategoryProtoMapper().fromProto(proto.category),
    ingredients: List<Ingredient>.unmodifiable(proto.ingredients
        .map((e) => const $IngredientProtoMapper().fromProto(e))),
    publishDate: DateTime.fromMicrosecondsSinceEpoch(proto.publishDate.toInt()),
    preparationDuration:
        Duration(microseconds: proto.preparationDuration.toInt()),
    isPublished: proto.isPublished,
    mainApplianceType: ApplianceType.values[proto.mainApplianceType.value],
    tags: List<String>.unmodifiable(proto.tags.map((e) => e)),
    grossWeight:
        (proto.grossWeight.hasValue() ? proto.grossWeight.value : null),
    description:
        (proto.description.hasValue() ? proto.description.value : null),
    expiryDate: (proto.hasExpiryDate()
        ? DateTime.fromMicrosecondsSinceEpoch(proto.expiryDate.value.toInt())
        : null),
    totalDuration: (proto.hasTotalDuration()
        ? Duration(microseconds: proto.totalDuration.value.toInt())
        : null),
    requiresRobot:
        (proto.requiresRobot.hasValue() ? proto.requiresRobot.value : null),
    secondaryApplianceType: (proto.hasSecondaryApplianceType()
        ? (ApplianceType.values[proto.secondaryApplianceType.value.value])
        : null),
    extraTags: List<String>.unmodifiable(proto.extraTags.map((e) => e)),
    netWeight: (proto.netWeight.hasValue() ? proto.netWeight.value : null),
  );
}

extension $RecipeProtoExtension on Recipe {
  GRecipe toProto() => _$RecipeToProto(this);
  String toJson() => _$RecipeToProto(this).writeToJson();

  static Recipe fromProto(GRecipe proto) => _$RecipeFromProto(proto);
  static Recipe fromJson(String json) =>
      _$RecipeFromProto(GRecipe.fromJson(json));
}

extension $GRecipeProtoExtension on GRecipe {
  Recipe toRecipe() => _$RecipeFromProto(this);
}
