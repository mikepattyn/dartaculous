// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'being.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BeingProtoMapper implements ProtoMapper<Being, GBeing> {
  const $BeingProtoMapper();

  @override
  Being fromProto(GBeing proto) => _$BeingFromProto(proto);
  @override
  GBeing toProto(Being entity) => _$BeingToProto(entity);
  Being fromJson(String json) => _$BeingFromProto(GBeing.fromJson(json));
  String toJson(Being entity) => _$BeingToProto(entity).writeToJson();
  String toBase64Proto(Being entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Being fromBase64Proto(String base64Proto) =>
      _$BeingFromProto(GBeing.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GBeing _$BeingToProto(Being instance) {
  var uproto = GBeing();
  if (instance is Animal) {
    uproto.animal = (const $AnimalProtoMapper()).toProto(instance);
    return uproto;
  }

  throw UnimplementedError();
}

Being _$BeingFromProto(GBeing sInstance) {
  if (sInstance.hasAnimal()) {
    return sInstance.animal.toAnimal();
  }
  throw UnimplementedError();
}

extension $BeingProtoExtension on Being {
  GBeing toProto() => _$BeingToProto(this);
  String toJson() => _$BeingToProto(this).writeToJson();
  static Being fromProto(GBeing proto) => _$BeingFromProto(proto);
  static Being fromJson(String json) => _$BeingFromProto(GBeing.fromJson(json));
}

extension $GBeingProtoExtension on GBeing {
  Being toBeing() => _$BeingFromProto(this);
}
