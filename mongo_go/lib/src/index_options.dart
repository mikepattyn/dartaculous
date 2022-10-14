// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:meta/meta.dart';
import 'package:mongo_go/mongo_go.dart';
import 'proto.dart' as p;
import 'extensions.dart';

/// IndexOptions represents options that can be used to configure a new index
/// created through the IndexView.CreateOne or IndexView.CreateMany operations.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#IndexOptions.
class IndexOptions {
  /// If true, the index will be built in the background on the server and will not block other tasks. The default
  /// value is false.
  ///
  @Deprecated('This option has been deprecated in MongoDB version 4.2')
  final bool? background;

  /// The length of time, in seconds, for documents to remain in the collection. The default value is 0, which means
  /// that documents will remain in the collection until they're explicitly deleted or the collection is dropped.
  final int? expireAfterSeconds;

  /// The name of the index. The default value is "[field1]_[direction1]_[field2]_[direction2]...". For example, an
  /// index with the specification {name: 1, age: -1} will be named "name_1_age_-1".
  final String? name;

  /// If true, the index will only reference documents that contain the fields specified in the index. The default is
  /// false.
  final bool? sparse;

  /// Specifies the storage engine to use for the index. The value must be a document in the form
  /// {<storage engine name>: <options>}. The default value is nil, which means that the default storage engine
  /// will be used. This option is only applicable for MongoDB versions >= 3.0 and is ignored for previous server
  /// versions.
  final Map<String, dynamic>? storageEngine;

  /// If true, the collection will not accept insertion or update of documents where the index key value matches an
  /// existing value in the index. The default is false.
  final bool? unique;

  /// The index version number, either 0 or 1.
  final int? version;

  /// The language that determines the list of stop words and the rules for the stemmer and tokenizer. This option
  /// is only applicable for text indexes and is ignored for other index types. The default value is "english".
  final String? defaultLanguage;

  /// The name of the field in the collection's documents that contains the override language for the document. This
  /// option is only applicable for text indexes and is ignored for other index types. The default value is the value
  /// of the DefaultLanguage option.
  final String? languageOverride;

  /// The index version number for a text index. See https://www.mongodb.com/docs/manual/core/index-text/#text-versions for
  /// information about different version numbers.
  final int? textVersion;

  /// A document that contains field and weight pairs. The weight is an integer ranging from 1 to 99,999, inclusive,
  /// indicating the significance of the field relative to the other indexed fields in terms of the score. This option
  /// is only applicable for text indexes and is ignored for other index types. The default value is nil, which means
  /// that every field will have a weight of 1.
  final Map<String, dynamic>? weights;

  /// The index version number for a 2D sphere index. See https://www.mongodb.com/docs/manual/core/2dsphere/#dsphere-v2 for
  /// information about different version numbers.
  final int? sphereVersion;

  /// The precision of the stored geohash value of the location data. This option only applies to 2D indexes and is
  /// ignored for other index types. The value must be between 1 and 32, inclusive. The default value is 26.
  final int? bits;

  /// The upper inclusive boundary for longitude and latitude values. This option is only applicable to 2D indexes and
  /// is ignored for other index types. The default value is 180.0.
  final double? max;

  /// The lower inclusive boundary for longitude and latitude values. This option is only applicable to 2D indexes and
  /// is ignored for other index types. The default value is -180.0.
  final double? min;

  /// The number of units within which to group location values. Location values that are within BucketSize units of
  /// each other will be grouped in the same bucket. This option is only applicable to geoHaystack indexes and is
  /// ignored for other index types. The value must be greater than 0.
  final int? bucketSize;

  /// If true, the index will exist on the target collection but will not be used by the query planner when executing
  /// operations. This option is only valid for MongoDB versions >= 4.4. The default value is false.
  final bool? hidden;

  /// A document that defines which collection documents the index should reference. This option is only valid for
  /// MongoDB versions >= 3.2 and is ignored for previous server versions.
  final Map<String, dynamic>? partialFilterExpression;

  /// The collation to use for string comparisons for the index. This option is only valid for MongoDB versions >= 3.4.
  /// For previous server versions, the driver will return an error if this option is used.
  final Collation? collation;

  /// A document that defines the wildcard projection for the index.
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
      // ignore: deprecated_member_use_from_same_package
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
