import 'package:csharp_annotations/csharp_annotations.dart';

import 'contract.dart';
import 'gender.dart';

@csharp
class Person {
  final String name;
  final DateTime? birthDate;
  final Gender gender;
  final List<Contract> contracts;
  final Person? spouse;
  @csignore
  final double ignoreThisField = 0;

  const Person({
    required this.name,
    this.birthDate,
    required this.gender,
    required this.contracts,
    this.spouse,
  });
}
