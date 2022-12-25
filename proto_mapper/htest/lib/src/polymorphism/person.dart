// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/polymorphism/person.pb.dart';

part 'person.g.dart';

@Proto(
  ownFieldsNumber: 5,
  superFieldsNumber: 3,
)
@MapProto()
class Person {
  @ProtoField.numbered(2)
  final String name2;
  Person({
    required this.name2,
  });
}
