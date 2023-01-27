// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:analyzer/dart/element/element.dart';
import 'package:proto_annotations/config.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/interface_element_extension.dart';

class EnumGenerator {
  EnumGenerator({
    required this.interfaceElement,
    required this.annotation,
    required this.config,
  });

  final EnumElement interfaceElement;
  final Proto annotation;
  final Config config;

  String generate() {
    var fieldBuffer = StringBuffer();
    var fieldDescriptors = interfaceElement.getFieldDescriptors(
      annotation: annotation,
      config: config,
    );
    final prefix = config.prefix;
    var lineNumber = 0;
    for (var fieldDescriptor in fieldDescriptors) {
      fieldBuffer
          .writeln('  ${fieldDescriptor.protoFieldName} = ${lineNumber++};');
    }
    var className = interfaceElement.name;
    var ret = '''
enum $prefix$className {
$fieldBuffer}   
''';

    return ret;
  }
}
