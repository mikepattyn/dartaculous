import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'rotorcraft.dart';

part 'gyrocopter.g.dart';

@Proto()
class Gyrocopter extends Rotorcraft {
  Gyrocopter({
    required super.weight,
    required super.serviceCeiling,
    required super.key,
  });
}
