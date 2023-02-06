import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';
import 'package:decimal/decimal.dart';

import 'contract.dart';
import 'gender.dart';

part 'person.g.dart';

@csharp
@validatable
class Person {
  @required
  final String name;
  @required
  final DateTime? birthDate;
  final Gender gender;
  final List<Contract> contracts;
  final Person? spouse;

  @StringLength(minLength: 10, maxLength: 20)
  final String comment;
  @csignore
  final double ignoreThisField = 0;

  @emailAddress
  final String email;

  @RegularExpression(expression: '[a-zA-Z ]{1,19}')
  final String address;

  @Range(minValue: 1.0, maxValue: 2.5)
  final double height;

  @Range(minValue: 1, maxValue: 200)
  final int weight;

  const Person({
    required this.name,
    this.birthDate,
    required this.gender,
    required this.contracts,
    required this.comment,
    this.spouse,
    required this.email,
    required this.address,
    required this.height,
    required this.weight,
  });
}
