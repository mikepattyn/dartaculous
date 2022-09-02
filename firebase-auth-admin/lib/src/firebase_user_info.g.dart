// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user_info.dart';

// **************************************************************************
// ProtoMapperGenerator
// **************************************************************************

class $FirebaseUserInfoProtoMapper
    implements ProtoMapper<FirebaseUserInfo, GFirebaseUserInfo> {
  const $FirebaseUserInfoProtoMapper();

  @override
  FirebaseUserInfo fromProto(GFirebaseUserInfo proto) =>
      _$FirebaseUserInfoFromProto(proto);

  @override
  GFirebaseUserInfo toProto(FirebaseUserInfo entity) =>
      _$FirebaseUserInfoToProto(entity);

  FirebaseUserInfo fromJson(String json) =>
      _$FirebaseUserInfoFromProto(GFirebaseUserInfo.fromJson(json));
  String toJson(FirebaseUserInfo entity) =>
      _$FirebaseUserInfoToProto(entity).writeToJson();

  String toBase64Proto(FirebaseUserInfo entity) =>
      base64Encode(utf8.encode(entity.toProto().writeToJson()));

  FirebaseUserInfo fromBase64Proto(String base64Proto) =>
      GFirebaseUserInfo.fromJson(utf8.decode(base64Decode(base64Proto)))
          .toFirebaseUserInfo();
}

GFirebaseUserInfo _$FirebaseUserInfoToProto(FirebaseUserInfo instance) {
  var proto = GFirebaseUserInfo();

  if (instance.email != null) {
    proto.email = instance.email!;
  }
  proto.emailHasValue = instance.email != null;

  if (instance.emailVerified != null) {
    proto.emailVerified = instance.emailVerified!;
  }
  proto.emailVerifiedHasValue = instance.emailVerified != null;

  if (instance.displayName != null) {
    proto.displayName = instance.displayName!;
  }
  proto.displayNameHasValue = instance.displayName != null;

  if (instance.password != null) {
    proto.password = instance.password!;
  }
  proto.passwordHasValue = instance.password != null;

  if (instance.disabled != null) {
    proto.disabled = instance.disabled!;
  }
  proto.disabledHasValue = instance.disabled != null;

  if (instance.phoneNumber != null) {
    proto.phoneNumber = instance.phoneNumber!;
  }
  proto.phoneNumberHasValue = instance.phoneNumber != null;

  if (instance.photoUrl != null) {
    proto.photoUrl = instance.photoUrl!;
  }
  proto.photoUrlHasValue = instance.photoUrl != null;

  return proto;
}

FirebaseUserInfo _$FirebaseUserInfoFromProto(GFirebaseUserInfo instance) =>
    FirebaseUserInfo(
      email: (instance.emailHasValue ? (instance.email) : null),
      emailVerified:
          (instance.emailVerifiedHasValue ? (instance.emailVerified) : null),
      displayName:
          (instance.displayNameHasValue ? (instance.displayName) : null),
      password: (instance.passwordHasValue ? (instance.password) : null),
      disabled: (instance.disabledHasValue ? (instance.disabled) : null),
      phoneNumber:
          (instance.phoneNumberHasValue ? (instance.phoneNumber) : null),
      photoUrl: (instance.photoUrlHasValue ? (instance.photoUrl) : null),
    );

extension $FirebaseUserInfoProtoExtension on FirebaseUserInfo {
  GFirebaseUserInfo toProto() => _$FirebaseUserInfoToProto(this);
  String toJson() => _$FirebaseUserInfoToProto(this).writeToJson();

  static FirebaseUserInfo fromProto(GFirebaseUserInfo proto) =>
      _$FirebaseUserInfoFromProto(proto);
  static FirebaseUserInfo fromJson(String json) =>
      _$FirebaseUserInfoFromProto(GFirebaseUserInfo.fromJson(json));
}

extension $GFirebaseUserInfoProtoExtension on GFirebaseUserInfo {
  FirebaseUserInfo toFirebaseUserInfo() => _$FirebaseUserInfoFromProto(this);
}
