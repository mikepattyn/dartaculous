import 'package:analyzer/dart/element/element.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

class FieldDescriptor extends FieldDescriptorBase {
  final MapMapped mapMapAnnotation;

  final MapField? mapFieldAnnotation;
  final MapIgnore? mapIgnoreAnnotation;

  final keyNames = ['key', 'id'];

  /// Keys are string or number values of which the field name ends with "id" or "key"
  bool get isKey {
    final ret = (keyNames.any((kn) =>
                kn == displayName ||
                displayName.endsWith(
                    kn.substring(0, 1).toUpperCase() + kn.substring(1))) ||
            (mapFieldAnnotation?.isKey ?? false)) &&
        (mapFieldAnnotation?.isKey ?? true) &&
        (fieldElementType.isDartCoreInt ||
            fieldElementType.isDartCoreDouble ||
            fieldElementType.isDartCoreNum ||
            fieldElementType.isDartCoreString);

    return ret;
  }

  FieldDescriptor._(
    FieldElement fieldElement,
    this.mapMapAnnotation, {
    this.mapFieldAnnotation,
    this.mapIgnoreAnnotation,
  }) : super.fromFieldElement(fieldElement);

  factory FieldDescriptor.fromFieldElement(
    FieldElement fieldElement,
    MapMapped mapEntityAnnotation,
  ) {
    final mapFieldAnnotation = _getMapField(fieldElement);
    final mapIgnoreAnnotation = _getMapIgnore(fieldElement);

    return FieldDescriptor._(
      fieldElement,
      mapEntityAnnotation,
      mapFieldAnnotation: mapFieldAnnotation,
      mapIgnoreAnnotation: mapIgnoreAnnotation,
    );
  }

  bool get _hasMapIgnore => mapIgnoreAnnotation != null;
  bool get _hasMapField => mapFieldAnnotation != null;

  bool get isMapIncluded =>
      !_hasMapIgnore &&
      (mapMapAnnotation.includeFieldsByDefault || _hasMapField);

  String get mapName => mapFieldAnnotation?.name ?? displayName;

  bool get typeHasMapMapAnnotation {
    var annotation = TypeChecker.fromRuntime(MapMapped)
        .firstAnnotationOf(fieldElementType.element2!);
    return annotation != null;
  }

  bool get parameterTypeHasMapMapAnnotation {
    var annotation = TypeChecker.fromRuntime(MapMapped)
        .firstAnnotationOf(parameterType.element2!);
    return annotation != null;
  }

  TimePrecision get durationPrecision =>
      mapMapAnnotation.durationPrecision ?? TimePrecision.microseconds;
  DateTimeRepresentation get dateTimeRepresentation =>
      mapMapAnnotation.dateTimeRepresentation ??
      DateTimeRepresentation.microsecondsSinceEpoch;
}

MapField? _getMapField(FieldElement fieldElement) {
  var reader =
      TypeChecker.fromRuntime(MapField).firstAnnotationOf(fieldElement);
  if (reader == null) return null;
  var ret = MapField(
    name: reader.getField('name')!.toStringValue(),
    isKey: reader.getField('isKey')!.toBoolValue(),
  );
  return ret;
}

MapIgnore? _getMapIgnore(FieldElement fieldElement) {
  var reader =
      TypeChecker.fromRuntime(MapIgnore).firstAnnotationOf(fieldElement);
  if (reader == null) return null;
  return MapIgnore();
}
