import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';
import 'package:proto_generator_test/src/polymorphism/being.dart';

part 'animal.g.dart';

@Proto()
class Animal extends Being {
  @ProtoField(2)
  final int height;

  Animal({
    required this.height,
    required double mass,
  }) : super(mass: mass);
}
