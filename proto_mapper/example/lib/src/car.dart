import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_mapper_example/grpc/model.pb.dart';
import 'package:proto_mapper_example/src/vehicle.dart';

part 'car.g.dart';

@proto
class Car extends Vehicle {
  Car({
    required double weight,
    required this.numberOfDoors,
  }) : super(weight: weight);

  @ProtoField(2)
  final int numberOfDoors;
}
