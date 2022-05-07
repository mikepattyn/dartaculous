// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helicopter.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $HelicopterProtoMapper implements ProtoMapper<Helicopter, GHelicopter> {
  const $HelicopterProtoMapper();

  @override
  Helicopter fromProto(GHelicopter proto) => _$HelicopterFromProto(proto);

  @override
  GHelicopter toProto(Helicopter entity) => _$HelicopterToProto(entity);

  Helicopter fromJson(String json) =>
      _$HelicopterFromProto(GHelicopter.fromJson(json));
  String toJson(Helicopter entity) => _$HelicopterToProto(entity).writeToJson();

  String toBase64Proto(Helicopter entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Helicopter fromBase64Proto(String base64Proto) =>
      GHelicopter.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toHelicopter();
}

GHelicopter _$HelicopterToProto(Helicopter instance) {
  var proto = GHelicopter();

  proto.weight = instance.weight;
  proto.serviceCeiling = instance.serviceCeiling;
  proto.key = instance.key;

  return proto;
}

Helicopter _$HelicopterFromProto(GHelicopter instance) => Helicopter(
      weight: instance.weight,
      serviceCeiling: instance.serviceCeiling,
      key: instance.key,
    );

extension $HelicopterProtoExtension on Helicopter {
  GHelicopter toProto() => _$HelicopterToProto(this);
  String toJson() => _$HelicopterToProto(this).writeToJson();

  static Helicopter fromProto(GHelicopter proto) =>
      _$HelicopterFromProto(proto);
  static Helicopter fromJson(String json) =>
      _$HelicopterFromProto(GHelicopter.fromJson(json));
}

extension $GHelicopterProtoExtension on GHelicopter {
  Helicopter toHelicopter() => _$HelicopterFromProto(this);
}
