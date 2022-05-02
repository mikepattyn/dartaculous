import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/vehicle.pb.dart';

import 'aircraft.dart';
import 'airplane.dart';
import 'car.dart';
import 'gyrocopter.dart';
import 'helicopter.dart';

part 'vehicle.g.dart';

const knownSubClasses = [
  Aircraft,
  Car,
];

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: knownSubClasses)
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
