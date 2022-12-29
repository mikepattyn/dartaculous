// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $VehicleProtoMapper implements ProtoMapper<Vehicle, GVehicle> {
  const $VehicleProtoMapper();

  @override
  Vehicle fromProto(GVehicle proto) => _$VehicleFromProto(proto);

  @override
  GVehicle toProto(Vehicle entity) => _$VehicleToProto(entity);

  Vehicle fromJson(String json) => _$VehicleFromProto(GVehicle.fromJson(json));
  String toJson(Vehicle entity) => _$VehicleToProto(entity).writeToJson();

  String toBase64Proto(Vehicle entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  Vehicle fromBase64Proto(String base64Proto) =>
      GVehicle.fromJson(utf8.decode(base64Decode(base64Proto))).toVehicle();
}

GVehicle _$VehicleToProto(Vehicle instance) {
  var proto = GVehicle();

  return proto;
}

Vehicle _$VehicleFromProto(GVehicle instance) {
  return Vehicle();
}

extension $VehicleProtoExtension on Vehicle {
  GVehicle toProto() => _$VehicleToProto(this);
  String toJson() => _$VehicleToProto(this).writeToJson();

  static Vehicle fromProto(GVehicle proto) => _$VehicleFromProto(proto);
  static Vehicle fromJson(String json) =>
      _$VehicleFromProto(GVehicle.fromJson(json));
}

extension $GVehicleProtoExtension on GVehicle {
  Vehicle toVehicle() => _$VehicleFromProto(this);
}
