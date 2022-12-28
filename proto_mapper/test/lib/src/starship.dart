import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/starship.pb.dart';

part 'starship.g.dart';

@Proto()
@mapProto
class Starship {
  final BigInt range;
  final BigInt? odometer;
  final int engineNumber;

  Starship({
    required this.range,
    required this.engineNumber,
    this.odometer,
  });
}
