import 'package:path/path.dart' as path;
import 'package:pubspec/pubspec.dart';
import 'dart:io';

void main(List<String> args) async {
  var packageName = _getPackageName(args);
  if (packageName == null) {
    return;
  }

  final currentDir = Directory.current.path;
  final pubspecPath = path.join(currentDir, 'pubspec.yaml');
  final pubspecFile = File(pubspecPath);
  if (!await pubspecFile.exists()) {
    print('There is no pubspec.yaml file in this directory.');
    return;
  }

  String? ver = await _getVersion(pubspecPath);
  if (ver == null) {
    print('This package does not depend on mongo_go. ($pubspecPath)');
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
}

String? _getPackageName(List<String> args) {
  if (args.length != 1) {
    print('Usage: ffi-install <package-name>');
    print('');
    print('This package assumes that <package-name> refers to a package that');
    print('is already added to pubspec.yaml.');
    return null;
  }
  return args.first;
}

Future<String?> _getVersion(String pubspecPath) async {
  final pubSpec = await PubSpec.loadFile(pubspecPath);
  final ver = _getSpecificVersion(pubSpec);
  return ver;
}

String? _getSpecificVersion(PubSpec pubSpec) {
  final dynamic ver = pubSpec.dependencies['mongo_go'];
  if (ver == null) {
    return null;
  }
  if (ver.versionConstraint == null) {
    return null;
  }
  return ver.versionConstraint.toString();
}
