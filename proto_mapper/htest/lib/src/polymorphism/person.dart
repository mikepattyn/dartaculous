// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:proto_annotations/proto_annotations.dart';

@Proto(
  ownFieldsNumber: 5,
  superFieldsNumber: 3,
)
class Person {
  @ProtoField(2)
  final String? name;
  Person({
    required this.name,
  });
}
