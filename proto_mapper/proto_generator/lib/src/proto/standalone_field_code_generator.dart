part of 'field_code_generator.dart';

abstract class StandaloneFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements FieldCodeGenerator {
  StandaloneFieldCodeGenerator(this.fieldDescriptor, this.lineNumbers) {
    final hasValueLineNum = fieldDescriptor.isNullable
        ? (fieldDescriptor.hasValueNumber ?? _nextAvailable(lineNumbers))
        : null;
    hasValueLineNumber = hasValueLineNum;
  }
  late final int? hasValueLineNumber;

  @override
  final FieldDescriptor fieldDescriptor;
  @override
  final List<int> lineNumbers;

  String get fieldLine =>
      '${fieldDescriptor.isRepeated ? 'repeated ' : ''}$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';

  String? get fieldType;

  @override
  String render() {
    final hvl = !fieldDescriptor.isNullable || hasValueLine == null
        ? ''
        : '''
  $hasValueLine
''';

    return '  $fieldLine$hvl';
  }

  String? get hasValueLine => hasValueLineNumber != null
      ? 'bool ${fieldDescriptor.protoFieldName}'
          '${fieldDescriptor.useProtoFieldNamingConventions ? '_has_value' : 'HasValue'} = $hasValueLineNumber;'
      : null;
}
