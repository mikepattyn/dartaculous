## 4.3.0

 - **FIX**: Improved ffi generated code.
 - **FEAT**: Added direct parameter to Connection.connectWithString.
 - **FEAT**: Add support for direct connection.

## 4.2.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 4.2.0-dev.1

 - **FEAT**: Added direct parameter to Connection.connectWithString.

## 4.2.0-dev.0

 - **FEAT**: Add support for direct connection.

## 4.1.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 4.1.0-dev.0

 - **FEAT**: mongo_go probes for <cwd> directory, bin, lib and go subdirectories for go library.

## 4.0.0

> Note: This release has breaking changes.

 - **FIX**: Minor fixes to README.
 - **FIX**: bumped dart_bridge to v1.0.1.
 - **FIX**: remove root mongo_proxy.so.
 - **FIX**: moved mongo_proxy.so to lib.
 - **FIX**: mongo_go pubspec explicitly stating only Linux is supported.
 - **FIX**: Fixed README reference to mongo_proxy.so to refer to main branch's version.
 - **FIX**: initializing from all connection factory constructors.
 - **FIX**: mongo_go depends on bson 3.0.0.
 - **FIX**: restored the lock on the dependency of decimal 2.2.0.
 - **FIX**: using bson2 to enable upgrade to decimal 2.3.0.
 - **FIX**: locked Decimal dependency to 2.2.0.
 - **FIX**: improved documentation.
 - **FIX**: Makefile copying mongo_proxy.so instead of link.
 - **FEAT**: Added name field to Collection.
 - **FEAT**: Added MongoNoDocumentsError.
 - **FEAT**: Moved go code into mongo_go package.
 - **FEAT**: Added findOne.
 - **FEAT**: include mongo_go.so in package.
 - **BREAKING** **FEAT**: Type-safe exceptions.
 - **BREAKING** **FEAT**: Removed native library from package.
 - **BREAKING** **FEAT**: Updated README to refer to the usage of ffi-lib.
 - **BREAKING** **FEAT**: changed mongo_proxy.so to mongo_go.so.
 - **BREAKING** **FEAT**: Bulk write operations.

## 3.1.0

 - **FEAT**: Added MongoNoDocumentsError.

## 3.0.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Type-safe exceptions.

## 2.3.1

 - **FIX**: Minor fixes to README.

## 2.3.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.3.0-dev.2

 - **FIX**: bumped dart_bridge to v1.0.1.

## 2.3.0-dev.1

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Removed native library from package.

## 2.3.0-dev.0

 - **FEAT**: Moved go code into mongo_go package.

## 2.2.0

 - **FEAT**: Added findOne.

## 2.1.1

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 2.1.1-dev.2

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: changed mongo_proxy.so to mongo_go.so.

## 2.1.1-dev.1

 - **FIX**: remove root mongo_proxy.so.

## 2.1.1-dev.0

 - **FIX**: moved mongo_proxy.so to lib.

## 2.1.0

 - **FEAT**: include mongo_go.so in package.

## 2.0.3

 - **FIX**: mongo_go pubspec explicitly stating only Linux is supported.

## 2.0.2

 - **FIX**: Fixed README reference to mongo_proxy.so to refer to main branch's version.

## 2.0.1

 - **FIX**: initializing from all connection factory constructors.

## 2.0.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Bulk write operations.

## 1.0.0

 - **FIX**: mongo_go depends on bson 3.0.0.

## 0.9.1+5

 - **FIX**: restored the lock on the dependency of decimal 2.2.0.

## 0.9.1+4

 - **FIX**: using bson2 to enable upgrade to decimal 2.3.0.

## 0.9.1+3

 - **FIX**: locked Decimal dependency to 2.2.0.

## 0.9.1+2

 - **FIX**: improved documentation.

## 0.9.1+1

 - **FIX**: Makefile copying mongo_proxy.so instead of link.

## 0.9.1

- Fixed very minor typo on README


## 0.9.0

- Initial version


