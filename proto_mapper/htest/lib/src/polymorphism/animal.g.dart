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

  proto.height = instance.height;
  proto.fieldsOfSuperClass = $BeingProtoMapper().toProto(instance);

  return proto;
}

Animal _$AnimalFromProto(GAnimal instance) {
  final $super1 = instance.fieldsOfSuperClass;

  return Animal(
    height: instance.height,
    mass: $super1.mass,
  );
}

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
