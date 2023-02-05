// GENERATED CODE - DO NOT MODIFY BY HAND

namespace Company.Dartlib;

public enum Gender {
  Female,
  Male,
  Other,
}


public record Person(
  string name, 
  DateTime? birthDate, 
  Gender gender, 
  List<Contract> contracts, 
  Person? spouse
); 

public record Contract(
  DateTime startDate, 
  TimeSpan duration, 
  List<string> clauses
); 

