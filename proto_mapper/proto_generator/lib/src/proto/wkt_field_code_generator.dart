part of 'field_code_generator.dart';

abstract class WKTFieldCodeGenerator
    with FieldCodeGeneratorMixin
    implements FieldCodeGenerator {
  WKTFieldCodeGenerator(this.fieldDescriptor, this.lineNumbers);

  @override
  final FieldDescriptor fieldDescriptor;

  @override
  final List<int> lineNumbers;

  String get wellKnownType;
  String get scalarType;
  String get wellKnownProtoPath;

  @override
  String render() {
    final useWellKnown = scalarType.isEmpty ||
        (fieldDescriptor.isNullable && !fieldDescriptor.isRepeated);
    final fieldType = useWellKnown ? wellKnownType : scalarType;
    return '  ${fieldDescriptor.isRepeated ? 'repeated ' : ''}$fieldType ${fieldDescriptor.protoFieldName} = $lineNumber;';
  }

  Set<String> get externalProtoNames {
    if (scalarType.isEmpty ||
        (fieldDescriptor.isNullable && !fieldDescriptor.isRepeated)) {
      return {wellKnownProtoPath};
    }
    return {};
  }
}
