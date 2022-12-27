part of 'field_code_generator.dart';

abstract class WrappedFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements FieldCodeGenerator, Wrapped {
  WrappedFieldCodeGenerator(this.fieldDescriptor, this.lineNumbers);

  @override
  final FieldDescriptor fieldDescriptor;

  @override
  final List<int> lineNumbers;

  String get wrappedType;
  String get scalarType;

  @override
  String render() {
    final useWrapped = scalarType.isEmpty ||
        (fieldDescriptor.isNullable && !fieldDescriptor.isRepeated);
    final fieldType = useWrapped ? wrappedType : scalarType;
    return '  ${fieldDescriptor.isRepeated ? 'repeated ' : ''}$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';
  }

  String renderWrapper();

  @override
  String get wrapper {
    if (scalarType.isEmpty ||
        (fieldDescriptor.isNullable && !fieldDescriptor.isRepeated)) {
      return renderWrapper();
    }
    return '';
  }
}
