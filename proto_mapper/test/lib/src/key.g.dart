// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $KeyProtoMapper implements ProtoMapper<Key, GKey> {
  const $KeyProtoMapper();

  @override
  Key fromProto(GKey proto) => _$KeyFromProto(proto);
  @override
  GKey toProto(Key entity) => _$KeyToProto(entity);
  Key fromJson(String json) => _$KeyFromProto(GKey.fromJson(json));
  String toJson(Key entity) => _$KeyToProto(entity).writeToJson();
  String toBase64Proto(Key entity) =>
      base64Encode(utf8.encode(toProto(entity).writeToJson()));
  Key fromBase64Proto(String base64Proto) =>
      _$KeyFromProto(GKey.fromJson(utf8.decode(base64Decode(base64Proto))));
}

GKey _$KeyToProto(Key instance) {
  var proto = GKey();

  proto.key = instance.key;

  return proto;
}

Key _$KeyFromProto(GKey instance) => Key(
      key: instance.key,
    );

extension $KeyProtoExtension on Key {
  GKey toProto() => _$KeyToProto(this);
  String toJson() => _$KeyToProto(this).writeToJson();
  static Key fromProto(GKey proto) => _$KeyFromProto(proto);
  static Key fromJson(String json) => _$KeyFromProto(GKey.fromJson(json));
}

extension $GKeyProtoExtension on GKey {
  Key toKey() => _$KeyFromProto(this);
}
