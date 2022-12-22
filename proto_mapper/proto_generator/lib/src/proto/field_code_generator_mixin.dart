part of 'field_code_generator.dart';

mixin FieldCodeGeneratorMixin {
  FieldDescriptor get fieldDescriptor;
  List<int> get lineNumbers;
  int? _lineNumber;

  int get lineNumber {
    _lineNumber ??= (fieldDescriptor.number ?? _nextAvailable(lineNumbers));
    return _lineNumber!;
  }

}

int _nextAvailable(List<int> numbers) {
  int i = 0;
  while (numbers.contains(++i)) {}
  numbers.add(i);
  return i;
}
