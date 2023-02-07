import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:decimal/decimal.dart';

@csharp
class Vehicle {
  final Decimal weight;

  const Vehicle({
    required this.weight,
  });
}
