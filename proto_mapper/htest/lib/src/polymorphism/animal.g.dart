// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AnimalProtoMapper implements ProtoMapper<Animal, GAnimal> {
  const $AnimalProtoMapper();

  @override
  Animal fromProto(GAnimal proto) => _$AnimalFromProto(proto);
  @override
  GAnimal toProto(Animal entity) => _$AnimalToProto(entity);
  Animal fromJson(String json) => _$AnimalFromProto(GAnimal.fromJson(json));
  String toJson(Animal entity) => _$AnimalToProto(entity).writeToJson();
  String toBase64Proto(Animal entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Animal fromBase64Proto(String base64Proto) => _$AnimalFromProto(
      GAnimal.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GAnimal _$AnimalToProto(Animal instance) {
  var proto = GAnimal();

  proto.fieldsOfSuperClass = $BeingProtoMapper().toProto(instance).being;

  proto.height = instance.height;

  return proto;
}

Animal _$AnimalFromProto(GAnimal instance) => Animal(
      height: instance.height,
    );

extension $AnimalProtoExtension on Animal {
  GAnimal toProto() => _$AnimalToProto(this);
  String toJson() => _$AnimalToProto(this).writeToJson();
  static Animal fromProto(GAnimal proto) => _$AnimalFromProto(proto);
  static Animal fromJson(String json) =>
      _$AnimalFromProto(GAnimal.fromJson(json));
}

extension $GAnimalProtoExtension on GAnimal {
  Animal toAnimal() => _$AnimalFromProto(this);
}
