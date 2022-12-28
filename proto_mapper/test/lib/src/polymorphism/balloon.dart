import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/balloon.pb.dart';

import 'aircraft.dart';

part 'balloon.g.dart';

@Proto()
@mapProto
class Balloon implements Aircraft {
  Balloon({
    required this.weight,
    required this.key,
    required this.serviceCeiling,
  });

  @override
  final int weight;
  @override
  final String key;

  @override
  final int serviceCeiling;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Balloon &&
        other.weight == weight &&
        other.serviceCeiling == serviceCeiling;
  }

  @override
  int get hashCode => weight.hashCode ^ serviceCeiling.hashCode;
}
