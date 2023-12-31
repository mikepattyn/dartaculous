import 'package:proto_annotations/proto_annotations.dart';
import 'package:decimal/decimal.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'abstract_vehicle.dart';

part 'bicycle.g.dart';

@Proto()
class Bicycle extends AbstractVehicle {
  @ProtoField(2)
  final Decimal wheelDiamater;

  @ProtoField(3)
  @override
  final String key;

  Bicycle({
    required this.wheelDiamater,
    required super.weight,
    required this.key,
  });
}
