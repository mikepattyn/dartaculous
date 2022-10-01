Firebase Administration based on the [official Firebase Admin GO SDK](https://firebase.google.com/docs/auth/admin).

## Features

Exposes the [official Firebase Admin GO SDK](https://firebase.google.com/docs/auth/admin) to Dart to enable the usage of that SDK on the server. 

## Considerations before using

The purpose of this package, as an alternative to other implementations, was to have parts of the official Firebase Admin SDK on the server possible. Since at the time of this writing there is no official Firebase Dart Admin SDK, the closest approach was to use the official GO SDK and expose it to Dart via FFI - Foreign Function Interface.

While there is some extra confidence by exposing an official SDK, there is a caveat to this implementation that you should be aware of.

While both Dart and Go are garbage collected platforms, the interface used to communicate between them is C interface (Dart FFI coupled with Go's CGO). This means that there is data marshalling going on. Mainly, this means that there is manual memory allocation and destruction going on. While we have taken a lot of care to prevent any memory leak, we would be grateful for any memory leak report in case you experience one, by filling an issue on GitHub.


## Getting started

In order to use this package:
- Add this package to your package dependencies on pubspec.yaml and run ```dart pub get```.

- The package requires a dynamic library, ```firebase_go_admin.so```. You will find its GO source code under ```~/.pub-cache/hosted/pub.dartlang.org/firebase_go_admin-<version>/go/```. Each time you upgrade to the latest version of this package, you will most probably need to recompile the latest version of the dynamic library and have it copied to your application. The easiest way to do so is by doing the following:

  1. Ensure you have GO SDK installed on your machine. If you don't, you can download GO from https://go.dev/dl/. Minimum version is 1.19.1.

  2. Ensure you have GCC installed on your machine. For Windows users, you can use [tdm-gcc](https://jmeubank.github.io/tdm-gcc/download/).

  3. Install ffi_lib, by running ```dart pub global activate ffi_lib```. The minimum required version is 1.1.0.
  
  4. For the initial installation and for each time you upgrade this package, run the following command on the root directory of your application: ```ffi-lib firebase_go_admin```. This tool will compile the native library from the GO code present in the package and it will then copy the compiled package to the bin sub-directory of your package, where ```firebase_go_admin``` expects to find it.


- Generate and download a new private key following the instruction in https://firebase.google.com/docs/admin/setup, under **To generate a private key file for your service account**.

- If you are adding the downloaded file containing the private key to a directory under your Git repository (or any other source control repository, for that matter), we highly advise you to **add it to your ``.gitignore`` file**. You do not want your private keys to end exposed in your code repository. While each downloaded private key file has a different filename, for referencing purposes, we will assume it has been renamed to ``service-account.json``.


## Usage

After completing the steps in the previous section, you should be ready to use the API.

First thing we need to do, preferably on the main function, is to initialize the API. We need to do this only once for the entire life of your application and regardless of the isolates you create later. In other words, as long as you've called ``initialize`` from your main Isolate (or any other isolate for that matter), you never need to call it again, not even on isolates you spawn later on.

```dart
import 'package:firebase_go_admin/firebase_go_admin.dart' as firebase;

void main() {
    
    firebase.initialize('service-account.json');
    
    // remaining initialization and app running
}
```

Please note the following:
- The call to initialize referes to ``service-account.json``. This would be the file containing your private key (after we renamed it). In the example, we are assuming it is either in your search path or under the application's directory. Alternatively, you may specify a complete absolute path to the file.
- The call is synchronous. This is the only synchronous call to this API, as strictly every other call is async.


After initializing, all remaining calls to the API are very straightforward. For instance, the following code would enable us to create a custom token 
