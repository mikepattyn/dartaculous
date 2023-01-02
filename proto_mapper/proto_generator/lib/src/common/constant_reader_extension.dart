import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';

extension ConstantReaderExtension on ConstantReader {
  ProtoReflected hydrateAnnotation() {
    final ownFieldsNumber = read('ownFieldsNumber').intValue;
    final superFieldsNumber = read('superFieldsNumber').intValue;

    final kscReader = read('knownSubClassMap');
    final kscs = kscReader.mapValue.map(
      (key, value) {
        final k = key!.toTypeValue()!;
        final v = value!.toIntValue()!;
        return MapEntry<DartType, int>(k, v);
      },
    );

    final proto = Proto(
      ownFieldsNumber: ownFieldsNumber,
      superFieldsNumber: superFieldsNumber,
      knownSubClassMap: kscs.map(
        (key, value) => MapEntry(key.runtimeType, value),
      ),
    );

    final ret = ProtoReflected(proto, kscs);

    return ret;
  }
}
