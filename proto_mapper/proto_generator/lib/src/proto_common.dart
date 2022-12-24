import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:decimal/decimal.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/field_descriptor.dart' as protofield;
import 'package:proto_generator/src/proto_mapper/field_descriptor.dart'
    as mapperfield;
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import 'proto/field_code_generator.dart';
import 'proto/field_code_generators/external_proto_name.dart';

String createFieldDeclarations(
  Iterable<protofield.FieldDescriptor> fieldDescriptors,
  List<String> externalProtoNames,
  bool useWellKnownTypes,
) {
  final fieldBuffer = StringBuffer();
  final lineNumbers = fieldDescriptors
      .where((fd) =>
          fd.number != null || (fd.isNullable && fd.hasValueNumber != null))
      .expand((fd) => [
            if (fd.number != null) fd.number!,
            if (fd.isNullable && fd.hasValueNumber != null) fd.hasValueNumber!,
          ])
      .toList();

  for (var fieldDescriptor in fieldDescriptors) {
    var fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor, lineNumbers, useWellKnownTypes);

    var renderField = fieldCodeGenerator.render();
    fieldBuffer.writeln(renderField);

    if (fieldCodeGenerator is! ExternalProtoNames) continue;
    var fieldExternalProtoNames =
        (fieldCodeGenerator as ExternalProtoNames).externalProtoNames;
    mergeProtoNames(fieldExternalProtoNames, externalProtoNames);
  }

  return fieldBuffer.toString();
}

void mergeProtoNames(
    Iterable<String> fieldExternalProtoNames, List<String> externalProtoNames) {
  for (String externalProtoName in fieldExternalProtoNames) {
    if (!externalProtoNames.contains(externalProtoName)) {
      externalProtoNames.add(externalProtoName);
    }
  }
}

extension ProtoDartTypeExtension on DartType {
  bool get hasMapProto {
    if (element == null) return false;
    final ret =
        TypeChecker.fromRuntime(MapProto).firstAnnotationOf(element!) != null;
    return ret;
  }

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

extension ProtoMethodElementExtension on MethodElement {
  bool get hasMapProto {
    final alias = type.alias;
    if (alias == null) return false;
    final ret =
        TypeChecker.fromRuntime(MapProto).firstAnnotationOf(alias.element) !=
            null;
    return ret;
  }
}

String collectionProtoToValue(
  mapperfield.FieldDescriptor fieldDescriptor,
  DartType parameterType,
  String parameterName, {
  required bool useWellKnownTypes,
}) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '\$DecimalProtoExtension.\$fromProtoBytes($parameterName)';
  }
  if (fieldTypeName == (BigInt).toString()) {
    return '\$BigIntProtoExtension.\$fromProtoBytes($parameterName)';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (useWellKnownTypes) {
      return '''$parameterName.toDateTime()''';
    }
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'DateTime.fromMicrosecondsSinceEpoch($parameterName.toInt())';
    }
    return 'DateTime.fromMillisecondsSinceEpoch($parameterName.toInt())';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (useWellKnownTypes) {
      return '''Duration(
      seconds: $parameterName.seconds.toInt(),
      microseconds: ($parameterName.nanos ~/ 1000).toInt())''';
    }
    if (fieldDescriptor.durationPrecision == TimePrecision.microseconds) {
      return 'Duration(microseconds: $parameterName.toInt())';
    }
    return 'Duration(milliseconds: $parameterName.toInt())';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().fromProto($parameterName)''';
}

String collectionValueToProto(
  mapperfield.FieldDescriptor fieldDescriptor,
  DartType parameterType,
  String parameterName, {
  required bool useWellKnownTypes,
}) {
  final fieldTypeName = parameterType.getDisplayString(withNullability: false);
  if (fieldTypeName == (Decimal).toString()) {
    return '$parameterName.\$toProtoBytes()';
  }
  if (fieldTypeName == (BigInt).toString()) {
    return '$parameterName.\$toProtoBytes()';
  }
  if (fieldTypeName == (DateTime).toString()) {
    if (useWellKnownTypes) {
      return '''\$wellknown_timestamp.Timestamp.fromDateTime($parameterName)''';
    }
    if (fieldDescriptor.dateTimePrecision == TimePrecision.microseconds) {
      return 'Int64($parameterName.microsecondsSinceEpoch)';
    }
    return 'Int64($parameterName.millisecondsSinceEpoch)';
  }
  if (fieldTypeName == (Duration).toString()) {
    if (useWellKnownTypes) {
      return '''\$wellknown_duration.Duration(
        seconds: Int64($parameterName.inSeconds),
        nanos: ($parameterName.inMicroseconds - $parameterName.inSeconds * 1000000) * 1000)''';
    }
    if (fieldDescriptor.durationPrecision == TimePrecision.microseconds) {
      return '$parameterName.inMicroseconds.toDouble()';
    }
    return '$parameterName.inMilliseconds.toDouble()';
  }
  return ''' const \$${fieldTypeName}ProtoMapper().toProto($parameterName)''';
}
