import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'rotorcraft.dart';

part 'helicopter.g.dart';

@MapMapped()
class Helicopter extends Rotorcraft {
  Helicopter({
    required int weight,
    required Decimal serviceCeiling,
    required String key,
  }) : super(key: key, weight: weight, serviceCeiling: serviceCeiling);
}
