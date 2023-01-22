import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'rotorcraft.dart';

part 'gyrocopter.g.dart';

@MapMapped()
class Gyrocopter extends Rotorcraft {
  Gyrocopter({
    required super.weight,
    required super.serviceCeiling,
    required super.key,
  });
}
