import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/proto/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:proto_generator/src/proto_services/proto_services_generator.dart';
import 'package:source_gen/source_gen.dart';

import 'proto/proto_generator.dart';

class ProtoBuilder implements Builder {
  late Config config;
  late ProtoGenerator protoGen;
  late ProtoServicesGenerator protoServicesGen;

  ProtoBuilder(BuilderOptions options) {
    config = Config.fromJson(options.config);
    protoGen = ProtoGenerator(config);
    protoServicesGen = ProtoServicesGenerator(config);
  }

  static final _allFilesInLib = Glob('lib/**.dart');
  @override
  Map<String, List<String>> get buildExtensions {
    return const {
      r'$lib$': ['model.proto'],
    };
  }

  static AssetId _allFileOutput(BuildStep buildStep) {
    return AssetId(
      buildStep.inputId.package,
      p.join('lib', 'model.proto'),
    );
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    final classes = <ClassElement, ProtoReflected>{};
    final enums = <EnumElement, ProtoReflected>{};
    final servics = <ClassElement>[];
    await _findElements(buildStep, classes, servics, enums);

    classes.forEach((c, cr) => protoGen.generateForAnnotatedElement(c, cr));
    enums.forEach((e, cr) => protoGen.generateForAnnotatedElement(e, cr));
    for (var c in servics) {
      protoServicesGen.generateForAnnotatedElement(c);
    }

    String content = _renderProto();

    final output = _allFileOutput(buildStep);

    return buildStep.writeAsString(output, content);
  }

  String _renderProto() {
    final imports = protoGen.imports..addAll(protoServicesGen.imports);
    final wrappers = protoGen.wrappers..addAll(protoServicesGen.wrappers);
    final messages = protoGen.messages..addAll(protoServicesGen.messages);
    final services = protoServicesGen.services;

    final package =
        config.packageName.isEmpty ? '' : 'package ${config.packageName};';
    final options = config.options.map((e) => 'option $e;').join('\n');
    final renderedImports = imports.map((e) => 'import "$e";').join('\n');
    final renderedWrappers = wrappers.join('\n');
    final renderedMessages = messages.join('\n');
    final renderedServices = services.join('\n');

    final content = '''
    syntax = "proto3";
    
    $package
    
    $options
    
    $renderedImports
    
    $renderedServices

    $renderedWrappers
    
    $renderedMessages
    
    ''';
    return content;
  }

  Future<void> _findElements(
      BuildStep buildStep,
      Map<ClassElement, ProtoReflected> classes,
      List<ClassElement> servics,
      Map<EnumElement, ProtoReflected> enums) async {
    await for (final input in buildStep.findAssets(_allFilesInLib)) {
      final library = await buildStep.resolver.libraryFor(input);
      final classesInLibrary = LibraryReader(library).classes;
      for (var c in classesInLibrary) {
        final cr = _getProtoReflected(c);
        if (cr != null) {
          classes[c] = cr;
        }
        if (_hasProtoServices(c)) {
          servics.add(c);
        }
      }
      final enumsInLibrary = LibraryReader(library).enums;
      for (var e in enumsInLibrary) {
        final cr = _getProtoReflected(e);
        if (cr != null) {
          enums[e] = cr;
        }
      }
    }
  }
}

final _protoTC = TypeChecker.fromRuntime(Proto);

ProtoReflected? _getProtoReflected(InterfaceElement c) {
  final annotation = _protoTC.firstAnnotationOf(c);

  if (annotation == null) {
    return null;
  }
  final protoReflected = ConstantReader(annotation).hydrateAnnotation();
  return protoReflected;
}

final _protoServicesTC = TypeChecker.fromRuntime(ProtoServices);
bool _hasProtoServices(ClassElement c) {
  final annotation = _protoServicesTC.firstAnnotationOf(c);
  return annotation != null;
}
