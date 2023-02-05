import 'package:csharp_annotations/csharp_annotations.dart';

import 'gender.dart';

@csharp
class Person {
  final String name;
  final DateTime? birthDate;
  final Gender gender;

  const Person({
    required this.name,
    this.birthDate,
    required this.gender,
  });
}
