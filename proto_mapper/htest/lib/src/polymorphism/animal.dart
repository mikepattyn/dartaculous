import 'package:proto_annotations/proto_annotations.dart';

@Proto()
class Animal {
  String description;
  Animal({
    required this.description,
  });
}
