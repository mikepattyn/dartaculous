///
//  Generated code. Do not modify.
//  source: appliance_type.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'appliance_type.pbenum.dart';

export 'appliance_type.pbenum.dart';

class GApplianceType_Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GApplianceType_Message', createEmptyInstance: create)
    ..e<GApplianceType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: GApplianceType.G_APPLIANCE_TYPE_HEAT, valueOf: GApplianceType.valueOf, enumValues: GApplianceType.values)
    ..hasRequiredFields = false
  ;

  GApplianceType_Message._() : super();
  factory GApplianceType_Message({
    GApplianceType? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory GApplianceType_Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GApplianceType_Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GApplianceType_Message clone() => GApplianceType_Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GApplianceType_Message copyWith(void Function(GApplianceType_Message) updates) => super.copyWith((message) => updates(message as GApplianceType_Message)) as GApplianceType_Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GApplianceType_Message create() => GApplianceType_Message._();
  GApplianceType_Message createEmptyInstance() => create();
  static $pb.PbList<GApplianceType_Message> createRepeated() => $pb.PbList<GApplianceType_Message>();
  @$core.pragma('dart2js:noInline')
  static GApplianceType_Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GApplianceType_Message>(create);
  static GApplianceType_Message? _defaultInstance;

  @$pb.TagNumber(1)
  GApplianceType get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(GApplianceType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

