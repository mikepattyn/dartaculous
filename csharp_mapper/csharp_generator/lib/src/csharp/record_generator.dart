import 'package:analyzer/dart/element/element.dart';
import 'package:csharp_annotations/config.dart';
import 'package:csharp_annotations/csharp_annotations.dart';

import 'class_generator.dart';
import 'enum_generator.dart';

class CSharpGenerator {
  final Config config;

  CSharpGenerator(this.config);

  String generateForAnnotatedElement(Element element, CSharp annotation) {
    var ret = element is EnumElement
        ? EnumGenerator(
            interfaceElement: element,
            config: config,
            annotation: annotation,
          ).generate()
        : ClassGenerator(
            element: element,
            config: config,
            annotation: annotation,
          ).generate();

    return ret;
  }
}
