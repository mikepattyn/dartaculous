import 'dart:async';
import 'package:firebase_admin/firebase_admin.dart';
import 'package:firebase_admin/gen/firebase/batch_response.pb.dart';
import 'package:firebase_admin/gen/firebase/change_notification.pb.dart';
import 'package:go_bridge/helpers.dart';

Future<BatchResponse> sendChangeNotification(ChangeNotification message) async {
  final ret = await callGoFunc(
    request: message,
    goFunc: nl.sendChangeNotification,
    responseToFill: BatchResponse(),
  );
  return ret;
}
