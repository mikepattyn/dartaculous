// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/google/protobuf/wrappers.pb.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'animal.dart';

part 'person.g.dart';

@Proto()
class Person extends Animal {
  @ProtoField(2)
  final String name;

  @ProtoField(3)
  final String? description;

  final int dummy = 0;
  Person({
    required this.name,
    this.description,
    required int height,
    required double mass,
  }) : super(height: height, mass: mass);
}
