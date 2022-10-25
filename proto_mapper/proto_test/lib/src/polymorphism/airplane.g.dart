// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airplane.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AirplaneProtoMapper implements ProtoMapper<Airplane, GAirplane> {
  const $AirplaneProtoMapper();

  @override
  Airplane fromProto(GAirplane proto) => _$AirplaneFromProto(proto);
  @override
  GAirplane toProto(Airplane entity) => _$AirplaneToProto(entity);
  Airplane fromJson(String json) =>
      _$AirplaneFromProto(GAirplane.fromJson(json));
  String toJson(Airplane entity) => _$AirplaneToProto(entity).writeToJson();
  String toBase64Proto(Airplane entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Airplane fromBase64Proto(String base64Proto) => _$AirplaneFromProto(
      GAirplane.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GAirplane _$AirplaneToProto(Airplane instance) {
  var proto = GAirplane();

  proto.weight = instance.weight;
  proto.serviceCeiling = instance.serviceCeiling;
  proto.wingspan = instance.wingspan;
  proto.key = instance.key;

  return proto;
}

Airplane _$AirplaneFromProto(GAirplane instance) => Airplane(
      weight: instance.weight,
      serviceCeiling: instance.serviceCeiling,
      wingspan: instance.wingspan,
      key: instance.key,
    );

extension $AirplaneProtoExtension on Airplane {
  GAirplane toProto() => _$AirplaneToProto(this);
  String toJson() => _$AirplaneToProto(this).writeToJson();
  static Airplane fromProto(GAirplane proto) => _$AirplaneFromProto(proto);
  static Airplane fromJson(String json) =>
      _$AirplaneFromProto(GAirplane.fromJson(json));
}

extension $GAirplaneProtoExtension on GAirplane {
  Airplane toAirplane() => _$AirplaneFromProto(this);
}
