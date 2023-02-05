import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:csharp_annotations/config.dart';
import 'package:csharp_generator/src/common/constant_reader_extension.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';

import 'csharp/record_generator.dart';

class CSharpBuilder implements Builder {
  late Config config;
  late CSharpGenerator csharpGen;
  late String modelPath;

  CSharpBuilder(BuilderOptions options) {
    config = Config.fromJson(options.config);
    csharpGen = CSharpGenerator(config);
    modelPath = _getModelPath();
  }

  static final _allFilesInLib = Glob('lib/**.dart');
  @override
  Map<String, List<String>> get buildExtensions {
    return {
      r'$lib$': [modelPath],
    };
  }

  @override
  Future<void> build(BuildStep buildStep) async {
    final elements = await _findElements(buildStep);

    final records = StringBuffer();
    _writeHeader(buildStep, records);

    for (final e in elements.entries) {
      final iElement = e.key;
      final annotation = e.value;
      final content =
          csharpGen.generateForAnnotatedElement(iElement, annotation);
      records.writeln(content);
      records.writeln();
    }
    final path = p.join('lib', p.dirname(modelPath));
    final filename = p.basename(modelPath);
    final output = AssetId(buildStep.inputId.package, p.join(path, filename));

    await buildStep.writeAsString(output, records.toString());
  }

  void _writeHeader(BuildStep buildStep, StringBuffer records) {
    final lib = buildStep.inputId.package.pascalCase;
    final namespace = config.namespace.replaceAll('{package_name}', lib);
    records.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');
    records.writeln();
    records.writeln('namespace $namespace;');
    records.writeln();
  }

  Future<Map<InterfaceElement, CSharp>> _findElements(
    BuildStep buildStep,
  ) async {
    final lst = <MapEntry<InterfaceElement, CSharp>>[];
    await for (final asset in buildStep.findAssets(_allFilesInLib)) {
      final library = await buildStep.resolver.libraryFor(asset);
      final reader = LibraryReader(library);
      final elementsInLibrary = [
        ...reader.classes,
        ...reader.enums,
      ]
          .map((e) => MapEntry(e, _getCSharpRecord(e)))
          .where((element) => element.value != null)
          .map((e) => MapEntry(e.key, e.value!))
          .toList();
      lst.addAll(elementsInLibrary);
    }

    final map = Map.fromEntries(lst);
    return map;
  }

  String _getModelPath() {
    final path = '${p.withoutExtension(config.outPath)}.cs';
    return path;
  }
}

final _csharpTC = TypeChecker.fromRuntime(CSharp);

CSharp? _getCSharpRecord(InterfaceElement c) {
  final annotation = _csharpTC.firstAnnotationOf(c);

  if (annotation == null) {
    return null;
  }
  final csharp = ConstantReader(annotation).hydrateAnnotation();
  return csharp;
}
