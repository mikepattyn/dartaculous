// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $IngredientProtoMapper implements ProtoMapper<Ingredient, GIngredient> {
  const $IngredientProtoMapper();

  @override
  Ingredient fromProto(GIngredient proto) => _$IngredientFromProto(proto);

  @override
  GIngredient toProto(Ingredient entity) => _$IngredientToProto(entity);

  GIngredient toFieldsOfProto(Ingredient entity) => _$IngredientToProto(entity);

  Ingredient fromJson(String json) =>
      _$IngredientFromProto(GIngredient.fromJson(json));
  String toJson(Ingredient entity) => _$IngredientToProto(entity).writeToJson();

  String toBase64Proto(Ingredient entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Ingredient fromBase64Proto(String base64Proto) =>
      GIngredient.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toIngredient();
}

GIngredient _$IngredientToProto(Ingredient instance) {
  var proto = GIngredient();

  proto.description = instance.description;
  proto.quantity = instance.quantity;
  if (instance.batchSize != null) {
    proto.batchSize = instance.batchSize!;
  }

  proto.estimatedPreparationTime =
      Int64(instance.estimatedPreparationTime.inMicroseconds);
  proto.expiryDate = Int64(instance.expiryDate.microsecondsSinceEpoch);

  return proto;
}

Ingredient _$IngredientFromProto(GIngredient proto) {
  return Ingredient(
    description: proto.description,
    quantity: proto.quantity,
    batchSize: (proto.hasBatchSize() ? proto.batchSize : null),
    estimatedPreparationTime:
        Duration(microseconds: proto.estimatedPreparationTime.toInt()),
    expiryDate: DateTime.fromMicrosecondsSinceEpoch(proto.expiryDate.toInt()),
  );
}

extension $IngredientProtoExtension on Ingredient {
  GIngredient toProto() => _$IngredientToProto(this);
  String toJson() => _$IngredientToProto(this).writeToJson();

  static Ingredient fromProto(GIngredient proto) =>
      _$IngredientFromProto(proto);
  static Ingredient fromJson(String json) =>
      _$IngredientFromProto(GIngredient.fromJson(json));
}

extension $GIngredientProtoExtension on GIngredient {
  Ingredient toIngredient() => _$IngredientFromProto(this);
}
