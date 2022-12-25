// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $PersonProtoMapper implements ProtoMapper<Person, GPerson> {
  const $PersonProtoMapper();

  @override
  Person fromProto(GPerson proto) => _$PersonFromProto(proto);
  @override
  GPerson toProto(Person entity) => _$PersonToProto(entity);
  Person fromJson(String json) => _$PersonFromProto(GPerson.fromJson(json));
  String toJson(Person entity) => _$PersonToProto(entity).writeToJson();
  String toBase64Proto(Person entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Person fromBase64Proto(String base64Proto) => _$PersonFromProto(
      GPerson.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GPerson _$PersonToProto(Person instance) {
  var proto = GPerson();

  proto.name2 = instance.name2;

  return proto;
}

Person _$PersonFromProto(GPerson instance) => Person(
      name2: instance.name2,
    );

extension $PersonProtoExtension on Person {
  GPerson toProto() => _$PersonToProto(this);
  String toJson() => _$PersonToProto(this).writeToJson();
  static Person fromProto(GPerson proto) => _$PersonFromProto(proto);
  static Person fromJson(String json) =>
      _$PersonFromProto(GPerson.fromJson(json));
}

extension $GPersonProtoExtension on GPerson {
  Person toPerson() => _$PersonFromProto(this);
}
