import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/enum_generator.dart';
import 'package:source_gen/source_gen.dart';

import 'class_generator2.dart';

class ProtoGenerator2 {
  final BuilderOptions options;
  final String _prefix;
  final bool _useWellKnownTypes;
  final imports = <String>{};
  final messages = <String>{};

  ProtoGenerator2(this.options)
      : _prefix = options.config['prefix'] as String? ?? 'G',
        _useWellKnownTypes =
            options.config['useWellKnownTypes'] as bool? ?? false;

  void generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
  ) {
    var readAnnotation = annotation.hydrateAnnotation(
      prefix: _prefix,
      useProtoFieldNamingConventions: true,
    );

    final proto = readAnnotation.proto;

    var ret = element is EnumElement
        ? EnumGenerator(
            interfaceElement: element,
            annotation: proto,
            prefix: _prefix,
          ).generate()
        : ClassGenerator2(
            element: element,
            protoReflected: readAnnotation,
            prefix: _prefix,
            useWellKnownTypes: _useWellKnownTypes,
            imports: imports,
          ).generate();

    messages.add(ret);
  }
}
