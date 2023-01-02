// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';

class ProtoReflected {
  final Proto proto;
  final Map<DartType, int> knownSubClasses;

  ProtoReflected(this.proto, this.knownSubClasses);

  ProtoReflected copyWith({
    Proto? proto,
    Map<DartType, int>? knownSubClasses,
  }) {
    return ProtoReflected(
      proto ?? this.proto,
      knownSubClasses ?? this.knownSubClasses,
    );
  }
}
