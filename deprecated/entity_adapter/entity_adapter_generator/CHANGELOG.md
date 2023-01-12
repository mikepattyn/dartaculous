## 3.4.1

 - Update a dependency to the latest release.

## 3.4.0

 - **FEAT**: Support for BigInt.

## 3.3.12

 - Update a dependency to the latest release.

## 3.3.11

 - Update a dependency to the latest release.

## 3.3.10

 - Update a dependency to the latest release.

## 3.3.9

 - Update a dependency to the latest release.

## 3.3.8

 - Update a dependency to the latest release.

## 3.3.7

 - Update a dependency to the latest release.

## 3.3.6

 - Update a dependency to the latest release.

## 3.3.5

 - Update a dependency to the latest release.

## 3.3.4

 - Update a dependency to the latest release.

## 3.3.3

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 3.3.3-dev.1

 - Update a dependency to the latest release.

## 3.3.3-dev.0

 - **FIX**: Fixed upgrade to Analysis 5.1.0.

## 3.3.2

 - Update a dependency to the latest release.

## 3.3.1

 - Update a dependency to the latest release.

## 3.3.0

 - **REFACTOR**: Use interpolation to compose strings and values (fieldName + '.' => '$fieldName.').
 - **FIX**: Fixed all pending warnings.
 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).
 - **FEAT**: EntityAdapter made const.

## 3.2.6

 - Update a dependency to the latest release.

## 3.2.5

 - **FIX**: Fixed all pending warnings.

## 3.2.4

 - Update a dependency to the latest release.

## 3.2.3

 - **CHORE**: Updated dependencies

## 3.2.2

 - **REFACTOR**: Use interpolation to compose strings and values (fieldName + '.' => '$fieldName.').

## 3.2.1

 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).

## 3.2.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 3.2.0-dev.1

 - **FIX**: const EntityAdapter from @AdaptedEntity.

## 3.2.0-dev.0

 - **FEAT**: EntityAdapter made const.

## 3.1.2
 - Support for mapping enum to string
 - Improved constructor support

## 3.1.1
 - @MapProto no longer requires nullable final fields in a constructor.
 - @MapProto allows missing non-nullable final fields if configured as such.
 - In both cases, we can count on the compiler to cover any issues within the constructor.


## 3.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).

## 3.0.6

- Added support for polymorphism

## 3.0.5

- Updated dependencies

## 3.0.4

- Added support for DateTimeRepresentation

## 3.0.3

- Updated dependencies

## 3.0.2

- Fixed missing adapted_entity build declaration

## 3.0.1

- Fixed outdated dependency

## 3.0.0

### Breaking change
- @EntityAdapted annotation is deprectated in favor of @AdaptedEntity annotation.
Both annotations are very similar, except that @AdaptedEntity declares a microsecond precision by default for 
Duration fields' mappers, instead of a millisecond precision. This is a breaking change, especially 
for databases that have previously stored durations in milliseconds.

## 2.0.1

- Updated dependencies

## 2.0.0

- Major overall of the package with many breaking changes:
    - Generated classes like builders, validators and default providers are prefixed with a dollar sign.
    - Replaced KeyHandler as a dependency with a build configuration.
    - Singleton pattern use generally replaced with const constructors.
    - Many other smaller improvements.

## 1.0.0

- Initial