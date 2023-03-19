import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:csharp_annotations/csharp_annotations.dart';
import 'package:decimal/decimal.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:csharp_annotations/config.dart';
import 'package:csharp_generator/src/constant_reader_extension.dart';
import 'package:csharp_generator/src/interface_element_extension.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart'
    as sea;
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'csharp_types/csharp_annotation.dart';
import 'csharp_types/csharp_ast.dart';
import 'csharp_types/csharp_record.dart';
import 'csharp_types/csharp_enum.dart';
import 'csharp_types/csharp_property.dart';
import 'field_descriptor.dart';

part 'csharp_builder.ast.dart';
part 'csharp_builder.render.dart';
part 'csharp_builder.attributes.dart';

class CSharpBuilder implements Builder {
  late Config config;
  late String modelPath;

  CSharpBuilder(BuilderOptions options) {
    config = Config.fromJson(options.config);
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

    final ast = _buildAst(
      buildStep,
      config,
      elements,
    );
    final contents = _buildContents(ast);

    final path = p.join('lib', p.dirname(modelPath));
    final filename = p.basename(modelPath);
    final output = AssetId(buildStep.inputId.package, p.join(path, filename));

    await buildStep.writeAsString(output, contents.toString());
  }

  Future<Map<InterfaceElement, CSharp>> _findElements(
    BuildStep buildStep,
  ) async {
    final lst = <MapEntry<InterfaceElement, CSharp>>[];
    await for (final asset in buildStep.findAssets(_allFilesInLib)) {
      if (!await buildStep.resolver.isLibrary(asset)) {
        continue;
      }
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
