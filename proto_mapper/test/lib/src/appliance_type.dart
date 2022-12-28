import 'package:proto_annotations/proto_annotations.dart';

part 'appliance_type.g.dart';

@Proto()
@mapProto
enum ApplianceType {
  heat,
  cold,
  cutlery,
}
