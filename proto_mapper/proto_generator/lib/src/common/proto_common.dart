import 'package:analyzer/dart/element/type.dart';
import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_code_generators/wrapped.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart' as protofield;
import 'package:proto_generator/src/proto_mapper/field_descriptor.dart'
    as mapperfield;
import 'package:source_gen/source_gen.dart';

import '../proto/field_code_generator.dart';
import '../proto/field_code_generators/imports.dart';

String createFieldDeclarations({
  required Iterable<protofield.FieldDescriptor> fieldDescriptors,
  required Set<String> imports,
  required Set<String> wrappers,
  required Config config,
}) {
  final fieldBuffer = StringBuffer();

  for (final fieldDescriptor in fieldDescriptors) {
    final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
      fieldDescriptor,
      config.useWellKnownTypes,
    );

    final renderField = fieldCodeGenerator.render();
    fieldBuffer.writeln(renderField);

    if (fieldCodeGenerator is Imports) {
      final fieldExternalProtoNames = (fieldCodeGenerator as Imports).imports;
      mergeProtoNames(fieldExternalProtoNames, imports);
    }
    if (fieldCodeGenerator is Wrapped) {
      final wrapper = (fieldCodeGenerator as Wrapped).wrapper;
      wrappers.add(wrapper);
    }
  }

  return fieldBuffer.toString();
}

void mergeProtoNames(
  Iterable<String> fieldExternalProtoNames,
  Set<String> imports,
) {
  for (String externalProtoName in fieldExternalProtoNames) {
    imports.add(externalProtoName);
  }
}

extension ProtoDartTypeExtension on DartType {
  bool get hasProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(Proto).firstAnnotationOf(element!) != null;
    return ret;
  }

  String get packageName {
    final el = element;
    if (el == null) return '';
    var annotation = TypeChecker.fromRuntime(Proto).firstAnnotationOf(el);

    var packageName =
        annotation?.getField('packageName')?.toStringValue() ?? '';
    return packageName;
  }
}

String collectionProtoToValue(
  mapperfield.FieldDescriptor fieldDescriptor,
  DartType parameterType,
  String parameterName, {
  required Config config,
}) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '\$DecimalProtoExtension.\$fromProtoBytes($parameterName)';
  }
  if (fieldTypeName == (BigInt).toString()) {
    return '\$BigIntProtoExtension.\$fromProtoBytes($parameterName)';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (config.useWellKnownTypes) {
      return '''$parameterName.toDateTime()''';
    }
    return 'DateTime.fromMillisecondsSinceEpoch($parameterName.toInt())';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (config.useWellKnownTypes) {
      return '''Duration(
      seconds: $parameterName.seconds.toInt(),
      microseconds: ($parameterName.nanos ~/ 1000).toInt())''';
    }
    return 'Duration(milliseconds: $parameterName.toInt())';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().fromProto($parameterName)''';
}

String collectionValueToProto(
  mapperfield.FieldDescriptor fieldDescriptor,
  DartType parameterType,
  String parameterName, {
  required Config config,
}) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '$parameterName.\$toProtoBytes()';
  }
  if (fieldTypeName == (BigInt).toString()) {
    return '$parameterName.\$toProtoBytes()';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (config.useWellKnownTypes) {
      return '''\$wellknown_timestamp.Timestamp.fromDateTime($parameterName)''';
    }
    return 'Int64($parameterName.millisecondsSinceEpoch)';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (config.useWellKnownTypes) {
      return '''\$wellknown_duration.Duration(
        seconds: Int64($parameterName.inSeconds),
        nanos: ($parameterName.inMicroseconds - $parameterName.inSeconds * 1000000) * 1000)''';
    }
    return '$parameterName.inMilliseconds.toDouble()';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().toProto($parameterName)''';
}
