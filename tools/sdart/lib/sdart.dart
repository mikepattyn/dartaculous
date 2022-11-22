import 'dart:convert';
import 'dart:io' as io;
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:yaml_edit/yaml_edit.dart';

class ProtoProject {


  Future<String> createProject(
    String packageName, {
    Map<String, String> dependencies = const {},
    Map<String, String> devDependencies = const {},
  }) async {
    await _runDart(['create', '-t', 'console', packageName]);

    final dirPath = io.Directory.current.path;
    final rootPath = path.join(dirPath, packageName);

    if (dependencies.isNotEmpty) {
      await _addDependencies(rootPath, dependencies);
    }
    if (devDependencies.isNotEmpty) {
      await _addDevDependencies(rootPath, devDependencies);
    }
    await _runDart(['pub', 'upgrade', '--major-versions'],
        workingDirectory: rootPath);
    return rootPath;
  }

  Future<void> _runDart(List<String> arguments,
      {String? workingDirectory}) async {
    final result = await io.Process.run(
      'dart',
      arguments,
      workingDirectory: workingDirectory,
    );
    if (result.exitCode != 0) {
      throw result.stderr;
    }
  }

  Future<void> _addDependencies(
      String rootPath, Map<String, String> entry) async {
    await _addPubspecEntry('dependencies', rootPath, entry);
  }

  Future<void> _addDevDependencies(
      String rootPath, Map<String, String> entry) async {
    await _addPubspecEntry('dev_dependencies', rootPath, entry);
  }

  Future<void> _addPubspecEntry(
      String section, String rootPath, Map<String, String> entry) async {
    final pubspecPath = path.join(rootPath, 'pubspec.yaml');

    final yamlContent = await _getCurrentYamlContent(pubspecPath);

    final editor = YamlEditor(yamlContent);
    final currentPackages = editor.parseAt([section]);
    final newDeps = <String, String>{...currentPackages as Map, ...entry};

    editor.update([section], newDeps);

    await File(pubspecPath).writeAsString(editor.toString());
  }

  Future<String> _getCurrentYamlContent(String pubspecPath) async {
    final yamlContent = await File(pubspecPath).readAsString();
    final bfr = StringBuffer();

    bool onDeps = false;
    LineSplitter.split(yamlContent).forEach((line) {
      if (line.trim().startsWith('# dependencies:')) {
        onDeps = true;
        bfr.writeln('dependencies: {}');
        return;
      } else if (onDeps && line.startsWith('#')) {
        return;
      } else {
        onDeps = false;
      }
      bfr.writeln(line);
    });
    final c = bfr.toString();
    return c;
  }
}
