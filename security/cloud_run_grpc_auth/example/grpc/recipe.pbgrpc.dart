///
//  Generated code. Do not modify.
//  source: recipe.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'recipe.pb.dart' as $0;
export 'recipe.pb.dart';

class GRecipeServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.GRecipe, $0.GRecipe>(
      '/GRecipeService/Create',
      ($0.GRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));

  GRecipeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GRecipe> create($0.GRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }
}

abstract class GRecipeServiceBase extends $grpc.Service {
  $core.String get $name => 'GRecipeService';

  GRecipeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GRecipe, $0.GRecipe>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
  }

  $async.Future<$0.GRecipe> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GRecipe> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GRecipe> create($grpc.ServiceCall call, $0.GRecipe request);
}
