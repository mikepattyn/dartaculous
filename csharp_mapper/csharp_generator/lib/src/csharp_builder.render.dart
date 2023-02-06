part of 'csharp_builder.dart';

String _buildContents(CSharpAst ast) {
  final builder = StringBuffer();

  builder.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
  builder.writeln();
  for (final using in ast.usings) {
    builder.writeln('using $using;');
  }
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
  final fields = _renderFields(record);
  return '''public record ${record.name} (
$fields
);
  ''';
}

String _renderFields(CSharpRecord record) {
  return record.properties.map((e) {
    final suffix = e.isNullable ? '?' : '';
    final annots = _renderAttributes(e);
    return '$annots  ${e.type}$suffix ${e.name}';
  }).join(',\n');
}

String _renderAttributes(CSharpProperty property) {
  return property.attributes.map((e) {
    final parameters =
        e.parameters.isEmpty ? '' : '(${e.parameters.join(", ")})';
    return '  [property:${e.name}$parameters]\n';
  }).join();
}
