import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

import 'animal.dart';
import 'contract.dart';
import 'gender.dart';

@csharp
class Person extends Animal {
  @required
  final String name;
  final DateTime? birthDate;
  final Gender gender;
  final List<Contract> contracts;

  @emailAddress
  final String email;

  // let's ignore this field in C#
  @csignore
  final int? nonce;

  const Person({
    required this.name,
    this.birthDate,
    required this.gender,
    required this.contracts,
    required this.email,
    this.nonce,
    required super.properties,
  });
}
