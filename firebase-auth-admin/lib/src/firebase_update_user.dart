import 'package:firebase_auth_admin/gen/firebase_update_user.pb.dart';
import 'package:proto_annotations/proto_annotations.dart';

import 'firebase_user_info.dart';

part 'firebase_update_user.g.dart';

@proto
@mapProto
class FirebaseUpdateUser {
  final FirebaseUserInfo info;
  final String uid;

  FirebaseUpdateUser({
    required this.uid,
    required this.info,
  });
}
