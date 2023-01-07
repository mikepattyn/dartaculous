import 'package:squarealfa_common_types/squarealfa_common_types.dart';

/// Annotate PODO class with MapMap in order to
/// signal the code generator that it is to produce
/// a map mapper for the class to which the annotation
/// was applied.
class MapMapped {
  const MapMapped({
    this.includeFieldsByDefault = true,
    this.useDefaultsProvider = false,
    this.durationPrecision,
    this.dateTimeRepresentation,
    this.knownSubClasses,
    this.mapEnumToString = false,
    this.keyHandlerType,
  });

  /// Determines whether to include all fields by default.
  ///
  /// When the value is true, all fields that do not have
  /// the [MapIgnore] annotation will be mapped.
  /// When the value is false, only the fields that have the
  /// [MapField] annotation will be included.
  final bool includeFieldsByDefault;
  final bool useDefaultsProvider;

  /// Defines whether or not to map enum values to their name (as a String)
  /// or to their index (int). Defaults to index.
  final bool mapEnumToString;

  /// Defines the level of precision of DateTime and
  /// Duration fields.
  ///
  /// When left null, will assume the value configured
  /// in build.yaml or DateTimePrecision.microseconds
  ///
  /// This property is new in version 3.0.0.
  /// Versions below 3.0.0 mapped to a millisecond precision.
  final TimePrecision? durationPrecision;

  final DateTimeRepresentation? dateTimeRepresentation;

  final List<Type>? knownSubClasses;

  final Type? keyHandlerType;
}

const mapMapped = MapMapped();
