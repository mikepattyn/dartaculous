// GENERATED CODE - DO NOT MODIFY BY HAND

using System.ComponentModel.DataAnnotations;
// ReSharper disable UnusedAutoPropertyAccessor.Global
// ReSharper disable PartialTypeWithSinglePart
// ReSharper disable UnusedMember.Global
// ReSharper disable UnusedType.Global
// ReSharper disable InconsistentNaming
// ReSharper disable ClassNeverInstantiated.Global

namespace Company.Dartlib;

public enum Gender {
  Female,
  Male,
  Other,
}
  
public partial record Contract  {
  public required DateTime StartDate { get; init; }
  public required TimeSpan Duration { get; init; }
  public required List<string> Clauses { get; init; }
}
  
public partial record Vehicle  {
  public required decimal Weight { get; init; }
}
  
public partial record Car : Vehicle {
  public required int Doors { get; init; }
}
  
public partial record Person  {

  [Required(AllowEmptyStrings = false)]
  public required string Name { get; init; }

  [Required]
  public required DateTime? BirthDate { get; init; }
  public required Gender Gender { get; init; }
  public required List<Contract> Contracts { get; init; }
  public required Person? Spouse { get; init; }

  [StringLength(20, MinimumLength = 10)]
  public required string Comment { get; init; }

  [EmailAddress]
  public required string Email { get; init; }

  [RegularExpression("[a-zA-Z ]{1,19}")]
  public required string Address { get; init; }

  [Range(1.0, 2.5)]
  public required double Height { get; init; }

  [Range(1, 200)]
  public required int Weight { get; init; }
}
  
