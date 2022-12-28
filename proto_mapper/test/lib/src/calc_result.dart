import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/calc_result.pb.dart';

part 'calc_result.g.dart';

@Proto()
@mapProto
class CalcResult {
  final int result;

  CalcResult({required this.result});
}
