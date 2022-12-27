import 'package:analyzer/dart/element/element.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/enum_generator.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';

import 'class_generator.dart';

class ProtoGenerator {
  final Config config;
  final imports = <String>{};
  final messages = <String>{};
  final wrappers = <String>{};

  ProtoGenerator(this.config);

  void generateForAnnotatedElement(
    Element element,
    ProtoReflected protoReflected,
  ) {
    var ret = element is EnumElement
        ? EnumGenerator(
            interfaceElement: element,
            annotation: protoReflected.proto,
            config: config,
          ).generate()
        : ClassGenerator(
            element: element,
            protoReflected: protoReflected,
            config: config,
            imports: imports,
            wrappers: wrappers,
          ).generate();

    messages.add(ret);
  }
}
