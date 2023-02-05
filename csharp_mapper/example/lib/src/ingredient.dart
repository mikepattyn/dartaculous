import 'package:csharp_annotations/csharp_annotations.dart';

@csharp
class Ingredient {
  const Ingredient({
    required this.description,
    required this.quantity,
    this.batchSize,
    required this.estimatedPreparationTime,
    required this.expiryDate,
  });

  final String description;

  final double quantity;

  final int? batchSize;

  final Duration estimatedPreparationTime;

  final DateTime expiryDate;
}
