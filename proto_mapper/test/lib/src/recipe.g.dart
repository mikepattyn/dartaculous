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

  proto.publishDate =
      $wellknown_timestamp.Timestamp.fromDateTime(instance.publishDate);
  if (instance.expiryDate != null) {
    proto.expiryDate =
        $wellknown_timestamp.Timestamp.fromDateTime(instance.expiryDate!);
  }

  proto.preparationDuration = $wellknown_duration.Duration(
      seconds: Int64(instance.preparationDuration.inSeconds),
      nanos: (instance.preparationDuration.inMicroseconds -
              instance.preparationDuration.inSeconds * 1000000) *
          1000);
  if (instance.totalDuration != null) {
    proto.totalDuration = $wellknown_duration.Duration(
        seconds: Int64(instance.totalDuration!.inSeconds),
        nanos: (instance.totalDuration!.inMicroseconds -
                instance.totalDuration!.inSeconds * 1000000) *
            1000);
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

Recipe _$RecipeFromProto(GRecipe instance) {
  return Recipe(
    title: instance.title,
    category: const $CategoryProtoMapper().fromProto(instance.category),
    ingredients: List<Ingredient>.unmodifiable(instance.ingredients
        .map((e) => const $IngredientProtoMapper().fromProto(e))),
    publishDate: instance.publishDate.toDateTime(),
    preparationDuration: Duration(
        seconds: instance.preparationDuration.seconds.toInt(),
        microseconds: (instance.preparationDuration.nanos ~/ 1000).toInt()),
    isPublished: instance.isPublished,
    mainApplianceType: ApplianceType.values[instance.mainApplianceType.value],
    tags: List<String>.unmodifiable(instance.tags.map((e) => e)),
    grossWeight:
        (instance.grossWeight.hasValue() ? instance.grossWeight.value : null),
    description:
        (instance.description.hasValue() ? instance.description.value : null),
    expiryDate:
        (instance.hasExpiryDate() ? (instance.expiryDate.toDateTime()) : null),
    totalDuration: (instance.hasTotalDuration()
        ? (Duration(
            seconds: instance.totalDuration.seconds.toInt(),
            microseconds: (instance.totalDuration.nanos ~/ 1000).toInt()))
        : null),
    requiresRobot: (instance.requiresRobot.hasValue()
        ? instance.requiresRobot.value
        : null),
    secondaryApplianceType: (instance.hasSecondaryApplianceType()
        ? (ApplianceType.values[instance.secondaryApplianceType.value.value])
        : null),
    extraTags: List<String>.unmodifiable(instance.extraTags.map((e) => e)),
    netWeight:
        (instance.netWeight.hasValue() ? instance.netWeight.value : null),
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
