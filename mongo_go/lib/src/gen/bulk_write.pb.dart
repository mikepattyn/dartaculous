///
//  Generated code. Do not modify.
//  source: bulk_write.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'request_context.pb.dart' as $5;
import 'google/protobuf/wrappers.pb.dart' as $6;

enum BulkWriteRequest_Opts { options, notSet }

class BulkWriteRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BulkWriteRequest_Opts>
      _BulkWriteRequest_OptsByTag = {
    5: BulkWriteRequest_Opts.options,
    0: BulkWriteRequest_Opts.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BulkWriteRequest',
      createEmptyInstance: create)
    ..oo(0, [5])
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionOid',
        $pb.PbFieldType.OY,
        protoName: 'collectionOid')
    ..aOM<$5.RequestContext>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'context',
        subBuilder: $5.RequestContext.create)
    ..pc<WriteModel>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writeModels',
        $pb.PbFieldType.PM,
        protoName: 'writeModels',
        subBuilder: WriteModel.create)
    ..aOM<BulkWriteOptions>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'options',
        subBuilder: BulkWriteOptions.create)
    ..hasRequiredFields = false;

  BulkWriteRequest._() : super();
  factory BulkWriteRequest({
    $core.List<$core.int>? collectionOid,
    $5.RequestContext? context,
    $core.Iterable<WriteModel>? writeModels,
    BulkWriteOptions? options,
  }) {
    final _result = create();
    if (collectionOid != null) {
      _result.collectionOid = collectionOid;
    }
    if (context != null) {
      _result.context = context;
    }
    if (writeModels != null) {
      _result.writeModels.addAll(writeModels);
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory BulkWriteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BulkWriteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BulkWriteRequest clone() => BulkWriteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BulkWriteRequest copyWith(void Function(BulkWriteRequest) updates) =>
      super.copyWith((message) => updates(message as BulkWriteRequest))
          as BulkWriteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkWriteRequest create() => BulkWriteRequest._();
  BulkWriteRequest createEmptyInstance() => create();
  static $pb.PbList<BulkWriteRequest> createRepeated() =>
      $pb.PbList<BulkWriteRequest>();
  @$core.pragma('dart2js:noInline')
  static BulkWriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkWriteRequest>(create);
  static BulkWriteRequest? _defaultInstance;

  BulkWriteRequest_Opts whichOpts() =>
      _BulkWriteRequest_OptsByTag[$_whichOneof(0)]!;
  void clearOpts() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get collectionOid => $_getN(0);
  @$pb.TagNumber(1)
  set collectionOid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCollectionOid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionOid() => clearField(1);

  @$pb.TagNumber(2)
  $5.RequestContext get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($5.RequestContext v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
  @$pb.TagNumber(2)
  $5.RequestContext ensureContext() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<WriteModel> get writeModels => $_getList(2);

  @$pb.TagNumber(5)
  BulkWriteOptions get options => $_getN(3);
  @$pb.TagNumber(5)
  set options(BulkWriteOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(5)
  void clearOptions() => clearField(5);
  @$pb.TagNumber(5)
  BulkWriteOptions ensureOptions() => $_ensure(3);
}

class BulkWriteOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BulkWriteOptions',
      createEmptyInstance: create)
    ..aOM<$6.BoolValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bypassDocumentValidation',
        subBuilder: $6.BoolValue.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'comment',
        $pb.PbFieldType.OY)
    ..aOM<$6.BoolValue>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ordered',
        subBuilder: $6.BoolValue.create)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'let',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  BulkWriteOptions._() : super();
  factory BulkWriteOptions({
    $6.BoolValue? bypassDocumentValidation,
    $core.List<$core.int>? comment,
    $6.BoolValue? ordered,
    $core.List<$core.int>? let,
  }) {
    final _result = create();
    if (bypassDocumentValidation != null) {
      _result.bypassDocumentValidation = bypassDocumentValidation;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (ordered != null) {
      _result.ordered = ordered;
    }
    if (let != null) {
      _result.let = let;
    }
    return _result;
  }
  factory BulkWriteOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BulkWriteOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BulkWriteOptions clone() => BulkWriteOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BulkWriteOptions copyWith(void Function(BulkWriteOptions) updates) =>
      super.copyWith((message) => updates(message as BulkWriteOptions))
          as BulkWriteOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkWriteOptions create() => BulkWriteOptions._();
  BulkWriteOptions createEmptyInstance() => create();
  static $pb.PbList<BulkWriteOptions> createRepeated() =>
      $pb.PbList<BulkWriteOptions>();
  @$core.pragma('dart2js:noInline')
  static BulkWriteOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkWriteOptions>(create);
  static BulkWriteOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $6.BoolValue get bypassDocumentValidation => $_getN(0);
  @$pb.TagNumber(1)
  set bypassDocumentValidation($6.BoolValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBypassDocumentValidation() => $_has(0);
  @$pb.TagNumber(1)
  void clearBypassDocumentValidation() => clearField(1);
  @$pb.TagNumber(1)
  $6.BoolValue ensureBypassDocumentValidation() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get comment => $_getN(1);
  @$pb.TagNumber(2)
  set comment($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);

  @$pb.TagNumber(3)
  $6.BoolValue get ordered => $_getN(2);
  @$pb.TagNumber(3)
  set ordered($6.BoolValue v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOrdered() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrdered() => clearField(3);
  @$pb.TagNumber(3)
  $6.BoolValue ensureOrdered() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get let => $_getN(3);
  @$pb.TagNumber(4)
  set let($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLet() => $_has(3);
  @$pb.TagNumber(4)
  void clearLet() => clearField(4);
}

enum WriteModel_Ops {
  insertOneModel,
  deleteOneModel,
  replaceOneModel,
  updateOneModel,
  deleteManyModel,
  updateManyModel,
  notSet
}

class WriteModel extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WriteModel_Ops> _WriteModel_OpsByTag = {
    1: WriteModel_Ops.insertOneModel,
    2: WriteModel_Ops.deleteOneModel,
    3: WriteModel_Ops.replaceOneModel,
    4: WriteModel_Ops.updateOneModel,
    5: WriteModel_Ops.deleteManyModel,
    6: WriteModel_Ops.updateManyModel,
    0: WriteModel_Ops.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WriteModel',
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<InsertOneModel>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'insertOneModel',
        protoName: 'insertOneModel',
        subBuilder: InsertOneModel.create)
    ..aOM<DeleteOneModel>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deleteOneModel',
        protoName: 'deleteOneModel',
        subBuilder: DeleteOneModel.create)
    ..aOM<ReplaceOneModel>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'replaceOneModel',
        protoName: 'replaceOneModel',
        subBuilder: ReplaceOneModel.create)
    ..aOM<UpdateOneModel>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateOneModel',
        protoName: 'updateOneModel',
        subBuilder: UpdateOneModel.create)
    ..aOM<DeleteManyModel>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deleteManyModel',
        protoName: 'deleteManyModel',
        subBuilder: DeleteManyModel.create)
    ..aOM<UpdateManyModel>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateManyModel',
        protoName: 'updateManyModel',
        subBuilder: UpdateManyModel.create)
    ..hasRequiredFields = false;

  WriteModel._() : super();
  factory WriteModel({
    InsertOneModel? insertOneModel,
    DeleteOneModel? deleteOneModel,
    ReplaceOneModel? replaceOneModel,
    UpdateOneModel? updateOneModel,
    DeleteManyModel? deleteManyModel,
    UpdateManyModel? updateManyModel,
  }) {
    final _result = create();
    if (insertOneModel != null) {
      _result.insertOneModel = insertOneModel;
    }
    if (deleteOneModel != null) {
      _result.deleteOneModel = deleteOneModel;
    }
    if (replaceOneModel != null) {
      _result.replaceOneModel = replaceOneModel;
    }
    if (updateOneModel != null) {
      _result.updateOneModel = updateOneModel;
    }
    if (deleteManyModel != null) {
      _result.deleteManyModel = deleteManyModel;
    }
    if (updateManyModel != null) {
      _result.updateManyModel = updateManyModel;
    }
    return _result;
  }
  factory WriteModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WriteModel clone() => WriteModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WriteModel copyWith(void Function(WriteModel) updates) =>
      super.copyWith((message) => updates(message as WriteModel))
          as WriteModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteModel create() => WriteModel._();
  WriteModel createEmptyInstance() => create();
  static $pb.PbList<WriteModel> createRepeated() => $pb.PbList<WriteModel>();
  @$core.pragma('dart2js:noInline')
  static WriteModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteModel>(create);
  static WriteModel? _defaultInstance;

  WriteModel_Ops whichOps() => _WriteModel_OpsByTag[$_whichOneof(0)]!;
  void clearOps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  InsertOneModel get insertOneModel => $_getN(0);
  @$pb.TagNumber(1)
  set insertOneModel(InsertOneModel v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInsertOneModel() => $_has(0);
  @$pb.TagNumber(1)
  void clearInsertOneModel() => clearField(1);
  @$pb.TagNumber(1)
  InsertOneModel ensureInsertOneModel() => $_ensure(0);

  @$pb.TagNumber(2)
  DeleteOneModel get deleteOneModel => $_getN(1);
  @$pb.TagNumber(2)
  set deleteOneModel(DeleteOneModel v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDeleteOneModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteOneModel() => clearField(2);
  @$pb.TagNumber(2)
  DeleteOneModel ensureDeleteOneModel() => $_ensure(1);

  @$pb.TagNumber(3)
  ReplaceOneModel get replaceOneModel => $_getN(2);
  @$pb.TagNumber(3)
  set replaceOneModel(ReplaceOneModel v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReplaceOneModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplaceOneModel() => clearField(3);
  @$pb.TagNumber(3)
  ReplaceOneModel ensureReplaceOneModel() => $_ensure(2);

  @$pb.TagNumber(4)
  UpdateOneModel get updateOneModel => $_getN(3);
  @$pb.TagNumber(4)
  set updateOneModel(UpdateOneModel v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUpdateOneModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateOneModel() => clearField(4);
  @$pb.TagNumber(4)
  UpdateOneModel ensureUpdateOneModel() => $_ensure(3);

  @$pb.TagNumber(5)
  DeleteManyModel get deleteManyModel => $_getN(4);
  @$pb.TagNumber(5)
  set deleteManyModel(DeleteManyModel v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDeleteManyModel() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeleteManyModel() => clearField(5);
  @$pb.TagNumber(5)
  DeleteManyModel ensureDeleteManyModel() => $_ensure(4);

  @$pb.TagNumber(6)
  UpdateManyModel get updateManyModel => $_getN(5);
  @$pb.TagNumber(6)
  set updateManyModel(UpdateManyModel v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdateManyModel() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateManyModel() => clearField(6);
  @$pb.TagNumber(6)
  UpdateManyModel ensureUpdateManyModel() => $_ensure(5);
}

class InsertOneModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'InsertOneModel',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  InsertOneModel._() : super();
  factory InsertOneModel({
    $core.List<$core.int>? document,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    return _result;
  }
  factory InsertOneModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InsertOneModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InsertOneModel clone() => InsertOneModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InsertOneModel copyWith(void Function(InsertOneModel) updates) =>
      super.copyWith((message) => updates(message as InsertOneModel))
          as InsertOneModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InsertOneModel create() => InsertOneModel._();
  InsertOneModel createEmptyInstance() => create();
  static $pb.PbList<InsertOneModel> createRepeated() =>
      $pb.PbList<InsertOneModel>();
  @$core.pragma('dart2js:noInline')
  static InsertOneModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InsertOneModel>(create);
  static InsertOneModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get document => $_getN(0);
  @$pb.TagNumber(1)
  set document($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
}

class DeleteOneModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteOneModel',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hint',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  DeleteOneModel._() : super();
  factory DeleteOneModel({
    $core.List<$core.int>? filter,
    $core.List<$core.int>? hint,
  }) {
    final _result = create();
    if (filter != null) {
      _result.filter = filter;
    }
    if (hint != null) {
      _result.hint = hint;
    }
    return _result;
  }
  factory DeleteOneModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteOneModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteOneModel clone() => DeleteOneModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteOneModel copyWith(void Function(DeleteOneModel) updates) =>
      super.copyWith((message) => updates(message as DeleteOneModel))
          as DeleteOneModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteOneModel create() => DeleteOneModel._();
  DeleteOneModel createEmptyInstance() => create();
  static $pb.PbList<DeleteOneModel> createRepeated() =>
      $pb.PbList<DeleteOneModel>();
  @$core.pragma('dart2js:noInline')
  static DeleteOneModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteOneModel>(create);
  static DeleteOneModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hint => $_getN(1);
  @$pb.TagNumber(2)
  set hint($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHint() => $_has(1);
  @$pb.TagNumber(2)
  void clearHint() => clearField(2);
}

class DeleteManyModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteManyModel',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hint',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  DeleteManyModel._() : super();
  factory DeleteManyModel({
    $core.List<$core.int>? filter,
    $core.List<$core.int>? hint,
  }) {
    final _result = create();
    if (filter != null) {
      _result.filter = filter;
    }
    if (hint != null) {
      _result.hint = hint;
    }
    return _result;
  }
  factory DeleteManyModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteManyModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteManyModel clone() => DeleteManyModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteManyModel copyWith(void Function(DeleteManyModel) updates) =>
      super.copyWith((message) => updates(message as DeleteManyModel))
          as DeleteManyModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteManyModel create() => DeleteManyModel._();
  DeleteManyModel createEmptyInstance() => create();
  static $pb.PbList<DeleteManyModel> createRepeated() =>
      $pb.PbList<DeleteManyModel>();
  @$core.pragma('dart2js:noInline')
  static DeleteManyModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteManyModel>(create);
  static DeleteManyModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hint => $_getN(1);
  @$pb.TagNumber(2)
  set hint($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHint() => $_has(1);
  @$pb.TagNumber(2)
  void clearHint() => clearField(2);
}

class ReplaceOneModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReplaceOneModel',
      createEmptyInstance: create)
    ..aOM<$6.BoolValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'upsert',
        subBuilder: $6.BoolValue.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'replacement',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hint',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  ReplaceOneModel._() : super();
  factory ReplaceOneModel({
    $6.BoolValue? upsert,
    $core.List<$core.int>? filter,
    $core.List<$core.int>? replacement,
    $core.List<$core.int>? hint,
  }) {
    final _result = create();
    if (upsert != null) {
      _result.upsert = upsert;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (replacement != null) {
      _result.replacement = replacement;
    }
    if (hint != null) {
      _result.hint = hint;
    }
    return _result;
  }
  factory ReplaceOneModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReplaceOneModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReplaceOneModel clone() => ReplaceOneModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReplaceOneModel copyWith(void Function(ReplaceOneModel) updates) =>
      super.copyWith((message) => updates(message as ReplaceOneModel))
          as ReplaceOneModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplaceOneModel create() => ReplaceOneModel._();
  ReplaceOneModel createEmptyInstance() => create();
  static $pb.PbList<ReplaceOneModel> createRepeated() =>
      $pb.PbList<ReplaceOneModel>();
  @$core.pragma('dart2js:noInline')
  static ReplaceOneModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplaceOneModel>(create);
  static ReplaceOneModel? _defaultInstance;

  @$pb.TagNumber(1)
  $6.BoolValue get upsert => $_getN(0);
  @$pb.TagNumber(1)
  set upsert($6.BoolValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpsert() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpsert() => clearField(1);
  @$pb.TagNumber(1)
  $6.BoolValue ensureUpsert() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get replacement => $_getN(2);
  @$pb.TagNumber(3)
  set replacement($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReplacement() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplacement() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hint => $_getN(3);
  @$pb.TagNumber(4)
  set hint($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHint() => $_has(3);
  @$pb.TagNumber(4)
  void clearHint() => clearField(4);
}

class UpdateOneModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateOneModel',
      createEmptyInstance: create)
    ..aOM<$6.BoolValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'upsert',
        subBuilder: $6.BoolValue.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'update',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hint',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  UpdateOneModel._() : super();
  factory UpdateOneModel({
    $6.BoolValue? upsert,
    $core.List<$core.int>? filter,
    $core.List<$core.int>? update,
    $core.List<$core.int>? hint,
  }) {
    final _result = create();
    if (upsert != null) {
      _result.upsert = upsert;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (update != null) {
      _result.update = update;
    }
    if (hint != null) {
      _result.hint = hint;
    }
    return _result;
  }
  factory UpdateOneModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateOneModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateOneModel clone() => UpdateOneModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateOneModel copyWith(void Function(UpdateOneModel) updates) =>
      super.copyWith((message) => updates(message as UpdateOneModel))
          as UpdateOneModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateOneModel create() => UpdateOneModel._();
  UpdateOneModel createEmptyInstance() => create();
  static $pb.PbList<UpdateOneModel> createRepeated() =>
      $pb.PbList<UpdateOneModel>();
  @$core.pragma('dart2js:noInline')
  static UpdateOneModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateOneModel>(create);
  static UpdateOneModel? _defaultInstance;

  @$pb.TagNumber(1)
  $6.BoolValue get upsert => $_getN(0);
  @$pb.TagNumber(1)
  set upsert($6.BoolValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpsert() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpsert() => clearField(1);
  @$pb.TagNumber(1)
  $6.BoolValue ensureUpsert() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get update => $_getN(2);
  @$pb.TagNumber(3)
  set update($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdate() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdate() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hint => $_getN(3);
  @$pb.TagNumber(4)
  set hint($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHint() => $_has(3);
  @$pb.TagNumber(4)
  void clearHint() => clearField(4);
}

class UpdateManyModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateManyModel',
      createEmptyInstance: create)
    ..aOM<$6.BoolValue>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'upsert',
        subBuilder: $6.BoolValue.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'update',
        $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hint',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  UpdateManyModel._() : super();
  factory UpdateManyModel({
    $6.BoolValue? upsert,
    $core.List<$core.int>? filter,
    $core.List<$core.int>? update,
    $core.List<$core.int>? hint,
  }) {
    final _result = create();
    if (upsert != null) {
      _result.upsert = upsert;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (update != null) {
      _result.update = update;
    }
    if (hint != null) {
      _result.hint = hint;
    }
    return _result;
  }
  factory UpdateManyModel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateManyModel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateManyModel clone() => UpdateManyModel()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateManyModel copyWith(void Function(UpdateManyModel) updates) =>
      super.copyWith((message) => updates(message as UpdateManyModel))
          as UpdateManyModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateManyModel create() => UpdateManyModel._();
  UpdateManyModel createEmptyInstance() => create();
  static $pb.PbList<UpdateManyModel> createRepeated() =>
      $pb.PbList<UpdateManyModel>();
  @$core.pragma('dart2js:noInline')
  static UpdateManyModel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateManyModel>(create);
  static UpdateManyModel? _defaultInstance;

  @$pb.TagNumber(1)
  $6.BoolValue get upsert => $_getN(0);
  @$pb.TagNumber(1)
  set upsert($6.BoolValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpsert() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpsert() => clearField(1);
  @$pb.TagNumber(1)
  $6.BoolValue ensureUpsert() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get filter => $_getN(1);
  @$pb.TagNumber(2)
  set filter($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get update => $_getN(2);
  @$pb.TagNumber(3)
  set update($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdate() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdate() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hint => $_getN(3);
  @$pb.TagNumber(4)
  set hint($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHint() => $_has(3);
  @$pb.TagNumber(4)
  void clearHint() => clearField(4);
}

class BulkWriteResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BulkWriteResult',
      createEmptyInstance: create)
    ..aInt64(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'insertedCount')
    ..aInt64(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'matchedCount')
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'modifiedCount')
    ..aInt64(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'deletedCount')
    ..aInt64(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'upsertedCount')
    ..m<$fixnum.Int64, $core.List<$core.int>>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'upsertedIds',
        entryClassName: 'BulkWriteResult.UpsertedIdsEntry',
        keyFieldType: $pb.PbFieldType.O6,
        valueFieldType: $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  BulkWriteResult._() : super();
  factory BulkWriteResult({
    $fixnum.Int64? insertedCount,
    $fixnum.Int64? matchedCount,
    $fixnum.Int64? modifiedCount,
    $fixnum.Int64? deletedCount,
    $fixnum.Int64? upsertedCount,
    $core.Map<$fixnum.Int64, $core.List<$core.int>>? upsertedIds,
  }) {
    final _result = create();
    if (insertedCount != null) {
      _result.insertedCount = insertedCount;
    }
    if (matchedCount != null) {
      _result.matchedCount = matchedCount;
    }
    if (modifiedCount != null) {
      _result.modifiedCount = modifiedCount;
    }
    if (deletedCount != null) {
      _result.deletedCount = deletedCount;
    }
    if (upsertedCount != null) {
      _result.upsertedCount = upsertedCount;
    }
    if (upsertedIds != null) {
      _result.upsertedIds.addAll(upsertedIds);
    }
    return _result;
  }
  factory BulkWriteResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BulkWriteResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BulkWriteResult clone() => BulkWriteResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BulkWriteResult copyWith(void Function(BulkWriteResult) updates) =>
      super.copyWith((message) => updates(message as BulkWriteResult))
          as BulkWriteResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkWriteResult create() => BulkWriteResult._();
  BulkWriteResult createEmptyInstance() => create();
  static $pb.PbList<BulkWriteResult> createRepeated() =>
      $pb.PbList<BulkWriteResult>();
  @$core.pragma('dart2js:noInline')
  static BulkWriteResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BulkWriteResult>(create);
  static BulkWriteResult? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get insertedCount => $_getI64(0);
  @$pb.TagNumber(1)
  set insertedCount($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInsertedCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearInsertedCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get matchedCount => $_getI64(1);
  @$pb.TagNumber(2)
  set matchedCount($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMatchedCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatchedCount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get modifiedCount => $_getI64(2);
  @$pb.TagNumber(3)
  set modifiedCount($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasModifiedCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearModifiedCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get deletedCount => $_getI64(3);
  @$pb.TagNumber(4)
  set deletedCount($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeletedCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeletedCount() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get upsertedCount => $_getI64(4);
  @$pb.TagNumber(5)
  set upsertedCount($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUpsertedCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpsertedCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$fixnum.Int64, $core.List<$core.int>> get upsertedIds =>
      $_getMap(5);
}
