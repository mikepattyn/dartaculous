import 'package:path/path.dart' as path;
import 'dart:io';

import 'package:yaml/yaml.dart';

void main(List<String> args) async {
  var packageName = _getPackageName(args);
  if (packageName == null) {
    return;
  }

  final currentDir = Directory.current.path;
  final pubspecLockPath = path.join(currentDir, 'pubspec.lock');
  final pubspecLockFile = File(pubspecLockPath);
  if (!await pubspecLockFile.exists()) {
    print('There is no pubspec.lock file in this directory.');
    return;
  }

  String? ver = await _getVersion(pubspecLockPath, packageName);
  if (ver == null) {
    print('No version of $packageName is installed. ($pubspecLockPath)');
    return;
  }

  final home = Platform.environment['HOME'];
  if (home == null) {
    print('HOME environment variable is not defined.');
    return;
  }
  final src = path.join(home,
      '.pub-cache/hosted/pub.dartlang.org/$packageName-$ver/lib/$packageName.so');
  if (!await File(src).exists()) {
    print('The package does not contain lib/$packageName.so library.');
    return;
  }
  final dest = path.join(currentDir, '$packageName.so');
  File(src).copy(dest);
  print('Copied $packageName.so to current directory');
}

String? _getPackageName(List<String> args) {
  if (args.length != 1) {
    print('Usage: ffi-install <package-name>');
    print('');
    print('Assumes that <package-name> refers to a package that');
    print('is already added to pubspec.yaml.');
    return null;
  }
  return args.first;
}

Future<String?> _getVersion(String pubspecPath, String packageName) async {
  final yamlContent = await File(pubspecPath).readAsString();
  var doc = loadYaml(yamlContent);

  final version = doc['packages']?[packageName]?['version'];
  return version;
}
