// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balloon.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $BalloonProtoMapper implements ProtoMapper<Balloon, GBalloon> {
  const $BalloonProtoMapper();

  @override
  Balloon fromProto(GBalloon proto) => _$BalloonFromProto(proto);

  @override
  GBalloon toProto(Balloon entity) => _$BalloonToProto(entity);

  Balloon fromJson(String json) => _$BalloonFromProto(GBalloon.fromJson(json));
  String toJson(Balloon entity) => _$BalloonToProto(entity).writeToJson();

  String toBase64Proto(Balloon entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Balloon fromBase64Proto(String base64Proto) =>
      GBalloon.fromJson(utf8.decode(base64Decode(base64Proto))).toBalloon();
}

GBalloon _$BalloonToProto(Balloon instance) {
  var proto = GBalloon();

  proto.weight = instance.weight;
  proto.key = instance.key;
  proto.serviceCeiling = instance.serviceCeiling;

  return proto;
}

Balloon _$BalloonFromProto(GBalloon instance) => Balloon(
      weight: instance.weight,
      key: instance.key,
      serviceCeiling: instance.serviceCeiling,
    );

extension $BalloonProtoExtension on Balloon {
  GBalloon toProto() => _$BalloonToProto(this);
  String toJson() => _$BalloonToProto(this).writeToJson();

  static Balloon fromProto(GBalloon proto) => _$BalloonFromProto(proto);
  static Balloon fromJson(String json) =>
      _$BalloonFromProto(GBalloon.fromJson(json));
}

extension $GBalloonProtoExtension on GBalloon {
  Balloon toBalloon() => _$BalloonFromProto(this);
}
