// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AircraftProtoMapper implements ProtoMapper<Aircraft, GAircraft> {
  const $AircraftProtoMapper();

  @override
  Aircraft fromProto(GAircraft proto) => _$AircraftFromProto(proto);

  @override
  GAircraft toProto(Aircraft entity) => _$AircraftToProto(entity);

  Aircraft fromJson(String json) =>
      _$AircraftFromProto(GAircraft.fromJson(json));
  String toJson(Aircraft entity) => _$AircraftToProto(entity).writeToJson();

  String toBase64Proto(Aircraft entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Aircraft fromBase64Proto(String base64Proto) =>
      GAircraft.fromJson(utf8.decode(base64Decode(base64Proto))).toAircraft();
}

GAircraft _$AircraftToProto(Aircraft instance) {
  var uproto = GAircraft();

  if (instance is Airplane) {
    uproto.airplane = (const $AirplaneProtoMapper()).toProto(instance);
    return uproto;
  }

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

Aircraft _$AircraftFromProto(GAircraft sInstance) {
  if (sInstance.hasAirplane()) {
    return sInstance.airplane.toAirplane();
  }

  if (sInstance.hasHelicopter()) {
    return sInstance.helicopter.toHelicopter();
  }

  if (sInstance.hasGyrocopter()) {
    return sInstance.gyrocopter.toGyrocopter();
  }

  throw UnimplementedError();
}

extension $AircraftProtoExtension on Aircraft {
  GAircraft toProto() => _$AircraftToProto(this);
  String toJson() => _$AircraftToProto(this).writeToJson();

  static Aircraft fromProto(GAircraft proto) => _$AircraftFromProto(proto);
  static Aircraft fromJson(String json) =>
      _$AircraftFromProto(GAircraft.fromJson(json));
}

extension $GAircraftProtoExtension on GAircraft {
  Aircraft toAircraft() => _$AircraftFromProto(this);
}
