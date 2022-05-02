import 'package:proto_generator_test/grpc/polymorphism/airplane.pb.dart';
import 'package:proto_annotations/proto_annotations.dart';

import 'aircraft.dart';

part 'airplane.g.dart';

@proto
@mapProto
class Airplane extends Aircraft {
  Airplane({
    required int weight,
    required this.wingspan,
    required int serviceCeiling,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);

  final int wingspan;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airplane && other.wingspan == wingspan;
  }

  @override
  int get hashCode => wingspan.hashCode;
}
