import 'package:csharp_annotations/csharp_annotations.dart';

@csharp
class Vehicle {
  const Vehicle({
    required this.weight,
  });

  final double weight;
}
