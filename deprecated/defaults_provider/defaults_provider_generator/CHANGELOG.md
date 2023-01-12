## 3.0.0-dev.2

 - **FEAT**: removed dependecy from squarealfa_common_types.

## 3.0.0-dev.1

 - **FIX**: Updated dependencies.

## 3.0.0-dev.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Huge upgrade to proto_generator.

## 2.4.0

 - **FEAT**: Support for BigInt.

## 2.3.6

 - Update a dependency to the latest release.

## 2.3.5

 - Update a dependency to the latest release.

## 2.3.4

 - Update a dependency to the latest release.

## 2.3.3

 - **FIX**: when a parent DefaultsProvider has no actual (constructor) fields, don't generate an (unused) `static const _superDefaultsProvider`.

## 2.3.2

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.3.2-dev.0

 - **FIX**: Fixed upgrade to Analysis 5.1.0.

## 2.3.1

 - Update a dependency to the latest release.

## 2.3.0

 - **FIX**: Fixed warnings.
 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).
 - **FEAT**: also allowMissingFields for defaults generator. Generated sources will result in compilation error if it's actually a problem.

## 2.2.3

 - Update a dependency to the latest release.

## 2.2.2

 - Update a dependency to the latest release.

## 2.2.1

 - **FIX**: Fixed warnings.

## 2.2.0

 - **FEAT**: also allowMissingFields for defaults generator. Generated sources will result in compilation error if it's actually a problem.

## 2.1.5

 - **FIX**: Update analyzer dependency ([#4](https://gitlab.com/ruicraveiro/dart_framework/-/issues/4)).

## 2.1.4

 - Update a dependency to the latest release.

## 2.1.3

 - Update a dependency to the latest release.

## 2.1.2

 - Update a dependency to the latest release.

## 2.1.1

- Improved constructor support in DefaultsProviderGenerator
- Throw UnimplementedError when trying to create a default value for a field referring to an abstract class

## 2.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).


## 2.0.2

- Updated dependencies

## 2.0.1

- Updated dependencies

## 2.0.0

- Generated defaults provider prefixed with $. Replaced singleton with const class. (Breaking changes).

## 1.1.2

- Fixed bug with target classes without a non-nullable field

## 1.1.1

- Added reference to integrating framework.

## 1.1.0

- Removed redundant base classes

## 1.0.0

- Initial version