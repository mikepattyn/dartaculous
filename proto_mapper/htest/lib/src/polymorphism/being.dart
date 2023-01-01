// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/model.pb.dart';
import 'package:proto_generator_test/src/polymorphism/animal.dart';

part 'being.g.dart';

@Proto(knownSubClassMapm: {Animal: 2})
abstract class Being {
  @ProtoField(2)
  final double mass;

  @ProtoField(3)
  String? optionDescr;
  Being({
    required this.mass,
  });
}
