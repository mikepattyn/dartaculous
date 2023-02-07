// GENERATED CODE - DO NOT MODIFY BY HAND

using System.ComponentModel.DataAnnotations;

namespace Company.CsharpGeneratorExample;

public enum Gender {
  Female,
  Male,
  Other,
}
  
public record Person {
  [property:Required(AllowEmptyStrings = false)]
  public required string Name { get; init; },
  public required DateTime? BirthDate { get; init; },
  public required Gender Gender { get; init; },
  public required List<Contract> Contracts { get; init; },
  [property:EmailAddress]
  public required string Email { get; init; }
};
  
public record Contract {
  public required DateTime StartDate { get; init; },
  public required TimeSpan Duration { get; init; },
  public required List<string> Clauses { get; init; }
};
  
