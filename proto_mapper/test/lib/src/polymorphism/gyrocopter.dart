import 'package:proto_annotations/proto_annotations.dart';

import 'rotorcraft.dart';

part 'gyrocopter.g.dart';

@Proto()
@mapProto
class Gyrocopter extends Rotorcraft {
  Gyrocopter({
    required int weight,
    required int serviceCeiling,
    required String key,
  }) : super(key: key, weight: weight, serviceCeiling: serviceCeiling);
}
