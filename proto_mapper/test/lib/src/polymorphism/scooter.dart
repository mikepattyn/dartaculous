import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'abstract_vehicle.dart';

part 'scooter.g.dart';

@Proto()
class Scooter extends AbstractVehicle {
  @ProtoField(2)
  @override
  final String key;

  Scooter({
    required super.weight,
    required this.key,
  });
}
