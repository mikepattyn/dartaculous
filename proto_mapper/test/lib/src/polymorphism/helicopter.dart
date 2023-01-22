import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'rotorcraft.dart';

part 'helicopter.g.dart';

@Proto()
class Helicopter extends Rotorcraft {
  Helicopter({
    required super.weight,
    required super.serviceCeiling,
    required super.key,
  });
}
