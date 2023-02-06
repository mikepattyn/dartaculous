// GENERATED CODE - DO NOT MODIFY BY HAND

using System.ComponentModel.DataAnnotations;

namespace Company.Dartlib;

public enum Gender {
  Female,
  Male,
  Other,
}
  
public record Contract (
  DateTime StartDate,
  TimeSpan Duration,
  List<string> Clauses
);
  
public record Person (
  [property:Required(AllowEmptyStrings = false)]
  string Name,
  [property:Required]
  DateTime? BirthDate,
  Gender Gender,
  List<Contract> Contracts,
  Person? Spouse,
  [property:StringLength(20, MinimumLength = 10)]
  [property:MaxLength()]
  string Comment,
  [property:EmailAddress]
  string Email,
  [property:RegularExpression("[a-zA-Z ]{1,19}")]
  string Address,
  [property:Range(1.0, 2.5)]
  double Height,
  [property:Range(1, 200)]
  int Weight
);
  
