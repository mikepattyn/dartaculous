## 4.0.1

 - **FIX**: Upgraded max Dart version to <4.0.0.

## 4.0.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 4.0.0-dev.6

 - **FIX** Removed leftover print statement.

## 4.0.0-dev.5

 - **BREAKING** No longer using key handler by default.

## 4.0.0-dev.4

 - Update a dependency to the latest release.

## 4.0.0-dev.3

 - **FIX**: Changed repository URL.

## 4.0.0-dev.2

 - **FEAT**: removed dependecy from squarealfa_common_types.

## 4.0.0-dev.1

 - **FIX**: Updated dependencies.

## 4.0.0-dev.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Huge upgrade to proto_generator.

## 3.9.0

 - **FEAT**: Support for BigInt.

## 3.8.1

 - Update a dependency to the latest release.

## 3.8.0

 - **FEAT**: Added support for direct dateTime map mapping.

## 3.7.2

 - Update a dependency to the latest release.

## 3.7.1

 - Update a dependency to the latest release.

## 3.7.0

 - **FEAT**: improved support for late, final, pre-initialized Map, List and Set fields of @MapMapped annotated classes.
 - **FEAT**: @mapMapped should use the correct MapMapper for values of annotated Map<k,v> fields in toMap() and fromMap().

## 3.6.2

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 3.6.2-dev.1

 - **FIX**: Fixed map_mapper_generator enum generation.

## 3.6.2-dev.0

 - Update a dependency to the latest release.

## 3.6.1

 - Update a dependency to the latest release.

## 3.6.0

 - **FEAT**: Added isKey field to MapField annotation.

## 3.5.0

 - **REFACTOR**: Use interpolation to compose strings and values (fieldName + '.' => '$fieldName.').
 - **FIX**: Fixed all pending warnings.
 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).
 - **FEAT**: Include encapsulated fields that match constructor parameters when generating `Mapper` classes and `.proto` files ([#6](https://gitlab.com/ruicraveiro/dart_framework/-/issues/6)).
 - **FEAT**: Generating $type constant for each map-mapped class.
 - **FEAT**: Multi-level hierarchy polymorphism.

## 3.4.3

 - Update a dependency to the latest release.

## 3.4.2

 - **FIX**: Fixed all pending warnings.

## 3.4.1

 - **REFACTOR**: Use interpolation to compose strings and values (fieldName + '.' => '$fieldName.').

## 3.4.0

 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).
 - **FEAT**: Include encapsulated fields that match constructor parameters when generating `Mapper` classes and `.proto` files ([#6](https://gitlab.com/ruicraveiro/dart_framework/-/issues/6)).

## 3.3.0

 - **FEAT**: Generating $type constant for each map-mapped class.

## 3.2.2

 - Update a dependency to the latest release.

## 3.2.1

 - Update a dependency to the latest release.

## 3.2.0

 - **FEAT**: Multi-level hierarchy polymorphism.

## 3.1.2

- Fix to make MapMapper use ``defaultsProvider`` when setting ``late`` fields
 
## 3.1.1
- Supporting mapping enum to string
- Improved constructor support
 
## 3.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).


## 3.0.5

- Added section on polymorphism in README

## 3.0.4

- Support for polymorphism.

Now ```@MapMapped()``` has a new property called ```knownSubClasses```. This is a list of types of subclasses of the type to which the annotation
is applied. Each of these subclasses much also have the ```@MapMapped()``` annotation.

By identifying the known subclasses, ```toMap()``` and ```fromMap()``` methods become polymorphic.

## 3.0.3

- Updated dependencies

## 3.0.2

- Added support for DateTimeRepresentation

## 3.0.1

- Updated dependencies

## 3.0.0
### Breaking Change

- This version deprecates the @mapMap annotation, which defines a millisecond precision for duration fields.
- The substituting @mapMapped annotation defines a microsecond precision for duration fields unless configured
otherwise in build.yaml (see example).


## 2.0.1

- Updated dependencies

## 2.0.0

- Removed KeyHandler as a dependency and added as build generator (and many other breaking changes).

## 1.0.0

- Initial version

## 1.0.1

- Added history and future improvements section to README

## 1.1.0

- Removed deprecated nullableFieldsByDefault property from annotations

## 1.1.1

- Updated dependencies

## 1.2.0

- Removed redundant base classes

## 1.2.1

- Added reference to integrating framework.
