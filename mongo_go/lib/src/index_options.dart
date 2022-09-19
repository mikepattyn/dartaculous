// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_proxy.dart';
import 'proto.dart' as p;
import 'extensions.dart';

class IndexOptions {
  final bool? background;
  final int? expireAfterSeconds;
  final String? name;
  final bool? sparse;
  final Map<String, dynamic>? storageEngine;
  final bool? unique;
  final int? version;
  final String? defaultLanguage;
  final String? languageOverride;
  final int? textVersion;
  final Map<String, dynamic>? weights;

  final int? sphereVersion;
  final int? bits;
  final double? max;
  final double? min;
  final int? bucketSize;
  final bool? hidden;

  final Map<String, dynamic>? partialFilterExpression;
  final Collation? collation;
  final Map<String, dynamic>? wildcardProjection;

  IndexOptions({
    this.background,
    this.expireAfterSeconds,
    this.name,
    this.sparse,
    this.storageEngine,
    this.unique,
    this.version,
    this.defaultLanguage,
    this.languageOverride,
    this.textVersion,
    this.weights,
    this.sphereVersion,
    this.bits,
    this.max,
    this.min,
    this.bucketSize,
    this.hidden,
    this.partialFilterExpression,
    this.collation,
    this.wildcardProjection,
  });

  @internal
  p.IndexOptions toProto() {
    final ret = p.IndexOptions(
      background: background.toWrapped(),
      bits: bits.toWrapped(),
      bucketSize: bucketSize.toWrapped(),
      defaultLanguage: defaultLanguage.toWrapped(),
      expireAfterSeconds: expireAfterSeconds.toWrapped(),
      hidden: hidden.toWrapped(),
      languageOverride: languageOverride.toWrapped(),
      max: max.toWrapped(),
      min: min.toWrapped(),
      name: name.toWrapped(),
      sparse: sparse.toWrapped(),
      sphereVersion: sphereVersion.toWrapped(),
      textVersion: textVersion.toWrapped(),
      unique: unique.toWrapped(),
      version: version.toWrapped(),
      collation: collation?.toProto().writeToBuffer(),
      partialFilterExpression: partialFilterExpression.toBsonByteList(),
      storageEngine: storageEngine.toBsonByteList(),
      weights: storageEngine.toBsonByteList(),
      wildcardProjection: wildcardProjection.toBsonByteList(),
    );
    return ret;
  }
}
