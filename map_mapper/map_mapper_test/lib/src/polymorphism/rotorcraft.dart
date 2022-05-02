import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:map_mapper_generator_test/src/polymorphism/helicopter.dart';

import 'aircraft.dart';

part 'rotorcraft.g.dart';

@MapMapped(knownSubClasses: [Helicopter, Gyrocopter])
abstract class Rotorcraft extends Aircraft {
  Rotorcraft({
    required int weight,
    required Decimal serviceCeiling,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);
}
