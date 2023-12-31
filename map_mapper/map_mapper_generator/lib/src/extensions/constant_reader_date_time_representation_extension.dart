import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:source_gen/source_gen.dart';

extension ConstantReaderDateTimeRepresentationExtension on ConstantReader {
  DateTimeRepresentation? getDateTimeRepresentation(String propertyName) {
    final constant = read(propertyName);
    if (constant.isNull) return null;
    final accessor = constant.revive().accessor;

    if (accessor.endsWith('microsecondsSinceEpoch')) {
      return DateTimeRepresentation.microsecondsSinceEpoch;
    }
    if (accessor.endsWith('millisecondsSinceEpoch')) {
      return DateTimeRepresentation.millisecondsSinceEpoch;
    }
    if (accessor.endsWith('iso8601String')) {
      return DateTimeRepresentation.iso8601String;
    }
    if (accessor.endsWith('dateTime')) {
      return DateTimeRepresentation.dateTime;
    }
    throw UnimplementedError();
  }
}
