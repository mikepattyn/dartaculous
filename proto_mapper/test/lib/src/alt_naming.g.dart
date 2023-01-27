// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alt_naming.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $AltNamingProtoMapper implements ProtoMapper<AltNaming, GAltNaming> {
  const $AltNamingProtoMapper();

  @override
  AltNaming fromProto(GAltNaming proto) => _$AltNamingFromProto(proto);

  @override
  GAltNaming toProto(AltNaming entity) => _$AltNamingToProto(entity);

  GAltNaming toFieldsOfProto(AltNaming entity) => _$AltNamingToProto(entity);

  AltNaming fromJson(String json) =>
      _$AltNamingFromProto(GAltNaming.fromJson(json));
  String toJson(AltNaming entity) => _$AltNamingToProto(entity).writeToJson();

  String toBase64Proto(AltNaming entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  AltNaming fromBase64Proto(String base64Proto) =>
      GAltNaming.fromJson(utf8.decode(base64Decode(base64Proto))).toAltNaming();
}

GAltNaming _$AltNamingToProto(AltNaming instance) {
  var proto = GAltNaming();

  proto.unconventionalName = instance.unconventionalName;
  if (instance.nUnconventionalName != null) {
    proto.nUnconventionalName =
        StringValue(value: instance.nUnconventionalName);
  }

  proto.unconventionalEnumName =
      GApplianceType.valueOf(instance.unconventionalEnumName.index)!;
  if (instance.nUnconventionalEnumName != null) {
    proto.nUnconventionalEnumName =
        GApplianceType.valueOf(instance.nUnconventionalEnumName!.index)!;
  }

  proto.unconventionalCategory =
      const $EmptyProtoMapper().toProto(instance.unconventionalClass);
  if (instance.nUnconventionalClass != null) {
    proto.nUnconventionalCategory =
        const $EmptyProtoMapper().toProto(instance.nUnconventionalClass!);
  }

  proto.unconventionalList.addAll(instance.unconventionalList
      .map((e) => const $IngredientProtoMapper().toProto(e)));

  proto.unconventionalDateTime =
      Timestamp.fromDateTime(instance.unconventionalDateTime);
  if (instance.nUnconventionalDateTime != null) {
    proto.nUnconventionalDateTime =
        Timestamp.fromDateTime(instance.nUnconventionalDateTime!);
  }

  proto.unconventionalDuration = GDuration(
      seconds: Int64(instance.unconventionalDuration.inSeconds),
      nanos: (instance.unconventionalDuration.inMicroseconds -
              instance.unconventionalDuration.inSeconds * 1000000) *
          1000);
  if (instance.nUnconventionalDuration != null) {
    proto.nUnconventionalDuration = GDuration(
        seconds: Int64(instance.nUnconventionalDuration!.inSeconds),
        nanos: (instance.nUnconventionalDuration!.inMicroseconds -
                instance.nUnconventionalDuration!.inSeconds * 1000000) *
            1000);
  }

  return proto;
}

AltNaming _$AltNamingFromProto(GAltNaming proto) {
  return AltNaming(
    unconventionalName: proto.unconventionalName,
    nUnconventionalName: (proto.nUnconventionalName.hasValue()
        ? proto.nUnconventionalName.value
        : null),
    unconventionalEnumName:
        ApplianceType.values[proto.unconventionalEnumName.value],
    nUnconventionalEnumName: (proto.hasNUnconventionalEnumName()
        ? (ApplianceType.values[proto.nUnconventionalEnumName.value])
        : null),
    unconventionalClass:
        const $EmptyProtoMapper().fromProto(proto.unconventionalCategory),
    nUnconventionalClass: (proto.hasNUnconventionalCategory()
        ? const $EmptyProtoMapper().fromProto(proto.nUnconventionalCategory)
        : null),
    unconventionalList: List<Ingredient>.unmodifiable(proto.unconventionalList
        .map((e) => const $IngredientProtoMapper().fromProto(e))),
    unconventionalDateTime: proto.unconventionalDateTime.toDateTime(),
    nUnconventionalDateTime: (proto.hasNUnconventionalDateTime()
        ? (proto.nUnconventionalDateTime.toDateTime())
        : null),
    unconventionalDuration: Duration(
        seconds: proto.unconventionalDuration.seconds.toInt(),
        microseconds: (proto.unconventionalDuration.nanos ~/ 1000).toInt()),
    nUnconventionalDuration: (proto.hasNUnconventionalDuration()
        ? (Duration(
            seconds: proto.nUnconventionalDuration.seconds.toInt(),
            microseconds:
                (proto.nUnconventionalDuration.nanos ~/ 1000).toInt()))
        : null),
  );
}

extension $AltNamingProtoExtension on AltNaming {
  GAltNaming toProto() => _$AltNamingToProto(this);
  String toJson() => _$AltNamingToProto(this).writeToJson();

  static AltNaming fromProto(GAltNaming proto) => _$AltNamingFromProto(proto);
  static AltNaming fromJson(String json) =>
      _$AltNamingFromProto(GAltNaming.fromJson(json));
}

extension $GAltNamingProtoExtension on GAltNaming {
  AltNaming toAltNaming() => _$AltNamingFromProto(this);
}
