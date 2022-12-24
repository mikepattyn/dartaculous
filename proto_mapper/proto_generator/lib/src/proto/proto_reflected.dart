import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';

class ProtoReflected {
  final Proto proto;
  final Map<DartType, int> knownSubClasses;

  ProtoReflected(this.proto, this.knownSubClasses);
}
