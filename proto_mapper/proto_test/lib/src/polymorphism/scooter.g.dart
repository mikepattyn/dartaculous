// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scooter.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $ScooterProtoMapper implements ProtoMapper<Scooter, GScooter> {
  const $ScooterProtoMapper();

  @override
  Scooter fromProto(GScooter proto) => _$ScooterFromProto(proto);
  @override
  GScooter toProto(Scooter entity) => _$ScooterToProto(entity);
  Scooter fromJson(String json) => _$ScooterFromProto(GScooter.fromJson(json));
  String toJson(Scooter entity) => _$ScooterToProto(entity).writeToJson();
  String toBase64Proto(Scooter entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Scooter fromBase64Proto(String base64Proto) => _$ScooterFromProto(
      GScooter.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GScooter _$ScooterToProto(Scooter instance) {
  var proto = GScooter();

  proto.weight = instance.weight;
  proto.key = instance.key;

  return proto;
}

Scooter _$ScooterFromProto(GScooter instance) => Scooter(
      weight: instance.weight,
      key: instance.key,
    );

extension $ScooterProtoExtension on Scooter {
  GScooter toProto() => _$ScooterToProto(this);
  String toJson() => _$ScooterToProto(this).writeToJson();
  static Scooter fromProto(GScooter proto) => _$ScooterFromProto(proto);
  static Scooter fromJson(String json) =>
      _$ScooterFromProto(GScooter.fromJson(json));
}

extension $GScooterProtoExtension on GScooter {
  Scooter toScooter() => _$ScooterFromProto(this);
}
