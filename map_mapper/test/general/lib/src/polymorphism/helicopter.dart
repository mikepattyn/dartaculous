import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'rotorcraft.dart';

part 'helicopter.g.dart';

@MapMapped()
class Helicopter extends Rotorcraft {
  Helicopter({
    required super.weight,
    required super.serviceCeiling,
    required super.key,
  });
}
