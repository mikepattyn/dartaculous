import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_mapper_example/grpc/model.pb.dart';
import 'package:proto_mapper_example/src/airplane.dart';

import 'car.dart';

part 'vehicle.g.dart';

@Proto(knownSubClassMap: {
  Car: 2,
  Airplane: 3,
})
abstract class Vehicle {
  const Vehicle({
    required this.weight,
  });

  @ProtoField(2)
  final double weight;
}
