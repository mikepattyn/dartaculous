import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator_test/src/polymorphism/rotorcraft.dart';

import 'airplane.dart';
import 'balloon.dart';
import 'entity.dart';
import 'gyrocopter.dart';
import 'helicopter.dart';
import 'vehicle.dart';

part 'aircraft.g.dart';

@MapMapped(knownSubClasses: [
  Airplane,
  Rotorcraft,
  Balloon,
])
abstract class Aircraft extends Vehicle implements Entity {
  final Decimal serviceCeiling;
  Aircraft({
    required int weight,
    required this.serviceCeiling,
  }) : super(weight: weight);
}
