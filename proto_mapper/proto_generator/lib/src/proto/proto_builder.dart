import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:path/path.dart' as p;
import 'package:proto_annotations/proto_annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'proto_generator.dart';

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
    await for (final input in buildStep.findAssets(_allFilesInLib)) {
      final library = await buildStep.resolver.libraryFor(input);
      final classesInLibrary = LibraryReader(library).classes;

      classesInLibrary.where((e) => _inspect(e) != null).forEach((c) {
        final cr = _inspect(c)!;
        protoGen.generateForAnnotatedElement(c, cr);
      });
    }

    final package =
        config.packageName.isEmpty ? '' : 'package ${config.packageName};';
    final options = config.options.map((e) => 'option $e;').join('\n');
    final imports = protoGen.imports.map((e) => 'import "$e";').join('\n');
    final messages = protoGen.messages.join('\n');

    final content = '''
syntax = "proto3";

$package

$options

$imports

$messages
''';

    final output = _allFileOutput(buildStep);

    return buildStep.writeAsString(output, content);
  }
}

final _tc = TypeChecker.fromRuntime(Proto);
ConstantReader? _inspect(ClassElement c) {
  final annotation = _tc.firstAnnotationOf(c);

  if (annotation == null) {
    return null;
  }
  return ConstantReader(annotation);
}
