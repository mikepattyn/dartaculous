import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/rotorcraft.pb.dart';
import 'package:proto_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:proto_generator_test/src/polymorphism/helicopter.dart';

import 'aircraft.dart';

part 'rotorcraft.g.dart';

const knownSubClasses = [
  Helicopter,
  Gyrocopter,
];

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: knownSubClasses)
abstract class Rotorcraft extends Aircraft {
  Rotorcraft({
    required int weight,
    required int serviceCeiling,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);
}
