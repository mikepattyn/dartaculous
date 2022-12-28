import 'package:proto_annotations/proto_annotations.dart';

part 'calc_result.g.dart';

@Proto()
@mapProto
class CalcResult {
  @ProtoField(2)
  final int result;

  CalcResult({required this.result});
}
