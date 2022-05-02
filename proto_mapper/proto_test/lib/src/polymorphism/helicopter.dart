import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/helicopter.pb.dart';

import 'rotorcraft.dart';

part 'helicopter.g.dart';

@proto
@mapProto
class Helicopter extends Rotorcraft {
  Helicopter({
    required int weight,
    required int serviceCeiling,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);
}
