part of 'csharp_builder.dart';

CSharpAst _buildAst(
  BuildStep buildStep,
  Config config,
  Map<InterfaceElement, CSharp> elements,
) {
  final namespace = _getNamespace(buildStep, config);
  final records = _getRecords(config, elements);
  final usings = _getUsings(records);
  final enums = _getEnums(config, elements);
  final ast = CSharpAst(
    namespace: namespace,
    usings: usings,
    records: records,
    enums: enums,
  );
  return ast;
}

Set<String> _getUsings(List<CSharpRecord> records) {
  final usings = records
      .map((e) => e.properties)
      .reduce((value, element) => [...value, ...element])
      .map((e) => e.attributes)
      .reduce((value, element) => [...value, ...element])
      .map((e) => e.namespace)
      .toSet();
  return usings;
}

String _getNamespace(BuildStep buildStep, Config config) {
  final lib = buildStep.inputId.package.pascalCase;
  final namespace = config.namespace.replaceAll('{package_name}', lib);
  return namespace;
}

List<CSharpEnum> _getEnums(
    Config config, Map<InterfaceElement, CSharp> elements) {
  final enumElements = elements.entries
      .where((element) => element.key is EnumElement)
      .map((e) => MapEntry(e.key as EnumElement, e.value));

  return enumElements.map(
    (e) {
      final enumName = e.key.name.pascalCase;
      final fieldNames = e.key
          .getFieldDescriptors(
            annotation: e.value,
            config: config,
          )
          .map((fd) => fd.displayName.pascalCase)
          .toSet();
      return CSharpEnum(name: enumName, fieldNames: fieldNames);
    },
  ).toList();
}

List<CSharpRecord> _getRecords(
  Config config,
  Map<InterfaceElement, CSharp> elements,
) {
  final recordElements = elements.entries
      .where((element) => element.key is ClassElement)
      .map((e) => MapEntry(e.key as ClassElement, e.value));

  return recordElements.map((e) {
    final ce = e.key;
    final annotation = e.value;

    final fieldDescriptors = ce
        .getFieldDescriptors(annotation: annotation, config: config)
        .where((element) => element.ignoreAnnotation == null)
        .toList();

    final properties = _getProperties(fieldDescriptors);

    return CSharpRecord(
      name: ce.displayName.pascalCase,
      properties: properties,
    );
  }).toList();
}

List<CSharpProperty> _getProperties(List<FieldDescriptor> fieldDescriptors) {
  final ret = fieldDescriptors.map((fd) {
    final basicType = _getTypeName(fd);
    final type = fd.isRepeated ? 'List<$basicType>' : basicType;
    final attributes = _getAttributes(fd);
    return CSharpProperty(
      name: fd.name.pascalCase,
      type: type,
      isNullable: fd.isNullable,
      attributes: attributes,
    );
  }).toList();
  return ret;
}

String _getTypeName(FieldDescriptor fd) {
  final type = fd.itemType;
  final typeName = fd.itemType.getDisplayString(withNullability: false);

  if (type.isDartCoreString) {
    return 'string';
  }
  if (type.isDartCoreBool) {
    return 'bool';
  }
  if (type.isDartCoreInt) {
    return 'int';
  }
  if (type.isDartCoreDouble) {
    return 'double';
  }
  if (typeName == (Decimal).toString()) {
    return 'Decimal';
  }
  if (typeName == (DateTime).toString()) {
    return 'DateTime';
  }
  if (typeName == (Duration).toString()) {
    return 'TimeSpan';
  }

  return type.getDisplayString(withNullability: false);
}
