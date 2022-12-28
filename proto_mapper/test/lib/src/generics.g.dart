// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generics.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $ScheduleConstraintProtoMapper
    implements ProtoMapper<ScheduleConstraint, GScheduleConstraint> {
  const $ScheduleConstraintProtoMapper();

  @override
  ScheduleConstraint fromProto(GScheduleConstraint proto) =>
      _$ScheduleConstraintFromProto(proto);
  @override
  GScheduleConstraint toProto(ScheduleConstraint entity) =>
      _$ScheduleConstraintToProto(entity);
  ScheduleConstraint fromJson(String json) =>
      _$ScheduleConstraintFromProto(GScheduleConstraint.fromJson(json));
  String toJson(ScheduleConstraint entity) =>
      _$ScheduleConstraintToProto(entity).writeToJson();
  String toBase64Proto(ScheduleConstraint entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  ScheduleConstraint fromBase64Proto(String base64Proto) =>
      _$ScheduleConstraintFromProto(
          GScheduleConstraint.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GScheduleConstraint _$ScheduleConstraintToProto(ScheduleConstraint instance) {
  var uproto = GScheduleConstraint();
  if (instance is ContestConstraint) {
    uproto.contestConstraint =
        (const $ContestConstraintProtoMapper()).toProto(instance);
    return uproto;
  }

  throw UnimplementedError();
}

ScheduleConstraint _$ScheduleConstraintFromProto(
    GScheduleConstraint sInstance) {
  if (sInstance.hasContestConstraint()) {
    return sInstance.contestConstraint.toContestConstraint();
  }
  throw UnimplementedError();
}

extension $ScheduleConstraintProtoExtension on ScheduleConstraint {
  GScheduleConstraint toProto() => _$ScheduleConstraintToProto(this);
  String toJson() => _$ScheduleConstraintToProto(this).writeToJson();
  static ScheduleConstraint fromProto(GScheduleConstraint proto) =>
      _$ScheduleConstraintFromProto(proto);
  static ScheduleConstraint fromJson(String json) =>
      _$ScheduleConstraintFromProto(GScheduleConstraint.fromJson(json));
}

extension $GScheduleConstraintProtoExtension on GScheduleConstraint {
  ScheduleConstraint toScheduleConstraint() =>
      _$ScheduleConstraintFromProto(this);
}

class $ConstraintAddedProtoMapper
    implements ProtoMapper<ConstraintAdded, GConstraintAdded> {
  const $ConstraintAddedProtoMapper();

  @override
  ConstraintAdded fromProto(GConstraintAdded proto) =>
      _$ConstraintAddedFromProto(proto);
  @override
  GConstraintAdded toProto(ConstraintAdded entity) =>
      _$ConstraintAddedToProto(entity);
  ConstraintAdded fromJson(String json) =>
      _$ConstraintAddedFromProto(GConstraintAdded.fromJson(json));
  String toJson(ConstraintAdded entity) =>
      _$ConstraintAddedToProto(entity).writeToJson();
  String toBase64Proto(ConstraintAdded entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  ConstraintAdded fromBase64Proto(String base64Proto) =>
      _$ConstraintAddedFromProto(
          GConstraintAdded.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GConstraintAdded _$ConstraintAddedToProto(ConstraintAdded instance) {
  var proto = GConstraintAdded();

  return proto;
}

ConstraintAdded _$ConstraintAddedFromProto(GConstraintAdded instance) =>
    ConstraintAdded();

extension $ConstraintAddedProtoExtension on ConstraintAdded {
  GConstraintAdded toProto() => _$ConstraintAddedToProto(this);
  String toJson() => _$ConstraintAddedToProto(this).writeToJson();
  static ConstraintAdded fromProto(GConstraintAdded proto) =>
      _$ConstraintAddedFromProto(proto);
  static ConstraintAdded fromJson(String json) =>
      _$ConstraintAddedFromProto(GConstraintAdded.fromJson(json));
}

extension $GConstraintAddedProtoExtension on GConstraintAdded {
  ConstraintAdded toConstraintAdded() => _$ConstraintAddedFromProto(this);
}

class $ContestConstraintProtoMapper
    implements ProtoMapper<ContestConstraint, GContestConstraint> {
  const $ContestConstraintProtoMapper();

  @override
  ContestConstraint fromProto(GContestConstraint proto) =>
      _$ContestConstraintFromProto(proto);
  @override
  GContestConstraint toProto(ContestConstraint entity) =>
      _$ContestConstraintToProto(entity);
  ContestConstraint fromJson(String json) =>
      _$ContestConstraintFromProto(GContestConstraint.fromJson(json));
  String toJson(ContestConstraint entity) =>
      _$ContestConstraintToProto(entity).writeToJson();
  String toBase64Proto(ContestConstraint entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  ContestConstraint fromBase64Proto(String base64Proto) =>
      _$ContestConstraintFromProto(
          GContestConstraint.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GContestConstraint _$ContestConstraintToProto(ContestConstraint instance) {
  var proto = GContestConstraint();

  return proto;
}

ContestConstraint _$ContestConstraintFromProto(GContestConstraint instance) =>
    ContestConstraint();

extension $ContestConstraintProtoExtension on ContestConstraint {
  GContestConstraint toProto() => _$ContestConstraintToProto(this);
  String toJson() => _$ContestConstraintToProto(this).writeToJson();
  static ContestConstraint fromProto(GContestConstraint proto) =>
      _$ContestConstraintFromProto(proto);
  static ContestConstraint fromJson(String json) =>
      _$ContestConstraintFromProto(GContestConstraint.fromJson(json));
}

extension $GContestConstraintProtoExtension on GContestConstraint {
  ContestConstraint toContestConstraint() => _$ContestConstraintFromProto(this);
}
