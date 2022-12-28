import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/helicopter.pb.dart';

import 'rotorcraft.dart';

part 'helicopter.g.dart';

@Proto()
@mapProto
class Helicopter extends Rotorcraft {
  Helicopter({
    required int weight,
    required int serviceCeiling,
    required String key,
  }) : super(key: key, weight: weight, serviceCeiling: serviceCeiling);
}
