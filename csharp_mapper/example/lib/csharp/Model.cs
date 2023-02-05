// GENERATED CODE - DO NOT MODIFY BY HAND

namespace Company.CsharpGeneratorExample;

public record Ingredient(
  string description, 
  double quantity, 
  int? batchSize, 
  TimeSpan estimatedPreparationTime, 
  DateTime expiryDate
); 

public record Recipe(
  string id, 
  string title, 
  List<Ingredient> ingredients, 
  string? runtimeTag
); 

public record Vehicle(double weight); 

public record Person(
  string name, 
  DateTime? birthDate, 
  Gender gender
); 

public enum Gender {
  Female,
  Male,
  Other,
}


