import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'rotorcraft.dart';

part 'gyrocopter.g.dart';

@MapMapped()
class Gyrocopter extends Rotorcraft {
  Gyrocopter({
    required int weight,
    required Decimal serviceCeiling,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);
}
