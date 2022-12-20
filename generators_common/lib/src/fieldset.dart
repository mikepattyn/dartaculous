part of 'class_element_extensions.dart';

class _FieldSet implements Comparable<_FieldSet> {
  final FieldElement field;

  _FieldSet._(this.field);

  factory _FieldSet(FieldElement? classField, FieldElement? superField) {
    // At least one of these will != null, perhaps both.
    final fields = [classField, superField].where((fe) => fe != null).toList();

    // Prefer the class field over the inherited field when sorting.
    final sortField = fields.first!;

    return _FieldSet._(sortField);
  }

  @override
  int compareTo(_FieldSet other) => _sortByLocation(field, other.field);

  static int _sortByLocation(FieldElement a, FieldElement b) {
    final checkerA = TypeChecker.fromStatic(
        // ignore: unnecessary_cast
        (a.enclosingElement as InterfaceElement).thisType);

    if (!checkerA.isExactly(b.enclosingElement)) {
      // in this case, you want to prioritize the enclosingElement that is more
      // "super".

      if (checkerA.isAssignableFrom(b.enclosingElement)) {
        return -1;
      }

      final checkerB = TypeChecker.fromStatic(
          (b.enclosingElement as InterfaceElement).thisType);

      if (checkerB.isAssignableFrom(a.enclosingElement)) {
        return 1;
      }
    }

    /// Returns the offset of given field/property in its source file – with a
    /// preference for the getter if it's defined.
    int offsetFor(FieldElement e) {
      if (e.getter != null &&
          e.getter!.nameOffset != -1 &&
          e.getter!.nameOffset != e.nameOffset) {
        assert(e.nameOffset == -1);
        return e.getter!.nameOffset;
      }
      return e.nameOffset;
    }

    return offsetFor(a).compareTo(offsetFor(b));
  }
}
