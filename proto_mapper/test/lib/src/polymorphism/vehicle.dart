import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'aircraft.dart';
import 'car.dart';

part 'vehicle.g.dart';

const knownSubClasses = {Aircraft: 3, Car: 4};

@Proto(knownSubClasses: knownSubClasses)
class Vehicle {
  @ProtoField(2)
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
