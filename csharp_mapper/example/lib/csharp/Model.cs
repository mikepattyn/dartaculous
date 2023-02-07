// GENERATED CODE - DO NOT MODIFY BY HAND

using System.ComponentModel.DataAnnotations;

namespace Company.CsharpGeneratorExample;

public enum Gender {
  Female,
  Male,
  Other,
}
  
public record Person (
  [property:Required(AllowEmptyStrings = false)]
  string Name,
  DateTime? BirthDate,
  Gender Gender,
  List<Contract> Contracts,
  [property:EmailAddress]
  string Email
);
  
public record Contract (
  DateTime StartDate,
  TimeSpan Duration,
  List<string> Clauses
);
  
