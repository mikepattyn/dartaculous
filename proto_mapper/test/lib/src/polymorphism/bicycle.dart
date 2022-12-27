import 'package:proto_annotations/proto_annotations.dart';
import 'package:decimal/decimal.dart';

import 'package:proto_generator_test/grpc/polymorphism/bicycle.pb.dart';

import 'abstract_vehicle.dart';

part 'bicycle.g.dart';

@Proto.numbered()
@mapProto
class Bicycle extends AbstractVehicle {
  @ProtoField.numbered(2)
  final Decimal wheelDiamater;
  @override
  final String key;

  Bicycle({
    required this.wheelDiamater,
    required int weight,
    required this.key,
  }) : super(weight: weight);
}
