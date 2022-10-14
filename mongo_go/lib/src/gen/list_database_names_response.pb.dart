///
//  Generated code. Do not modify.
//  source: list_database_names_response.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ListDatabaseNamesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListDatabaseNamesResponse',
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'names')
    ..hasRequiredFields = false;

  ListDatabaseNamesResponse._() : super();
  factory ListDatabaseNamesResponse({
    $core.Iterable<$core.String>? names,
  }) {
    final _result = create();
    if (names != null) {
      _result.names.addAll(names);
    }
    return _result;
  }
  factory ListDatabaseNamesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListDatabaseNamesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListDatabaseNamesResponse clone() =>
      ListDatabaseNamesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListDatabaseNamesResponse copyWith(
          void Function(ListDatabaseNamesResponse) updates) =>
      super.copyWith((message) => updates(message as ListDatabaseNamesResponse))
          as ListDatabaseNamesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDatabaseNamesResponse create() => ListDatabaseNamesResponse._();
  ListDatabaseNamesResponse createEmptyInstance() => create();
  static $pb.PbList<ListDatabaseNamesResponse> createRepeated() =>
      $pb.PbList<ListDatabaseNamesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDatabaseNamesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDatabaseNamesResponse>(create);
  static ListDatabaseNamesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get names => $_getList(0);
}
