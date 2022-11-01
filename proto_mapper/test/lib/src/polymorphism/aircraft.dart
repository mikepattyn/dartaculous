import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/aircraft.pb.dart';
import 'package:proto_generator_test/src/polymorphism/airplane.dart';
import 'package:proto_generator_test/src/polymorphism/balloon.dart';
import 'package:proto_generator_test/src/polymorphism/rotorcraft.dart';

import 'entity.dart';
import 'gyrocopter.dart';
import 'helicopter.dart';
import 'vehicle.dart';

part 'aircraft.g.dart';

const knownSubClasses = [
  Airplane,
  Rotorcraft,
  Balloon,
];

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: knownSubClasses)
abstract class Aircraft extends Vehicle implements Entity {
  final int serviceCeiling;
  Aircraft({
    required this.serviceCeiling,
    required int weight,
  }) : super(weight: weight);
}