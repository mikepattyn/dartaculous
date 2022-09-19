// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_update_user.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $FirebaseUpdateUserProtoMapper
    implements ProtoMapper<FirebaseUpdateUser, GFirebaseUpdateUser> {
  const $FirebaseUpdateUserProtoMapper();

  @override
  FirebaseUpdateUser fromProto(GFirebaseUpdateUser proto) =>
      _$FirebaseUpdateUserFromProto(proto);

  @override
  GFirebaseUpdateUser toProto(FirebaseUpdateUser entity) =>
      _$FirebaseUpdateUserToProto(entity);

  FirebaseUpdateUser fromJson(String json) =>
      _$FirebaseUpdateUserFromProto(GFirebaseUpdateUser.fromJson(json));
  String toJson(FirebaseUpdateUser entity) =>
      _$FirebaseUpdateUserToProto(entity).writeToJson();

  String toBase64Proto(FirebaseUpdateUser entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  FirebaseUpdateUser fromBase64Proto(String base64Proto) =>
      GFirebaseUpdateUser.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toFirebaseUpdateUser();
}

GFirebaseUpdateUser _$FirebaseUpdateUserToProto(FirebaseUpdateUser instance) {
  var proto = GFirebaseUpdateUser();

  proto.info = const $FirebaseUserInfoProtoMapper().toProto(instance.info);
  proto.uid = instance.uid;

  return proto;
}

FirebaseUpdateUser _$FirebaseUpdateUserFromProto(
        GFirebaseUpdateUser instance) =>
    FirebaseUpdateUser(
      uid: instance.uid,
      info: const $FirebaseUserInfoProtoMapper().fromProto(instance.info),
    );

extension $FirebaseUpdateUserProtoExtension on FirebaseUpdateUser {
  GFirebaseUpdateUser toProto() => _$FirebaseUpdateUserToProto(this);
  String toJson() => _$FirebaseUpdateUserToProto(this).writeToJson();

  static FirebaseUpdateUser fromProto(GFirebaseUpdateUser proto) =>
      _$FirebaseUpdateUserFromProto(proto);
  static FirebaseUpdateUser fromJson(String json) =>
      _$FirebaseUpdateUserFromProto(GFirebaseUpdateUser.fromJson(json));
}

extension $GFirebaseUpdateUserProtoExtension on GFirebaseUpdateUser {
  FirebaseUpdateUser toFirebaseUpdateUser() =>
      _$FirebaseUpdateUserFromProto(this);
}
