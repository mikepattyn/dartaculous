using System.ComponentModel.DataAnnotations;
using Company.Dartlib;
using DateTime = System.DateTime;

namespace cstest;

public class Tests
{
    [Fact]
    public void PersonInstantiated()
    {
        var person = CreateSamplePerson();
        
        Assert.Equal("Alice", person.Name);
        Assert.Equal(new DateTime(1980, 05, 10), person.BirthDate);
        Assert.Equal( Gender.Female, person.Gender);
        Assert.Single(person.Contracts);
        Assert.Equal(new DateTime(2023, 02, 05), person.Contracts.First().StartDate);
        Assert.Equal(new TimeSpan(365, 0, 0, 0), person.Contracts.First().Duration);
        Assert.Equal(2, person.Contracts.First().Clauses.Count);
        Assert.Equal("First Clause", person.Contracts.First().Clauses.First());
        Assert.Equal("Second Clause", person.Contracts.First().Clauses.Last());
        Assert.Null(person.Spouse);
    }

    [Fact]
    public void ValidObject()
    {
        var person = CreateSamplePerson();

        Validator.ValidateObject(person, new ValidationContext(person),  true);
    }

    [Fact]
    public void ValidateName()
    {
        var person = CreateSamplePerson() with { Name = "" };

        var results = new List<ValidationResult>();
        var isValid = Validator.TryValidateObject(person, new ValidationContext(person), results, true);
        Assert.False(isValid);
        Assert.Single(results);
        Assert.Equal(nameof(Person.Name), results.First().MemberNames.First());
    }

    [Fact]
    public void ValidateBirthDate()
    {
        var person = CreateSamplePerson() with { BirthDate = null };

        var results = new List<ValidationResult>();
        var isValid = Validator.TryValidateObject(person, new ValidationContext(person), results, true);
        Assert.False(isValid);
        Assert.Single(results);
        Assert.Equal(nameof(Person.BirthDate), results.First().MemberNames.First());
    }

    [Fact]
    public void ValidateComment()
    {
        var person = CreateSamplePerson() with { Comment = "too short" };

        var results = new List<ValidationResult>();
        var isValid = Validator.TryValidateObject(person, new ValidationContext(person), results, true);
        Assert.False(isValid);
        Assert.Single(results);
        Assert.Equal(nameof(Person.Comment), results.First().MemberNames.First());
    }

    [Fact]
    public void ValidateAddress()
    {
        var person = CreateSamplePerson() with { Address = "%"};

        var results = new List<ValidationResult>();
        var isValid = Validator.TryValidateObject(person, new ValidationContext(person), results, true);
        Assert.False(isValid);
        Assert.Single(results);
        Assert.Equal(nameof(Person.Address), results.First().MemberNames.First());
    }

    [Fact]
    public void ValidateHeight()
    {
        var person = CreateSamplePerson() with { Height = 2.51 };

        var results = new List<ValidationResult>();
        var isValid = Validator.TryValidateObject(person, new ValidationContext(person), results, true);
        Assert.False(isValid);
        Assert.Single(results);
        Assert.Equal(nameof(Person.Height), results.First().MemberNames.First());
    }

    [Fact]
    public void ValidateWeight()
    {
        var person = CreateSamplePerson() with { Weight = 0};

        var results = new List<ValidationResult>();
        var isValid = Validator.TryValidateObject(person, new ValidationContext(person), results, true);
        Assert.False(isValid);
        Assert.Single(results);
        Assert.Equal(nameof(Person.Weight), results.First().MemberNames.First());
    }

    
    [Fact]
    public void CarInheritsVehicle()
    {
        Car car = new()
        {
            Doors = 4,
            Weight = 500
        };

        Assert.Equal(4, car.Doors);
        Assert.Equal(500, car.Weight);
    }

    private static Person CreateSamplePerson()
    {
        return new Person{
            Name = "Alice",
            BirthDate = new(1980, 05, 10),
            Gender= Gender.Female,
            Contracts= new ()
            {
                new Contract
                {
                    StartDate = new(2023, 02, 05),
                    Duration = new TimeSpan(365, 0, 0, 0),
                    Clauses = new()
                    {
                        "First Clause",
                        "Second Clause"
                    }
                } 
            },
            Spouse=null,
            Comment= "Fairly big comment",
            Email= "alice@acme.com",
            Address= "Kansas",
            Height= 1.60,
            Weight= 75
        };
    }
}