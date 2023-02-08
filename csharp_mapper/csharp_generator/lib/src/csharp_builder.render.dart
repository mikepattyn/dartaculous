part of 'csharp_builder.dart';

String _buildContents(CSharpAst ast) {
  final builder = StringBuffer();

  builder.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
  builder.writeln();
  for (final using in ast.usings) {
    builder.writeln('using $using;');
  }
  builder.writeln('// ReSharper disable UnusedAutoPropertyAccessor.Global');
  builder.writeln('// ReSharper disable PartialTypeWithSinglePart');
  builder.writeln('// ReSharper disable UnusedMember.Global');
  builder.writeln('// ReSharper disable UnusedType.Global');
  builder.writeln('// ReSharper disable InconsistentNaming');
  builder.writeln();
  builder.writeln('namespace ${ast.namespace};');
  builder.writeln();

  for (final enm in ast.enums) {
    builder.writeln(_renderEnum(enm));
  }

  for (final record in ast.records) {
    builder.writeln(_renderRecord(record));
  }

  return builder.toString();
}

String _renderEnum(CSharpEnum enm) {
  final fields = enm.fieldNames.map((e) => '  $e').join(',\n');

  return '''public enum ${enm.name} {
$fields,
}
  ''';
}

String _renderRecord(CSharpRecord record) {
  final superClass =
      record.superClassName.isEmpty ? '' : ': ${record.superClassName}';
  final fields = _renderFields(record);
  return '''public partial record ${record.name} $superClass {
$fields
};
  ''';
}

String _renderFields(CSharpRecord record) {
  return record.properties.map((e) {
    final suffix = e.isNullable ? '?' : '';
    final annots = _renderAttributes(e);
    return '$annots  public required ${e.type}$suffix ${e.name} { get; init; }';
  }).join('\n');
}

String _renderAttributes(CSharpProperty property) {
  if (property.attributes.isEmpty) {
    return '';
  }
  return '\n${property.attributes.map((e) {
    final parameters =
        e.parameters.isEmpty ? '' : '(${e.parameters.join(", ")})';
    return '  [${e.name}$parameters]\n';
  }).join()}';
}
