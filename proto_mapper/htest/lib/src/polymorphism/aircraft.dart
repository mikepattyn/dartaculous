// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/src/polymorphism/airplane.dart';

import 'vehicle.dart';

const knownSubClasses = {Airplane: 7};

@Proto(
  ownFieldsNumber: 5, // default is 1
  superFieldsNumber: 3, // default is 1
  knownSubClasses: knownSubClasses,
)
class Aircraft extends Vehicle {
  @ProtoField(2)
  final int? serviceCeiling;
  Aircraft({
    required this.serviceCeiling,
    required int weight,
  }) : super(weight: weight);
}
