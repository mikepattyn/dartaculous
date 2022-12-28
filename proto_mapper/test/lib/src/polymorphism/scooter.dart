import 'package:proto_annotations/proto_annotations.dart';

import 'abstract_vehicle.dart';

part 'scooter.g.dart';

@Proto()
@mapProto
class Scooter extends AbstractVehicle {
  @override
  final String key;

  Scooter({
    required int weight,
    required this.key,
  }) : super(weight: weight);
}
