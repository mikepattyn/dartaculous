import 'package:meta/meta.dart';

import 'proto.dart' as p;

class Collation {
  final String locale;
  final bool caseLevel;
  final String caseFirst;
  final int strength;
  final bool numericOrdering;
  final String alternate;
  final String maxVariable;
  final bool normalization;
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
