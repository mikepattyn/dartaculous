import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator_test/src/polymorphism/gyrocopter.dart';
import 'package:map_mapper_generator_test/src/polymorphism/helicopter.dart';

import 'aircraft.dart';

part 'rotorcraft.g.dart';

@MapMapped(knownSubClasses: [Helicopter, Gyrocopter])
abstract class Rotorcraft extends Aircraft {
  Rotorcraft({
    required super.weight,
    required super.serviceCeiling,
    required this.key,
  });

  @override
  final String key;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Rotorcraft && other.key == key;
  }

  @override
  int get hashCode => key.hashCode;
}
