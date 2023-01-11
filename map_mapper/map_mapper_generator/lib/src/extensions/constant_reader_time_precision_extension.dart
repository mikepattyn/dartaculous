import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:source_gen/source_gen.dart';

extension ConstantReaderTimePrecisionExtension on ConstantReader {
  TimePrecision? getTimePrecision(String propertyName) {
    final constant = read(propertyName);
    if (constant.isNull) return null;
    final accessor = constant.revive().accessor;

    if (accessor.endsWith('microseconds')) {
      return TimePrecision.microseconds;
    }
    if (accessor.endsWith('milliseconds')) {
      return TimePrecision.milliseconds;
    }
    throw UnimplementedError();
  }
}
