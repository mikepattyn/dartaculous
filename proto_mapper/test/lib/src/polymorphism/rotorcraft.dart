import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/rotorcraft.pb.dart';
import 'package:proto_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:proto_generator_test/src/polymorphism/helicopter.dart';

import 'aircraft.dart';

part 'rotorcraft.g.dart';

const knownSubClasses = {Helicopter: 3, Gyrocopter: 4};

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: [Helicopter, Gyrocopter])
abstract class Rotorcraft extends Aircraft {
  Rotorcraft({
    required int weight,
    required int serviceCeiling,
    required this.key,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);

  @override
  final String key;
}
