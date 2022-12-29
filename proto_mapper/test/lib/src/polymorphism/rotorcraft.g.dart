// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotorcraft.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $RotorcraftProtoMapper implements ProtoMapper<Rotorcraft, GRotorcraft> {
  const $RotorcraftProtoMapper();

  @override
  Rotorcraft fromProto(GRotorcraft proto) => _$RotorcraftFromProto(proto);

  @override
  GRotorcraft toProto(Rotorcraft entity) => _$RotorcraftToProto(entity);

  Rotorcraft fromJson(String json) =>
      _$RotorcraftFromProto(GRotorcraft.fromJson(json));
  String toJson(Rotorcraft entity) => _$RotorcraftToProto(entity).writeToJson();

  String toBase64Proto(Rotorcraft entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Rotorcraft fromBase64Proto(String base64Proto) =>
      GRotorcraft.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toRotorcraft();
}

GRotorcraft _$RotorcraftToProto(Rotorcraft instance) {
  throw UnimplementedError();
}

Rotorcraft _$RotorcraftFromProto(GRotorcraft instance) {
  throw UnimplementedError();
}

extension $RotorcraftProtoExtension on Rotorcraft {
  GRotorcraft toProto() => _$RotorcraftToProto(this);
  String toJson() => _$RotorcraftToProto(this).writeToJson();

  static Rotorcraft fromProto(GRotorcraft proto) =>
      _$RotorcraftFromProto(proto);
  static Rotorcraft fromJson(String json) =>
      _$RotorcraftFromProto(GRotorcraft.fromJson(json));
}

extension $GRotorcraftProtoExtension on GRotorcraft {
  Rotorcraft toRotorcraft() => _$RotorcraftFromProto(this);
}
