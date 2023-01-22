import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';
import 'package:proto_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:proto_generator_test/src/polymorphism/helicopter.dart';

import 'aircraft.dart';

part 'rotorcraft.g.dart';

const knownSubClasses = {Helicopter: 3, Gyrocopter: 4};

@Proto(knownSubClassMap: knownSubClasses)
abstract class Rotorcraft extends Aircraft {
  Rotorcraft({
    required super.weight,
    required super.serviceCeiling,
    required super.key,
  });
}
