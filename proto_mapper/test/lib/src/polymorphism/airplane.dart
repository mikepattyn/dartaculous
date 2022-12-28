import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';

import 'aircraft.dart';

part 'airplane.g.dart';

@Proto()
class Airplane extends Aircraft {
  Airplane({
    required int weight,
    required int serviceCeiling,
    required this.wingspan,
    required this.key,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);

  @ProtoField(2)
  final int wingspan;

  @override
  final String key;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airplane && other.wingspan == wingspan;
  }

  @override
  int get hashCode => wingspan.hashCode;
}
