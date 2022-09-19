## 3.5.1

 - **CHORE**: Upgraded dependencies

## 3.5.0

 - **FEAT**: Added support for multi-host connection string.

## 3.4.0

 - **FEAT**: Added support for multi-host connection string.

## 3.3.1

 - **FIX**: DbClient.runAndReturnStream now throws proper error when invalid query.

## 3.3.0

 - **FEAT**: Allow null bound variable value.

## 3.2.1

 - **FIX**: CollectionsKeyOptions made const.

## 3.2.0

 - **FEAT**: Added collection key generation options.

## 3.1.0

 - **FIX**: newQuery method moved from extension into DbClient.
 - **FEAT**: Support for creating TTL indexes.

## 3.0.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: ArangoDBClient is deprecated by DbClient.
 - **BREAKING** **FEAT**: ArangoDBClient is deprecated by DbClient.

## 2.1.1
- Made CollectionPropertiesResponse.isDisjoint nullable

## 2.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).


## 2.0.5

- Bumped test package dependency version
- Reorganized CHANGELOG

## 2.0.4

- CollectionPropertiesResponse accepts nullable tempObjectId

## 2.0.3

- Connect with securityContext

## 2.0.2

- Casting selectivityEstimate to double on response

## 2.0.1

- Fixed wrong type in IndexInfo.selectivityEstimate

## 2.0.0

- Collection and Index maintenance multiple parameters replaced by single criteria parameter (breaking change)

## 1.1.2

- Updated dev dependencies

## 1.1.1

- Added reference to integrating framework.

## 1.1.0

- Added support for transactions

## 1.0.2

- Moved code to monorepo

## 1.0.1

- Changed license to MIT

## 1.0.0

- Release

## 1.0.0-rc.3

- runAndReturnStream returns stream of Map<String, dynamic>

## 1.0.0-rc.2

- Queries returned a flattened stream

## 1.0.0-rc.1

- Bumped to 1.0.0-rc.1

## 0.4.0-nullsafety.0

- getDocument returns non-nullable object

## 0.3.0-nullsafety.0

- Forked from [dart_arango_min](https://pub.dev/packages/dart_arango_min)
- Upgrade to null safety
