import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_mapper_example/src/grpc/model.pb.dart';

import 'vehicle.dart';

part 'airplane.g.dart';

@proto
class Airplane extends Vehicle {
  Airplane({
    required double weight,
    required this.registration,
    required this.serviceCeiling,
  }) : super(weight: weight);

  @ProtoField(2)
  final String registration;

  @ProtoField(3)
  final int serviceCeiling;
}
