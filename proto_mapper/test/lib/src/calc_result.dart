import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

part 'calc_result.g.dart';

@Proto()
class CalcResult {
  @ProtoField(2)
  final int result;

  CalcResult({required this.result});
}
