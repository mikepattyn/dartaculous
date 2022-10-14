import 'package:meta/meta.dart';

import 'proto.dart' as p;

/// Collation allows users to specify language-specific rules for string
/// comparison, such as rules for lettercase and accent marks.
///
/// ## Reference
/// See https://pkg.go.dev/go.mongodb.org/mongo-driver@v1.10.3/mongo/options#Collation.
class Collation {
  /// The locale
  final String locale;

  /// The case level
  final bool caseLevel;

  /// The case ordering
  final String caseFirst;

  /// The number of comparison levels to use
  final int strength;

  /// Whether to order numbers based on numerical order and not collation order
  final bool numericOrdering;

  /// Whether spaces and punctuation are considered base characters
  final String alternate;

  /// Which characters are affected by alternate: "shifted"
  final String maxVariable;

  /// Causes text to be normalized into Unicode NFD
  final bool normalization;

  /// Causes secondary differences to be considered in reverse order, as it is
  /// done in the French language
  final bool backwards;

  Collation({
    required this.locale,
    required this.caseLevel,
    required this.caseFirst,
    required this.strength,
    required this.numericOrdering,
    required this.alternate,
    required this.maxVariable,
    required this.normalization,
    required this.backwards,
  });

  @internal
  p.Collation toProto() {
    return p.Collation(
      alternate: alternate,
      backwards: backwards,
      caseFirst: caseFirst,
      caseLevel: caseLevel,
      locale: locale,
      maxVariable: maxVariable,
      normalization: normalization,
      numericOrdering: numericOrdering,
      strength: strength,
    );
  }
}
