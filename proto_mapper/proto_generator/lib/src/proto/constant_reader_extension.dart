import 'package:analyzer/dart/element/type.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';

extension ConstantReaderExtension on ConstantReader {
  ProtoReflected hydrateAnnotation({
    String prefix = '',
    required bool useProtoFieldNamingConventions,
  }) {
    final useAuto = read('includeFieldsByDefault').literalValue as bool;
    final pfx = read('prefix').literalValue as String? ?? prefix;
    final packageName = read('packageName').literalValue as String? ?? '';
    final ownFieldsNumber = read('ownFieldsNumber').intValue;
    final superFieldsNumber = read('superFieldsNumber').intValue;
    final usePFNConventions =
        read('useProtoFieldNamingConventions').literalValue as bool? ??
            useProtoFieldNamingConventions;
    final proto = useAuto
        ? Proto.auto(
            prefix: pfx,
            packageName: packageName,
            useProtoFieldNamingConventions: usePFNConventions,
            ownFieldsNumber: ownFieldsNumber,
            superFieldsNumber: superFieldsNumber,
          )
        : Proto.numbered(
            prefix: pfx,
            packageName: packageName,
            useProtoFieldNamingConventions: usePFNConventions,
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
