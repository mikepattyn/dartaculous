part of 'field_code_generator.dart';

abstract class CompositeFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements FieldCodeGenerator {
  CompositeFieldCodeGenerator(this.fieldDescriptor, this.lineNumbers) {
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

  @override
  String render() {
    return '  $fieldLine';
  }

  String get fieldType;
}
