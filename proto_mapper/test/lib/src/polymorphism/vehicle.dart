import 'package:proto_annotations/proto_annotations.dart';

import 'aircraft.dart';
import 'car.dart';

part 'vehicle.g.dart';

const knownSubClasses = {Aircraft: 3, Car: 4};

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: [Aircraft, Car])
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
