import 'dart:typed_data';

import 'package:bson2/bson2.dart';
import 'package:mongo_go/gen/google/protobuf/wrappers.pb.dart';
import 'package:mongo_go/mongo_go.dart';
import 'proto.dart' as p;

extension ByteArrayMessageExtension on p.ByteArrayMessage {
  ObjectId toObjectId() {
    final bin = BsonBinary.from(value);
    final oid = ObjectId.fromBuffer(bin);
    return oid;
  }
}

extension ObjectIdExtensions on ObjectId {
  Uint8List toByteList() {
    return id.byteList;
  }
}

extension ConnectionSettingsExtension on ConnectionSettings {
  p.ConnectionRequest toConnectionRequest() {
    return p.ConnectionRequest(connectionString: connectionString);
  }
}

extension BoolValueExtension on bool? {
  BoolValue? toWrapped() {
    if (this == null) return null;
    return BoolValue(value: this);
  }
}

extension Int32ValueExtension on int? {
  Int32Value? toWrapped() {
    if (this == null) return null;
    return Int32Value(value: this);
  }
}

extension StringValueExtension on String? {
  StringValue? toWrapped() {
    if (this == null) return null;
    return StringValue(value: this);
  }
}

extension DoubleValueExtension on double? {
  DoubleValue? toWrapped() {
    if (this == null) return null;
    return DoubleValue(value: this);
  }
}

extension MapSerializeExtension on Map<String, dynamic>? {
  Uint8List? toBsonByteList() {
    if (this == null) return null;
    return BSON().serialize(this).byteList;
  }
}
