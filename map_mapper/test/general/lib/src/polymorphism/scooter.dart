import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'abstract_vehicle.dart';

part 'scooter.g.dart';

@mapMapped
class Scooter extends AbstractVehicle {
  String key;
  Scooter({
    required super.weight,
    required this.key,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Scooter && other.key == key;
  }

  @override
  int get hashCode => key.hashCode;
}
