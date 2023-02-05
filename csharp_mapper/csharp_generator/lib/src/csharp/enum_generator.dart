// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:csharp_annotations/config.dart';
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:csharp_generator/src/csharp/interface_element_extension.dart';
import 'package:recase/recase.dart';

class EnumGenerator {
  EnumGenerator({
    required this.interfaceElement,
    required this.config,
    required this.annotation,
  });

  final EnumElement interfaceElement;
  final Config config;
  final CSharp annotation;

  String generate() {
    var fieldBuffer = StringBuffer();
    var fieldDescriptors = interfaceElement.getFieldDescriptors(
      annotation: annotation,
      config: config,
    );
    for (var fieldDescriptor in fieldDescriptors) {
      fieldBuffer.writeln('  ${fieldDescriptor.displayName.pascalCase},');
    }
    var className = interfaceElement.name.pascalCase;
    var ret = '''
public enum $className {
$fieldBuffer}
''';

    return ret;
  }
}
