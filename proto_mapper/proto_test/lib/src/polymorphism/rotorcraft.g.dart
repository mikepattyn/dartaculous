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
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Rotorcraft fromBase64Proto(String base64Proto) => _$RotorcraftFromProto(
      GRotorcraft.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GRotorcraft _$RotorcraftToProto(Rotorcraft instance) {
  var uproto = GRotorcraft();
  if (instance is Helicopter) {
    uproto.helicopter = (const $HelicopterProtoMapper()).toProto(instance);
    return uproto;
  }

  if (instance is Gyrocopter) {
    uproto.gyrocopter = (const $GyrocopterProtoMapper()).toProto(instance);
    return uproto;
  }

  throw UnimplementedError();
}

Rotorcraft _$RotorcraftFromProto(GRotorcraft sInstance) {
  if (sInstance.hasHelicopter()) {
    return sInstance.helicopter.toHelicopter();
  }

  if (sInstance.hasGyrocopter()) {
    return sInstance.gyrocopter.toGyrocopter();
  }
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
