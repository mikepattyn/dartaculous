///
//  Generated code. Do not modify.
//  source: recipe_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recipe_type.pbenum.dart';

export 'recipe_type.pbenum.dart';

class GRecipeTypes_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GRecipeTypes_Message', createEmptyInstance: create)
    ..e<GRecipeTypes>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GRecipeTypes.G_RECIPE_TYPES_COOK, valueOf: GRecipeTypes.valueOf, enumValues: GRecipeTypes.values)
    ..hasRequiredFields = false
  ;

  GRecipeTypes_Message._() : super();
  factory GRecipeTypes_Message({
    GRecipeTypes? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GRecipeTypes_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRecipeTypes_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRecipeTypes_Message clone() => GRecipeTypes_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRecipeTypes_Message copyWith(void Function(GRecipeTypes_Message) updates) => super.copyWith((message) => updates(message as GRecipeTypes_Message)) as GRecipeTypes_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GRecipeTypes_Message create() => GRecipeTypes_Message._();
  GRecipeTypes_Message createEmptyInstance() => create();
  static $pb.PbList<GRecipeTypes_Message> createRepeated() => $pb.PbList<GRecipeTypes_Message>();
  @$core.pragma('dart2js:noInline')
  static GRecipeTypes_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRecipeTypes_Message>(create);
  static GRecipeTypes_Message? _defaultInstance;

  @$pb.TagNumber(1)
  GRecipeTypes get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GRecipeTypes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

