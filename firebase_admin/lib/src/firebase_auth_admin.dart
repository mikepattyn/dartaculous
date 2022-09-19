import 'dart:async';
import 'package:firebase_admin/firebase_admin.dart';
import 'package:firebase_admin/gen/firebase/bool_claim.pb.dart';
import 'package:firebase_admin/gen/firebase/claim_base.pb.dart';
import 'package:firebase_admin/gen/firebase/claims_request.pb.dart';
import 'package:firebase_admin/gen/firebase/claims_response.pb.dart';
import 'package:firebase_admin/gen/firebase/string_claim.pb.dart';
import 'package:firebase_admin/gen/firebase/string_list_claim.pb.dart';
import 'package:firebase_admin/gen/firebase/user_info.pb.dart';
import 'package:firebase_admin/gen/google/protobuf/empty.pb.dart';
import 'package:go_bridge/gen/common/primitive_messages.pb.dart';
import 'package:go_bridge/helpers.dart';

import 'helpers.dart';

Future<String> createUser(FirebaseCreateUser user) async {
  final info = user.info;
  final uid = user.uid;
  final guser = _createUserInfo(uid, info);
  final ret = await callGoFunc(
    request: guser,
    goFunc: nl.createUser,
    responseToFill: StringMessage(),
  );
  return ret.value;
}

Future<void> updateUser(FirebaseUpdateUser user) async {
  final info = user.info;
  final uid = user.uid;
  final guser = _createUserInfo(uid, info);
  await callGoFunc(
    request: guser,
    goFunc: nl.updateUser,
    responseToFill: Empty(),
  );
}

Future<UserInfo> getUser(String uid) async {
  final request = StringMessage()..value = uid;
  final r = await callGoFunc(
    request: request,
    goFunc: nl.getUser,
    responseToFill: UserInfo(),
  );
  return r;
}

Future<UserInfo> getUserByEmail(String email) async {
  final request = StringMessage()..value = email;
  final r = await callGoFunc(
    request: request,
    goFunc: nl.getUserByEmail,
    responseToFill: UserInfo(),
  );
  return r;
}

UserInfo _createUserInfo(String? uid, FirebaseUserInfo info) {
  return UserInfo(
    uid: getStringValue(uid),
    email: getStringValue(info.email),
    displayName: getStringValue(info.displayName),
    password: getStringValue(info.password),
    phoneNumber: getStringValue(info.phoneNumber),
    photoUrl: getStringValue(info.phoneNumber),
    emailVerified: getBoolValue(info.emailVerified),
    disabled: getBoolValue(info.disabled),
  );
}

Future<void> deleteUser(String uid) async {
  final request = StringMessage()..value = uid;

  await callGoFunc(
    request: request,
    goFunc: nl.deleteUser,
    responseToFill: Empty(),
  );
}

Future<String> createCustomToken(String uid) async {
  final request = StringMessage()..value = uid;

  final response = await callGoFunc(
    request: request,
    goFunc: nl.createCustomToken,
    responseToFill: StringMessage(),
  );
  return response.value;
}

Future<String> createCustomTokenWithClaims(
  String uid,
  Map<String, dynamic> claims,
) async {
  final request = _createClaimsRequest(uid, claims);
  final ret = await callGoFunc(
    request: request,
    goFunc: nl.createCustomTokenWithClaims,
    responseToFill: StringMessage(),
  );
  return ret.value;
}

Future<void> setCustomClaims(
  String uid,
  Map<String, dynamic> claims,
) async {
  final request = _createClaimsRequest(uid, claims);
  await callGoFunc(
    request: request,
    goFunc: nl.setCustomUserClaims,
    responseToFill: Empty(),
  );
}

Future<Map<String, dynamic>> getCustomClaims(String uid) async {
  final request = StringMessage()..value = uid;
  final response = await callGoFunc(
    request: request,
    goFunc: nl.getCustomClaims,
    responseToFill: ClaimsResponse(),
  );

  final claims = response.claims.map(
    (e) {
      if (e.hasBoolClaim()) {
        return MapEntry(e.boolClaim.name, e.boolClaim.value);
      } else if (e.hasStringClaim()) {
        return MapEntry(e.stringClaim.name, e.stringClaim.value);
      } else if (e.hasStringListClaim()) {
        return MapEntry(e.stringListClaim.name, e.stringListClaim.value);
      } else {
        throw UnsupportedError('unsupported claim type');
      }
    },
  );

  final ret = <String, dynamic>{for (final i in claims) i.key: i.value};
  return ret;
}

ClaimsRequest _createClaimsRequest(String uid, Map<String, dynamic> claims) {
  final request = ClaimsRequest()..uid = uid;

  for (final claimEntry in claims.entries) {
    final name = claimEntry.key;
    final value = claimEntry.value;

    final claim = ClaimBase();
    if (value is String) {
      claim.stringClaim = StringClaim(name: name, value: value);
    }
    if (claimEntry.value is List<String>) {
      claim.stringListClaim = StringListClaim(name: name, value: value);
    }
    if (claimEntry.value is Set<String>) {
      final lst = (claimEntry.value as Set<String>).toList();
      claim.stringListClaim = StringListClaim(name: name, value: lst);
    }
    if (claimEntry.value is bool) {
      claim.boolClaim = BoolClaim(name: name, value: value);
    }
    request.claims.add(claim);
  }
  return request;
}
