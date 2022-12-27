import 'package:proto_annotations/proto_annotations.dart';

import 'aircraft.dart';

@Proto.auto()
class Airplane extends Aircraft {
  Airplane({
    required int weight,
    required int serviceCeiling,
    required this.wingspan,
  }) : super(weight: weight, serviceCeiling: serviceCeiling);

  @ProtoField(2)
  final int wingspan;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airplane && other.wingspan == wingspan;
  }

  @override
  int get hashCode => wingspan.hashCode;
}
