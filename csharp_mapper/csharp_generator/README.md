## Introduction

The purpose of this package, alongside its companion csharp_annotations package, is to generate equivalent C# classes to the mapped Dart classes.

This is pretty much alpha. It does basic mapping, but many features and documentation are still missing.

## Context

This package is part of a set of loosely integrated packages that constitute the [Dartaculous Framework](https://gitlab.com/dartaculous/dartaculous#squarealfa-dart-framework).

## Getting started

Let's assume you have the following class, for which you want an equivalent C# class that represents the same business concept:

```dart
// person.dart
import 'package:csharp_annotations/csharp_annotations.dart';

// this is optional and will be needed only if we want to use validation annotations 
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';

import 'contract.dart';
import 'gender.dart';

// signals that we want to generate a Person record in C#
@csharp
class Person {
  
  // this is an example of the usage of 
  // validation annotations from the 
  // https://pub.dev/packages/squarealfa_entity_annotations
  // package. An equivalent attribute for C# will be generated.
  @required
  final String name;
  final DateTime? birthDate;
  final Gender gender;
  final List<Contract> contracts;
  
  // let's ignore this in C#
  final int? nonce;

  const Person({
    required this.name,
    this.birthDate,
    required this.gender,
    required this.contracts,
  });
}
```

First, add the dependencies to pubspec.yaml:

```yaml
dependencies:
  csharp_annotations: latest

dev_dependencies:
  csharp_generator: latest
  build_runner: any
```

Add the import to ```csharp_annotations``` package:

```dart
import 'package:csharp_annotations/csharp_annotations.dart';

class Person { /*...*/ }
```

Next, decorate the class with a ```@csharp``` (shorthand for ```@CSharp()```) annotation. By default, every field will be represented in C#, unless we explicitly exclude it with a ```@csignore``` (shorthand for ```@CSharpIgnore()```) annotation:

```dart
import 'package:csharp_annotations/csharp_annotations.dart';

import 'contract.dart';
import 'gender.dart';

@csharp
class Person {
  final String name;
  final DateTime? birthDate;
  final Gender gender;
  final List<Contract> contracts;

  // let's ignore this field in C#
  @csignore
  final int? nonce;

  const Person({
    required this.name,
    this.birthDate,
    required this.gender,
    required this.contracts,
    this.nonce,
  });
}
```

From the terminal, in the directory of your package:
```sh
# This will run proto_generator to generate lib/proto/model.proto
dart run build_runner build
```
*Hint*: Whenever you change any of your model classes, you will need to run this command, so it is a good idea to integrate it into a shell script, a Makefile or whatever tool of your choice.

By this point, you will get a ```lib/csharp/Model.cs``` file containing the following record and all records for all other Dart classes you annotated with ```@csharp```:

```csharp
public record Person (
  string Name,
  DateTime? BirthDate,
  Gender Gender,
  List<Contract> Contracts
);
```

Notice that the ```nonce``` field was ignored (because it has the ```@csignore``` annotation).

### Validations 

This package is compatible with the annotations exported by the https://pub.dev/packages/squarealfa_entity_annotations package. In order to generate equivalent C# attributes, add that package to pubspec.yaml, if you haven't already:

```yaml
dependencies:
  csharp_annotations: latest
  #optional, only if we need validations
  squarealfa_entity_annotations: latest

dev_dependencies:
  csharp_generator: latest
  build_runner: any
```

Update the class, adding validation annotations:
```dart
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';


@csharp
class Person {
  @required
  final String name;

  @emailAddress
  final String email;

  //// ......
}
```

After running ```dart run build_runner build```, the C# record will include those validations:

```csharp
public record Person (
  [property:Required(AllowEmptyStrings = false)]
  string Name,
  [property:EmailAddress]
  string Email
  /// .......
);
```

## Configuration
If you need to use different configuration settings from the default, you may add a ```build.yaml``` file to the root of your package based on this template:

```yaml
# Read about `build.yaml` at https://pub.dev/packages/build_config
targets:
  $default:
    builders:
      csharp_generator:csharpBuilder:
        options:
          outPath: csharp/Model.cs
          namespace: {package_name}
```

The available options are the following:

| Option                         | Description                                                                                        | Default value     |
|--------------------------------|----------------------------------------------------------------------------------------------------|-------------------|
| outPath                        | Path, relative to the lib directory, to which the single .cs file is generated                     | csharp/Model.cs   |
| namespace                      | Namespace of generated C# code. {package_name} gets replaced with the package name in pubspec.yaml | {package_name}    |


## Example

Check out the complete example project at https://gitlab.com/dartaculous/dartaculous/-/tree/main/csharp_mapper/example.


## Context

This package is part of a set of loosely integrated packages that constitute the [Dartaculous Framework](https://gitlab.com/dartaculous/dartaculous#squarealfa-dart-framework).
