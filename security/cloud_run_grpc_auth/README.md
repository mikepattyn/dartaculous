Provides support for obtaining OpenId tokens to be used by gRPC services hosted in Google Cloud Run.

To better understand the purpose of this package, it is making available for gRPC and Dart the same use case as the following guide explains for other languages and REST: 
https://cloud.google.com/run/docs/tutorials/secure-services

## Getting started

Let's assume we have the following proto file, our service has the generated Dart client code and the service is hosted on Google Cloud Run:

```protobuf
syntax = "proto3";

service GRecipeService
{
  rpc Create (GRecipe) returns (GRecipe);
}

message GRecipe
{
  string title = 1;
  string description = 2;
  string ingredients = 3;
  string steps = 4;
}   
```

The following example demonstrates how to authenticate with the service either when running from inside Google Cloud Run (Google Cloud Run to Google Cloud Run) or calling from outside Google Cloud Run:

```dart
import 'dart:io';

import 'package:cloud_run_grpc_auth/cloud_run_grpc_auth.dart';
import 'package:grpc/grpc.dart';

import 'grpc/recipe.pbgrpc.dart';

void main() async {
  // We begin by creating a normal gRPC client
  // in this case, we are focused on calling
  // a Google Cloud Run service from another
  // Google Cloud Run service
  final creds = ChannelCredentials.secure();
  final clientChannel = ClientChannel(
    'my-internal-service.run.app',
    port: 443,
    options: ChannelOptions(
      credentials: creds,
    ),
  );

  // One of the options is to use the service's default credentials.
  // This can only be used from Google Cloud.
  // First, we create the authenticator:
  final defaultAuthenticator = CloudRunDefaultAuthenticator();

  // then the client:
  final defaultClient = GRecipeServiceClient(clientChannel,
      options: defaultAuthenticator.toCallOptions);

  // Finally, we simply use the client
  final recipe = GRecipe();
  defaultClient.create(recipe);

  // Another option is to download the key from the user running the
  // service, and make it available to the container as a file
  // (or an environment variable, which ideally would be served by a secret)
  // This is convenient for development time and debugging as it allows to
  // authenticate with Google Cloud Run services from services being
  // hosted outside Google Cloud, as for instance developer machine.
  final serviceCredencials = await File('service-account.json').readAsString();
  final keyAuthenticator =
      CloudRunServiceAccountAuthenticator(serviceCredencials);
  final keyClient = GRecipeServiceClient(clientChannel,
      options: keyAuthenticator.toCallOptions);

  // Finally, again we simply use the client
  keyClient.create(recipe);

  // For convenience, toCallOptions belongs to a shared super class
  // shared by CloudRunServiceAccountAuthenticator and CloudRunDefaultAuthenticator.
}
```