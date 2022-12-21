import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/appliance_type.pbenum.dart';

part 'appliance_type.g.dart';

@Proto.forEnum()
@mapProto
enum ApplianceType {
  heat,
  cold,
  cutlery,
}
