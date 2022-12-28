import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';
import 'package:proto_generator_test/src/polymorphism/airplane.dart';
import 'package:proto_generator_test/src/polymorphism/balloon.dart';
import 'package:proto_generator_test/src/polymorphism/rotorcraft.dart';

import 'entity.dart';
import 'vehicle.dart';

part 'aircraft.g.dart';

const knownSubClasses = {Airplane: 3, Rotorcraft: 4, Balloon: 5};

@Proto(knownSubClasses: knownSubClasses, superFieldsNumber: 6)
abstract class Aircraft extends Vehicle implements Entity {
  @ProtoField(3)
  final int serviceCeiling;
  Aircraft({
    required this.serviceCeiling,
    required int weight,
  }) : super(weight: weight);
}
