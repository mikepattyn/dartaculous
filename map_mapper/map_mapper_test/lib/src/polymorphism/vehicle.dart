import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'aircraft.dart';
// import 'airplane.dart';
import 'airplane.dart';
import 'car.dart';
import 'gyrocopter.dart';
import 'helicopter.dart';

part 'vehicle.g.dart';

@MapMapped(knownSubClasses: [
  Car,
  Aircraft,
  // Airplane,
])
class Vehicle {
  final int weight;
  Vehicle({
    required this.weight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicle && other.weight == weight;
  }

  @override
  int get hashCode => weight.hashCode;
}
