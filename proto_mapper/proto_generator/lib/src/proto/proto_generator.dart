import 'package:analyzer/dart/element/element.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/enum_generator.dart';
import 'package:source_gen/source_gen.dart';

import 'class_generator.dart';

class ProtoGenerator {
  final Config config;
  final imports = <String>{};
  final messages = <String>{};

  ProtoGenerator(this.config);

  void generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
  ) {
    var readAnnotation = annotation.hydrateAnnotation(
      prefix: config.prefix,
      useProtoFieldNamingConventions: true,
    );

    final proto = readAnnotation.proto;

    var ret = element is EnumElement
        ? EnumGenerator(
            interfaceElement: element,
            annotation: proto,
            config: config,
          ).generate()
        : ClassGenerator(
            element: element,
            protoReflected: readAnnotation,
            config: config,
            imports: imports,
          ).generate();

    messages.add(ret);
  }
}
