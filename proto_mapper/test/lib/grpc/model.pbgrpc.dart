///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'model.pb.dart' as $0;
export 'model.pb.dart';

class GRecipeServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.GRecipe, $0.GRecipe>(
      '/com.company.project.GRecipeService/Create',
      ($0.GRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.GRecipe, $0.GRecipe>(
      '/com.company.project.GRecipeService/Update',
      ($0.GRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.GKey, $0.G_GRecipeService_Delete_Return>(
          '/com.company.project.GRecipeService/Delete',
          ($0.GKey value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.G_GRecipeService_Delete_Return.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.GKey, $0.GRecipe>(
      '/com.company.project.GRecipeService/Get',
      ($0.GKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<
          $0.G_GRecipeService_Search_Parameters, $0.GListOfRecipe>(
      '/com.company.project.GRecipeService/Search',
      ($0.G_GRecipeService_Search_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GListOfRecipe.fromBuffer(value));
  static final _$searchNullable = $grpc.ClientMethod<
          $0.G_GRecipeService_SearchNullable_Parameters,
          $0.G_GRecipeService_SearchNullable_Return>(
      '/com.company.project.GRecipeService/SearchNullable',
      ($0.G_GRecipeService_SearchNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_SearchNullable_Return.fromBuffer(value));
  static final _$insertMany = $grpc.ClientMethod<$0.GListOfRecipe,
          $0.G_GRecipeService_InsertMany_Return>(
      '/com.company.project.GRecipeService/InsertMany',
      ($0.GListOfRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_InsertMany_Return.fromBuffer(value));
  static final _$getNullable = $grpc.ClientMethod<
          $0.G_GRecipeService_GetNullable_Parameters,
          $0.G_GRecipeService_GetNullable_Return>(
      '/com.company.project.GRecipeService/GetNullable',
      ($0.G_GRecipeService_GetNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetNullable_Return.fromBuffer(value));
  static final _$count = $grpc.ClientMethod<
          $0.G_GRecipeService_Count_Parameters,
          $0.G_GRecipeService_Count_Return>(
      '/com.company.project.GRecipeService/Count',
      ($0.G_GRecipeService_Count_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_Count_Return.fromBuffer(value));
  static final _$countNullable = $grpc.ClientMethod<
          $0.G_GRecipeService_CountNullable_Parameters,
          $0.G_GRecipeService_CountNullable_Return>(
      '/com.company.project.GRecipeService/CountNullable',
      ($0.G_GRecipeService_CountNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_CountNullable_Return.fromBuffer(value));
  static final _$reindex = $grpc.ClientMethod<
          $0.G_GRecipeService_Reindex_Parameters,
          $0.G_GRecipeService_Reindex_Return>(
      '/com.company.project.GRecipeService/Reindex',
      ($0.G_GRecipeService_Reindex_Parameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_Reindex_Return.fromBuffer(value));
  static final _$getMainRecipeType = $grpc.ClientMethod<
          $0.G_GRecipeService_GetMainRecipeType_Parameters,
          $0.G_GRecipeService_GetMainRecipeType_Return>(
      '/com.company.project.GRecipeService/GetMainRecipeType',
      ($0.G_GRecipeService_GetMainRecipeType_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetMainRecipeType_Return.fromBuffer(value));
  static final _$getMainRecipeTypeNullable = $grpc.ClientMethod<
          $0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters,
          $0.G_GRecipeService_GetMainRecipeTypeNullable_Return>(
      '/com.company.project.GRecipeService/GetMainRecipeTypeNullable',
      ($0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetMainRecipeTypeNullable_Return.fromBuffer(
              value));
  static final _$getRecipeTypeList = $grpc.ClientMethod<
          $0.G_GRecipeService_GetRecipeTypeList_Parameters,
          $0.G_GRecipeService_GetRecipeTypeList_Return>(
      '/com.company.project.GRecipeService/GetRecipeTypeList',
      ($0.G_GRecipeService_GetRecipeTypeList_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetRecipeTypeList_Return.fromBuffer(value));
  static final _$getRecipeTypeListNullable = $grpc.ClientMethod<
          $0.G_GRecipeService_GetRecipeTypeListNullable_Parameters,
          $0.G_GRecipeService_GetRecipeTypeListNullable_Return>(
      '/com.company.project.GRecipeService/GetRecipeTypeListNullable',
      ($0.G_GRecipeService_GetRecipeTypeListNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetRecipeTypeListNullable_Return.fromBuffer(
              value));
  static final _$getListOfInts = $grpc.ClientMethod<
          $0.G_GRecipeService_GetListOfInts_Parameters,
          $0.G_GRecipeService_GetListOfInts_Return>(
      '/com.company.project.GRecipeService/GetListOfInts',
      ($0.G_GRecipeService_GetListOfInts_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetListOfInts_Return.fromBuffer(value));
  static final _$getListOfIntsNullable = $grpc.ClientMethod<
          $0.G_GRecipeService_GetListOfIntsNullable_Parameters,
          $0.G_GRecipeService_GetListOfIntsNullable_Return>(
      '/com.company.project.GRecipeService/GetListOfIntsNullable',
      ($0.G_GRecipeService_GetListOfIntsNullable_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_GetListOfIntsNullable_Return.fromBuffer(value));
  static final _$searchRecipeStream = $grpc.ClientMethod<
          $0.G_GRecipeService_SearchRecipeStream_Parameters, $0.GRecipe>(
      '/com.company.project.GRecipeService/SearchRecipeStream',
      ($0.G_GRecipeService_SearchRecipeStream_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value));
  static final _$receiveStream =
      $grpc.ClientMethod<$0.GRecipe, $0.G_GRecipeService_ReceiveStream_Return>(
          '/com.company.project.GRecipeService/ReceiveStream',
          ($0.GRecipe value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.G_GRecipeService_ReceiveStream_Return.fromBuffer(value));
  static final _$serveBidiStream = $grpc.ClientMethod<$0.GRecipe, $0.GCategory>(
      '/com.company.project.GRecipeService/ServeBidiStream',
      ($0.GRecipe value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GCategory.fromBuffer(value));
  static final _$receiveLotsOfArgs = $grpc.ClientMethod<
          $0.G_GRecipeService_ReceiveLotsOfArgs_Parameters,
          $0.G_GRecipeService_ReceiveLotsOfArgs_Return>(
      '/com.company.project.GRecipeService/ReceiveLotsOfArgs',
      ($0.G_GRecipeService_ReceiveLotsOfArgs_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_ReceiveLotsOfArgs_Return.fromBuffer(value));
  static final _$receiveLotsOfNullableArgs = $grpc.ClientMethod<
          $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters,
          $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>(
      '/com.company.project.GRecipeService/ReceiveLotsOfNullableArgs',
      ($0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return.fromBuffer(
              value));

  GRecipeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GRecipe> create($0.GRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GRecipe> update($0.GRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_Delete_Return> delete(
      $0.GKey request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.GRecipe> get($0.GKey request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.GListOfRecipe> search(
      $0.G_GRecipeService_Search_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_SearchNullable_Return>
      searchNullable($0.G_GRecipeService_SearchNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchNullable, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_InsertMany_Return> insertMany(
      $0.GListOfRecipe request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$insertMany, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetNullable_Return> getNullable(
      $0.G_GRecipeService_GetNullable_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNullable, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_Count_Return> count(
      $0.G_GRecipeService_Count_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$count, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_CountNullable_Return> countNullable(
      $0.G_GRecipeService_CountNullable_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$countNullable, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_Reindex_Return> reindex(
      $0.G_GRecipeService_Reindex_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reindex, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetMainRecipeType_Return>
      getMainRecipeType(
          $0.G_GRecipeService_GetMainRecipeType_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainRecipeType, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable(
          $0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMainRecipeTypeNullable, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetRecipeTypeList_Return>
      getRecipeTypeList(
          $0.G_GRecipeService_GetRecipeTypeList_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecipeTypeList, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable(
          $0.G_GRecipeService_GetRecipeTypeListNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecipeTypeListNullable, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetListOfInts_Return> getListOfInts(
      $0.G_GRecipeService_GetListOfInts_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getListOfInts, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_GetListOfIntsNullable_Return>
      getListOfIntsNullable(
          $0.G_GRecipeService_GetListOfIntsNullable_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getListOfIntsNullable, request, options: options);
  }

  $grpc.ResponseStream<$0.GRecipe> searchRecipeStream(
      $0.G_GRecipeService_SearchRecipeStream_Parameters request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$searchRecipeStream, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_ReceiveStream_Return> receiveStream(
      $async.Stream<$0.GRecipe> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$receiveStream, request, options: options)
        .single;
  }

  $grpc.ResponseStream<$0.GCategory> serveBidiStream(
      $async.Stream<$0.GRecipe> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$serveBidiStream, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_ReceiveLotsOfArgs_Return>
      receiveLotsOfArgs(
          $0.G_GRecipeService_ReceiveLotsOfArgs_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveLotsOfArgs, request, options: options);
  }

  $grpc.ResponseFuture<$0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs(
          $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveLotsOfNullableArgs, request,
        options: options);
  }
}

abstract class GRecipeServiceBase extends $grpc.Service {
  $core.String get $name => 'com.company.project.GRecipeService';

  GRecipeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GRecipe, $0.GRecipe>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GRecipe, $0.GRecipe>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GKey, $0.G_GRecipeService_Delete_Return>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GKey.fromBuffer(value),
        ($0.G_GRecipeService_Delete_Return value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GKey, $0.GRecipe>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GKey.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.G_GRecipeService_Search_Parameters,
            $0.GListOfRecipe>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_Search_Parameters.fromBuffer(value),
        ($0.GListOfRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_SearchNullable_Parameters,
            $0.G_GRecipeService_SearchNullable_Return>(
        'SearchNullable',
        searchNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_SearchNullable_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_SearchNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GListOfRecipe,
            $0.G_GRecipeService_InsertMany_Return>(
        'InsertMany',
        insertMany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GListOfRecipe.fromBuffer(value),
        ($0.G_GRecipeService_InsertMany_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.G_GRecipeService_GetNullable_Parameters,
            $0.G_GRecipeService_GetNullable_Return>(
        'GetNullable',
        getNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetNullable_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_GetNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.G_GRecipeService_Count_Parameters,
            $0.G_GRecipeService_Count_Return>(
        'Count',
        count_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_Count_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_Count_Return value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.G_GRecipeService_CountNullable_Parameters,
            $0.G_GRecipeService_CountNullable_Return>(
        'CountNullable',
        countNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_CountNullable_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_CountNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.G_GRecipeService_Reindex_Parameters,
            $0.G_GRecipeService_Reindex_Return>(
        'Reindex',
        reindex_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_Reindex_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_Reindex_Return value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_GetMainRecipeType_Parameters,
            $0.G_GRecipeService_GetMainRecipeType_Return>(
        'GetMainRecipeType',
        getMainRecipeType_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetMainRecipeType_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_GetMainRecipeType_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters,
            $0.G_GRecipeService_GetMainRecipeTypeNullable_Return>(
        'GetMainRecipeTypeNullable',
        getMainRecipeTypeNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters.fromBuffer(
                value),
        ($0.G_GRecipeService_GetMainRecipeTypeNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_GetRecipeTypeList_Parameters,
            $0.G_GRecipeService_GetRecipeTypeList_Return>(
        'GetRecipeTypeList',
        getRecipeTypeList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetRecipeTypeList_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_GetRecipeTypeList_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_GetRecipeTypeListNullable_Parameters,
            $0.G_GRecipeService_GetRecipeTypeListNullable_Return>(
        'GetRecipeTypeListNullable',
        getRecipeTypeListNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetRecipeTypeListNullable_Parameters.fromBuffer(
                value),
        ($0.G_GRecipeService_GetRecipeTypeListNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.G_GRecipeService_GetListOfInts_Parameters,
            $0.G_GRecipeService_GetListOfInts_Return>(
        'GetListOfInts',
        getListOfInts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetListOfInts_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_GetListOfInts_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_GetListOfIntsNullable_Parameters,
            $0.G_GRecipeService_GetListOfIntsNullable_Return>(
        'GetListOfIntsNullable',
        getListOfIntsNullable_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_GetListOfIntsNullable_Parameters.fromBuffer(
                value),
        ($0.G_GRecipeService_GetListOfIntsNullable_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_SearchRecipeStream_Parameters, $0.GRecipe>(
        'SearchRecipeStream',
        searchRecipeStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_SearchRecipeStream_Parameters.fromBuffer(value),
        ($0.GRecipe value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GRecipe,
            $0.G_GRecipeService_ReceiveStream_Return>(
        'ReceiveStream',
        receiveStream,
        true,
        false,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.G_GRecipeService_ReceiveStream_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GRecipe, $0.GCategory>(
        'ServeBidiStream',
        serveBidiStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.GRecipe.fromBuffer(value),
        ($0.GCategory value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_ReceiveLotsOfArgs_Parameters,
            $0.G_GRecipeService_ReceiveLotsOfArgs_Return>(
        'ReceiveLotsOfArgs',
        receiveLotsOfArgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_ReceiveLotsOfArgs_Parameters.fromBuffer(value),
        ($0.G_GRecipeService_ReceiveLotsOfArgs_Return value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters,
            $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>(
        'ReceiveLotsOfNullableArgs',
        receiveLotsOfNullableArgs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters.fromBuffer(
                value),
        ($0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return value) =>
            value.writeToBuffer()));
  }

  $async.Future<$0.GRecipe> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GRecipe> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GRecipe> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GRecipe> request) async {
    return update(call, await request);
  }

  $async.Future<$0.G_GRecipeService_Delete_Return> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GKey> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.GRecipe> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GKey> request) async {
    return get(call, await request);
  }

  $async.Future<$0.GListOfRecipe> search_Pre($grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_Search_Parameters> request) async {
    return search(call, await request);
  }

  $async.Future<$0.G_GRecipeService_SearchNullable_Return> searchNullable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_SearchNullable_Parameters>
          request) async {
    return searchNullable(call, await request);
  }

  $async.Future<$0.G_GRecipeService_InsertMany_Return> insertMany_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GListOfRecipe> request) async {
    return insertMany(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetNullable_Return> getNullable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_GetNullable_Parameters> request) async {
    return getNullable(call, await request);
  }

  $async.Future<$0.G_GRecipeService_Count_Return> count_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_Count_Parameters> request) async {
    return count(call, await request);
  }

  $async.Future<$0.G_GRecipeService_CountNullable_Return> countNullable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_CountNullable_Parameters>
          request) async {
    return countNullable(call, await request);
  }

  $async.Future<$0.G_GRecipeService_Reindex_Return> reindex_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_Reindex_Parameters> request) async {
    return reindex(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetMainRecipeType_Return>
      getMainRecipeType_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.G_GRecipeService_GetMainRecipeType_Parameters>
              request) async {
    return getMainRecipeType(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters>
              request) async {
    return getMainRecipeTypeNullable(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetRecipeTypeList_Return>
      getRecipeTypeList_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.G_GRecipeService_GetRecipeTypeList_Parameters>
              request) async {
    return getRecipeTypeList(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $0.G_GRecipeService_GetRecipeTypeListNullable_Parameters>
              request) async {
    return getRecipeTypeListNullable(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetListOfInts_Return> getListOfInts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_GetListOfInts_Parameters>
          request) async {
    return getListOfInts(call, await request);
  }

  $async.Future<$0.G_GRecipeService_GetListOfIntsNullable_Return>
      getListOfIntsNullable_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.G_GRecipeService_GetListOfIntsNullable_Parameters>
              request) async {
    return getListOfIntsNullable(call, await request);
  }

  $async.Stream<$0.GRecipe> searchRecipeStream_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.G_GRecipeService_SearchRecipeStream_Parameters>
          request) async* {
    yield* searchRecipeStream(call, await request);
  }

  $async.Future<$0.G_GRecipeService_ReceiveLotsOfArgs_Return>
      receiveLotsOfArgs_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.G_GRecipeService_ReceiveLotsOfArgs_Parameters>
              request) async {
    return receiveLotsOfArgs(call, await request);
  }

  $async.Future<$0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters>
              request) async {
    return receiveLotsOfNullableArgs(call, await request);
  }

  $async.Future<$0.GRecipe> create($grpc.ServiceCall call, $0.GRecipe request);
  $async.Future<$0.GRecipe> update($grpc.ServiceCall call, $0.GRecipe request);
  $async.Future<$0.G_GRecipeService_Delete_Return> delete(
      $grpc.ServiceCall call, $0.GKey request);
  $async.Future<$0.GRecipe> get($grpc.ServiceCall call, $0.GKey request);
  $async.Future<$0.GListOfRecipe> search(
      $grpc.ServiceCall call, $0.G_GRecipeService_Search_Parameters request);
  $async.Future<$0.G_GRecipeService_SearchNullable_Return> searchNullable(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_SearchNullable_Parameters request);
  $async.Future<$0.G_GRecipeService_InsertMany_Return> insertMany(
      $grpc.ServiceCall call, $0.GListOfRecipe request);
  $async.Future<$0.G_GRecipeService_GetNullable_Return> getNullable(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_GetNullable_Parameters request);
  $async.Future<$0.G_GRecipeService_Count_Return> count(
      $grpc.ServiceCall call, $0.G_GRecipeService_Count_Parameters request);
  $async.Future<$0.G_GRecipeService_CountNullable_Return> countNullable(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_CountNullable_Parameters request);
  $async.Future<$0.G_GRecipeService_Reindex_Return> reindex(
      $grpc.ServiceCall call, $0.G_GRecipeService_Reindex_Parameters request);
  $async.Future<$0.G_GRecipeService_GetMainRecipeType_Return> getMainRecipeType(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_GetMainRecipeType_Parameters request);
  $async.Future<$0.G_GRecipeService_GetMainRecipeTypeNullable_Return>
      getMainRecipeTypeNullable($grpc.ServiceCall call,
          $0.G_GRecipeService_GetMainRecipeTypeNullable_Parameters request);
  $async.Future<$0.G_GRecipeService_GetRecipeTypeList_Return> getRecipeTypeList(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_GetRecipeTypeList_Parameters request);
  $async.Future<$0.G_GRecipeService_GetRecipeTypeListNullable_Return>
      getRecipeTypeListNullable($grpc.ServiceCall call,
          $0.G_GRecipeService_GetRecipeTypeListNullable_Parameters request);
  $async.Future<$0.G_GRecipeService_GetListOfInts_Return> getListOfInts(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_GetListOfInts_Parameters request);
  $async.Future<$0.G_GRecipeService_GetListOfIntsNullable_Return>
      getListOfIntsNullable($grpc.ServiceCall call,
          $0.G_GRecipeService_GetListOfIntsNullable_Parameters request);
  $async.Stream<$0.GRecipe> searchRecipeStream($grpc.ServiceCall call,
      $0.G_GRecipeService_SearchRecipeStream_Parameters request);
  $async.Future<$0.G_GRecipeService_ReceiveStream_Return> receiveStream(
      $grpc.ServiceCall call, $async.Stream<$0.GRecipe> request);
  $async.Stream<$0.GCategory> serveBidiStream(
      $grpc.ServiceCall call, $async.Stream<$0.GRecipe> request);
  $async.Future<$0.G_GRecipeService_ReceiveLotsOfArgs_Return> receiveLotsOfArgs(
      $grpc.ServiceCall call,
      $0.G_GRecipeService_ReceiveLotsOfArgs_Parameters request);
  $async.Future<$0.G_GRecipeService_ReceiveLotsOfNullableArgs_Return>
      receiveLotsOfNullableArgs($grpc.ServiceCall call,
          $0.G_GRecipeService_ReceiveLotsOfNullableArgs_Parameters request);
}
