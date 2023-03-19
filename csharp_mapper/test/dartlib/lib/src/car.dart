import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:dartlib/src/vehicle.dart';

part 'car.part.dart';

@csharp
class Car extends Vehicle {
  final int doors;

  const Car({
    required this.doors,
    required super.weight,
  });
}
