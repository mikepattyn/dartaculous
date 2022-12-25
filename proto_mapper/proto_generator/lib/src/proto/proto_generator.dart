import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/class_generator.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/enum_generator.dart';
import 'package:source_gen/source_gen.dart';

class ProtoGenerator extends GeneratorForAnnotation<Proto> {
  final BuilderOptions options;
  final String _prefix;
  final String _defaultPackage;
  final bool _useProtoFieldNamingConventions;
  final bool _useWellKnownTypes;
  final _alreadyImported = <String>{};
  final _builtPaths = <String>{};

  ProtoGenerator(this.options)
      : _prefix = options.config['prefix'] as String? ?? 'G',
        _defaultPackage = options.config['package'] as String? ?? '',
        _useProtoFieldNamingConventions =
            options.config['useProtoFieldNamingConventions'] as bool? ?? true,
        _useWellKnownTypes =
            options.config['useWellKnownTypes'] as bool? ?? false;

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final header = _buildSyntax(buildStep);
    var readAnnotation = annotation.hydrateAnnotation(
      prefix: _prefix,
      useProtoFieldNamingConventions: _useProtoFieldNamingConventions,
    );

    final proto = readAnnotation.proto;
    var packageName =
        proto.packageName != '' ? proto.packageName : _defaultPackage;
    final packageDeclaration = packageName != '' ? 'package $packageName;' : '';

    var ret = element is EnumElement
        ? EnumGenerator(
            interfaceElement: element,
            annotation: proto,
            prefix: _prefix,
          ).generate()
        : ClassGenerator(
            element: element,
            protoReflected: readAnnotation,
            prefix: _prefix,
            useWellKnownTypes: _useWellKnownTypes,
          ).generate();

    ret = '''$header
$packageDeclaration
$ret''';
    return ret;
  }

  String _buildSyntax(BuildStep buildStep) {
    final currentPath = buildStep.inputId.path;
    if (_builtPaths.contains(currentPath)) {
      return '';
    }
    _builtPaths.add(currentPath);
    _alreadyImported.clear();
    _alreadyImported.addAll(buildStep.allowedOutputs
        .map((e) => e.path.substring(e.path.lastIndexOf('/') + 1)));
    return '''syntax = "proto3";
      ''';
  }
}
