// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_host.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $ListsHostProtoMapper implements ProtoMapper<ListsHost, GListsHost> {
  const $ListsHostProtoMapper();

  @override
  ListsHost fromProto(GListsHost proto) => _$ListsHostFromProto(proto);

  @override
  GListsHost toProto(ListsHost entity) => _$ListsHostToProto(entity);

  GListsHost toFieldsOfProto(ListsHost entity) => _$ListsHostToProto(entity);

  ListsHost fromJson(String json) =>
      _$ListsHostFromProto(GListsHost.fromJson(json));
  String toJson(ListsHost entity) => _$ListsHostToProto(entity).writeToJson();

  String toBase64Proto(ListsHost entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  ListsHost fromBase64Proto(String base64Proto) =>
      GListsHost.fromJson(utf8.decode(base64Decode(base64Proto))).toListsHost();
}

GListsHost _$ListsHostToProto(ListsHost instance) {
  var proto = GListsHost();

  proto.vbools.addAll(instance.vbools);

  proto.nvbools.addAll(instance.nvbools ?? []);

  proto.vstrings.addAll(instance.vstrings);

  proto.nvstrings.addAll(instance.nvstrings ?? []);

  proto.vdurations.addAll(instance.vdurations.map((e) => GDuration(
      seconds: Int64(e.inSeconds),
      nanos: (e.inMicroseconds - e.inSeconds * 1000000) * 1000)));

  proto.nvdurations.addAll(instance.nvdurations?.map((e) => GDuration(
          seconds: Int64(e.inSeconds),
          nanos: (e.inMicroseconds - e.inSeconds * 1000000) * 1000)) ??
      []);

  proto.vdatetimes
      .addAll(instance.vdatetimes.map((e) => Timestamp.fromDateTime(e)));

  proto.nvdatetimes.addAll(
      instance.nvdatetimes?.map((e) => Timestamp.fromDateTime(e)) ?? []);

  proto.vdecimals.addAll(instance.vdecimals.map((e) => e.$toProtoBytes()));

  proto.nvdecimals
      .addAll(instance.nvdecimals?.map((e) => e.$toProtoBytes()) ?? []);

  proto.vints.addAll(instance.vints);

  proto.nvints.addAll(instance.nvints ?? []);

  proto.vdoubles.addAll(instance.vdoubles);

  proto.nvdoubles.addAll(instance.nvdoubles ?? []);

  proto.vapplianceTypes.addAll(instance.vapplianceTypes
      .map((e) => const $ApplianceTypeProtoMapper().toProto(e)));

  proto.nvapplianceTypes.addAll(instance.nvapplianceTypes
          ?.map((e) => const $ApplianceTypeProtoMapper().toProto(e)) ??
      []);

  return proto;
}

ListsHost _$ListsHostFromProto(GListsHost proto) {
  return ListsHost(
    vbools: List<bool>.unmodifiable(proto.vbools.map((e) => e)),
    vstrings: List<String>.unmodifiable(proto.vstrings.map((e) => e)),
    vdurations: List<Duration>.unmodifiable(proto.vdurations.map((e) =>
        Duration(
            seconds: e.seconds.toInt(),
            microseconds: (e.nanos ~/ 1000).toInt()))),
    vdatetimes: List<DateTime>.unmodifiable(
        proto.vdatetimes.map((e) => e.toDateTime())),
    vdecimals: List<Decimal>.unmodifiable(
        proto.vdecimals.map((e) => $DecimalProtoExtension.$fromProtoBytes(e))),
    vints: List<int>.unmodifiable(proto.vints.map((e) => e)),
    vdoubles: List<double>.unmodifiable(proto.vdoubles.map((e) => e)),
    vapplianceTypes: List<ApplianceType>.unmodifiable(proto.vapplianceTypes
        .map((e) => const $ApplianceTypeProtoMapper().fromProto(e))),
    nvbools: List<bool>.unmodifiable(proto.nvbools.map((e) => e)),
    nvstrings: List<String>.unmodifiable(proto.nvstrings.map((e) => e)),
    nvdurations: List<Duration>.unmodifiable(proto.nvdurations.map((e) =>
        Duration(
            seconds: e.seconds.toInt(),
            microseconds: (e.nanos ~/ 1000).toInt()))),
    nvdatetimes: List<DateTime>.unmodifiable(
        proto.nvdatetimes.map((e) => e.toDateTime())),
    nvdecimals: List<Decimal>.unmodifiable(
        proto.nvdecimals.map((e) => $DecimalProtoExtension.$fromProtoBytes(e))),
    nvints: List<int>.unmodifiable(proto.nvints.map((e) => e)),
    nvdoubles: List<double>.unmodifiable(proto.nvdoubles.map((e) => e)),
    nvapplianceTypes: List<ApplianceType>.unmodifiable(proto.nvapplianceTypes
        .map((e) => const $ApplianceTypeProtoMapper().fromProto(e))),
  );
}

extension $ListsHostProtoExtension on ListsHost {
  GListsHost toProto() => _$ListsHostToProto(this);
  String toJson() => _$ListsHostToProto(this).writeToJson();

  static ListsHost fromProto(GListsHost proto) => _$ListsHostFromProto(proto);
  static ListsHost fromJson(String json) =>
      _$ListsHostFromProto(GListsHost.fromJson(json));
}

extension $GListsHostProtoExtension on GListsHost {
  ListsHost toListsHost() => _$ListsHostFromProto(this);
}
