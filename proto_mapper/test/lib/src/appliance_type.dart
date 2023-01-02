import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pbenum.dart';

part 'appliance_type.g.dart';

@Proto()
enum ApplianceType {
  heat,
  cold,
  cutlery,
}
