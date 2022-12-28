import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/src/polymorphism/entity.dart';

import 'bicycle.dart';
import 'scooter.dart';

part 'abstract_vehicle.g.dart';

const knownSubClasses = {Bicycle: 3, Scooter: 4};

@Proto(knownSubClasses: knownSubClasses)
@MapProto(knownSubClasses: [Bicycle, Scooter])
abstract class AbstractVehicle implements Entity {
  @ProtoField(2)
  final int weight;
  AbstractVehicle({
    required this.weight,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AbstractVehicle && other.weight == weight;
  }

  @override
  int get hashCode => weight.hashCode;
}
