import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator_test/src/polymorphism/aircraft.dart';

part 'balloon.g.dart';

@MapMapped()
class Balloon implements Aircraft {
  Balloon({
    required this.serviceCeiling,
    required this.weight,
  });

  @override
  final Decimal serviceCeiling;

  @override
  final int weight;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Balloon &&
        other.serviceCeiling == serviceCeiling &&
        other.weight == weight;
  }

  @override
  int get hashCode => serviceCeiling.hashCode ^ weight.hashCode;
}
