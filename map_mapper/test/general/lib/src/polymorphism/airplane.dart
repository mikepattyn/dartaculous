import 'package:decimal/decimal.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';

import 'aircraft.dart';

part 'airplane.g.dart';

@mapMapped
class Airplane extends Aircraft {
  Airplane({
    required super.serviceCeiling,
    required super.weight,
    required this.wingspan,
    required this.key,
  });

  final int wingspan;

  @override
  final String key;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airplane && other.wingspan == wingspan && other.key == key;
  }

  @override
  int get hashCode => wingspan.hashCode ^ key.hashCode;
}
