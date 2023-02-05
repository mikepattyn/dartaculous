// GENERATED CODE - DO NOT MODIFY BY HAND

namespace Company.Dartlib;

public record Contract(
  DateTime StartDate, 
  TimeSpan Duration, 
  List<string> Clauses
); 

public enum Gender {
  Female,
  Male,
  Other,
}


public record Person(
  string Name, 
  DateTime? BirthDate, 
  Gender Gender, 
  List<Contract> Contracts, 
  Person? Spouse
); 

