import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';

extension ConstantReaderExtension on ConstantReader {
  ProtoReflected hydrateAnnotation() {
    final useAuto = read('includeFieldsByDefault').literalValue as bool;
    final ownFieldsNumber = read('ownFieldsNumber').intValue;
    final superFieldsNumber = read('superFieldsNumber').intValue;
    final proto = useAuto
        ? Proto.auto(
            ownFieldsNumber: ownFieldsNumber,
            superFieldsNumber: superFieldsNumber,
          )
        : Proto.numbered(
            ownFieldsNumber: ownFieldsNumber,
            superFieldsNumber: superFieldsNumber,
          );

    final kscReader = read('knownSubClasses');
    final kscs = kscReader.mapValue.map(
      (key, value) {
        final k = key!.toTypeValue()!;
        final v = value!.toIntValue()!;
        return MapEntry<DartType, int>(k, v);
      },
    );

    final ret = ProtoReflected(proto, kscs);

    return ret;
  }
}
