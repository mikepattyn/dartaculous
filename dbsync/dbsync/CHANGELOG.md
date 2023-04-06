## 0.0.1-dev.18

- Updating local db when syncing to server in deferred

## 0.0.1-dev.17

- Throw error when cancelled.

## 0.0.1-dev.16

- Restored broad-scale transactions and added logging.

## 0.0.1-dev.15

- Fixed wrong context for local delete all.

## 0.0.1-dev.14

- Replaced global transaction with transaction per synched item

## 0.0.1-dev.13

- Removed dependency from Sqlite.


## 0.0.1-dev.12

- sync handler may return null from getRemote

## 0.0.1-dev.11

- Offline is totally based on unavailable


## 0.0.1-dev.10

- getRemote is @protected


## 0.0.1-dev.9

- Added support for temporary service unavailability


## 0.0.1-dev.8

- Fixed missing exports.

## 0.0.1-dev.7

- Split Synchronizer class implementation into a composition of UploadSynchronizer and DownloadSynchronizer, being either of the last two usable independently.


## 0.0.1-dev.6

- Added LocalChangesSchema.


## 0.0.1-dev.5

- Added LocalEntitySchema and base implementation mixin.

## 0.0.1-dev.4

- Added clearAllLocal to EntityLocalRepository.

## 0.0.1-dev.3

 - Added EntityLocalRepository

## 0.0.1-dev.2

 - Major simplifications of the API. 

The original implementation required too many interfaces to be implemented.
This version dramatically simplifies the work required to use this package.


## 0.0.1-dev.1

 - **FIX**: Changed repository URL.

## 0.0.1-dev.0

- Pre-release version.

This version is still severely lacking in documentation.
