using Company.Dartlib;
using DateTime = System.DateTime;

namespace cstest;

public class Tests
{
    [Fact]
    public void PersonInstantiated()
    {
        var person = new Person(
            name: "Alice",
            birthDate: new(1980, 05, 10),
            gender: Gender.Female,
            contracts: new ()
            {
                new(
                    new(2023, 02, 05), 
                    new TimeSpan(365, 0, 0, 0),
                    new()
                    {
                        "First Clause",
                        "Second Clause"
                    }
                )
            },
            spouse:null
        );
        
        Assert.Equal("Alice", person.name);
        Assert.Equal(new DateTime(1980, 05, 10), person.birthDate);
        Assert.Equal( Gender.Female, person.gender);
        Assert.Single(person.contracts);
        Assert.Equal(new DateTime(2023, 02, 05), person.contracts.First().startDate);
        Assert.Equal(new TimeSpan(365, 0, 0, 0), person.contracts.First().duration);
        Assert.Equal(2, person.contracts.First().clauses.Count);
        Assert.Equal("First Clause", person.contracts.First().clauses.First());
        Assert.Equal("Second Clause", person.contracts.First().clauses.Last());
        Assert.Null(person.spouse);
    }
}