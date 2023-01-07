import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:proto_annotations/config.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/common/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:source_gen/source_gen.dart';

import 'proto/proto_generator.dart';

class ProtoBuilder implements Builder {
  late Config config;
  late ProtoGenerator protoGen;

  ProtoBuilder(BuilderOptions options) {
    config = Config.fromJson(options.config);
    protoGen = ProtoGenerator(config);
  }

  static final _allFilesInLib = Glob('lib/**.dart');
  @override
  Map<String, List<String>> get buildExtensions {
    return const {
      r'$lib$': ['proto/model.tproto', 'src/proto_model.g.dart'],
    };
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    final classes = <ClassElement, ProtoReflected>{};
    final enums = <EnumElement, ProtoReflected>{};
    await _findElements(buildStep, classes, enums);

    classes.forEach((c, cr) => protoGen.generateForAnnotatedElement(c, cr));
    enums.forEach((e, cr) => protoGen.generateForAnnotatedElement(e, cr));

    String content = _renderProto();
    final output =
        AssetId(buildStep.inputId.package, p.join('lib/proto', 'model.tproto'));

    await buildStep.writeAsString(output, content);
  }

  String _renderProto() {
    final imports = protoGen.imports;
    final wrappers = protoGen.wrappers;
    final messages = protoGen.messages;

    final package =
        config.packageName.isEmpty ? '' : 'package ${config.packageName};';
    final options = config.options.map((e) => 'option $e;').join('\n');
    final renderedImports = imports.map((e) => 'import "$e";').join('\n');
    final renderedWrappers = wrappers.join('\n');
    final renderedMessages = messages.join('\n');

    final content = '''syntax = "proto3";
    
$package
    
$options
    
$renderedImports

$renderedWrappers
    
$renderedMessages
''';
    return content;
  }

  Future<void> _findElements(
      BuildStep buildStep,
      Map<ClassElement, ProtoReflected> classes,
      Map<EnumElement, ProtoReflected> enums) async {
    await for (final input in buildStep.findAssets(_allFilesInLib)) {
      final library = await buildStep.resolver.libraryFor(input);
      final classesInLibrary = LibraryReader(library).classes;
      for (var c in classesInLibrary) {
        final cr = _getProtoReflected(c);
        if (cr != null) {
          classes[c] = cr;
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
