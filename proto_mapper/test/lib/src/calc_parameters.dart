import 'package:proto_annotations/proto_annotations.dart';

part 'calc_parameters.g.dart';

@Proto()
@mapProto
class CalcParameters {
  @ProtoField(2)
  final int parameter1;

  @ProtoField(1)
  final int parameter2;

  @ProtoField(3)
  final int? parameter3;

  @ProtoField(4)
  final int? parameter4;

  @ProtoField(9)
  final int parameter5;

  CalcParameters({
    required this.parameter1,
    required this.parameter2,
    required this.parameter3,
    required this.parameter4,
    required this.parameter5,
  });
}
