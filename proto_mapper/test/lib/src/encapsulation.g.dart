// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encapsulation.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $EncapsulatedFieldsClassProtoMapper
    implements ProtoMapper<EncapsulatedFieldsClass, GEncapsulatedFieldsClass> {
  const $EncapsulatedFieldsClassProtoMapper();

  @override
  EncapsulatedFieldsClass fromProto(GEncapsulatedFieldsClass proto) =>
      _$EncapsulatedFieldsClassFromProto(proto);
  @override
  GEncapsulatedFieldsClass toProto(EncapsulatedFieldsClass entity) =>
      _$EncapsulatedFieldsClassToProto(entity);
  EncapsulatedFieldsClass fromJson(String json) =>
      _$EncapsulatedFieldsClassFromProto(
          GEncapsulatedFieldsClass.fromJson(json));
  String toJson(EncapsulatedFieldsClass entity) =>
      _$EncapsulatedFieldsClassToProto(entity).writeToJson();
  String toBase64Proto(EncapsulatedFieldsClass entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  EncapsulatedFieldsClass fromBase64Proto(String base64Proto) =>
      _$EncapsulatedFieldsClassFromProto(GEncapsulatedFieldsClass.fromJson(
          utf8.decode(base64Decode(base64Proto))));
}

GEncapsulatedFieldsClass _$EncapsulatedFieldsClassToProto(
    EncapsulatedFieldsClass instance) {
  var proto = GEncapsulatedFieldsClass();

  proto.finalString = instance.finalString;

  return proto;
}

EncapsulatedFieldsClass _$EncapsulatedFieldsClassFromProto(
        GEncapsulatedFieldsClass instance) =>
    EncapsulatedFieldsClass(
      finalString: instance.finalString,
    );

extension $EncapsulatedFieldsClassProtoExtension on EncapsulatedFieldsClass {
  GEncapsulatedFieldsClass toProto() => _$EncapsulatedFieldsClassToProto(this);
  String toJson() => _$EncapsulatedFieldsClassToProto(this).writeToJson();
  static EncapsulatedFieldsClass fromProto(GEncapsulatedFieldsClass proto) =>
      _$EncapsulatedFieldsClassFromProto(proto);
  static EncapsulatedFieldsClass fromJson(String json) =>
      _$EncapsulatedFieldsClassFromProto(
          GEncapsulatedFieldsClass.fromJson(json));
}

extension $GEncapsulatedFieldsClassProtoExtension on GEncapsulatedFieldsClass {
  EncapsulatedFieldsClass toEncapsulatedFieldsClass() =>
      _$EncapsulatedFieldsClassFromProto(this);
}
