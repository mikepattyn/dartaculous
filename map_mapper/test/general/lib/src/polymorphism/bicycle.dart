import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'abstract_vehicle.dart';

part 'bicycle.g.dart';

@mapMapped
class Bicycle extends AbstractVehicle {
  final Decimal wheelDiamater;
  final String key;

  Bicycle({
    required int weight,
    required this.wheelDiamater,
    required this.key,
  }) : super(weight: weight);
}
