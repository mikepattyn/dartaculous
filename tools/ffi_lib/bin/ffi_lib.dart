import 'package:path/path.dart' as path;
import 'dart:io';

import 'package:yaml/yaml.dart';

void main(List<String> args) async {
  try {
    final cwd = Directory.current.path;
    final packageName = _getPackageName(args);
    final ver = await _getPackageVersion(cwd, packageName);

    final packageLocation = _getPackageLocation(packageName, ver);

    final isCompiled = await _compileGoLib(packageLocation, packageName);

    final src = await _getLibSrcPath(packageLocation, packageName);
    final dest = path.join(cwd, '$packageName.so');
    File(src).copy(dest);
    print(
        '${isCompiled ? 'Compiled and copied' : 'copied'} $packageName.so to current directory');
  } catch (ex) {
    print(ex.toString());
  }
}

Future<bool> _compileGoLib(String packageLocation, String packageName) async {
  final cwd = path.join(packageLocation, 'go');
  if (!await Directory(cwd).exists()) {
    return false;
  }
  await Process.run('go', ['get'], workingDirectory: cwd);

  final compileResult = await Process.run(
    'go',
    ['build', '-buildmode=c-shared', '-o', '$packageName.so'],
    workingDirectory: cwd,
  );
  if (compileResult.exitCode != 0) {
    throw 'Compilation failed. Ensure you have GO and GCC installed and up to date.';
  }
  return true;
}

String _getPackageName(List<String> args) {
  if (args.length != 1) {
    throw '''Usage: ffi-install <package-name>

Assumes that <package-name> refers to a package that
is already added to pubspec.yaml.
    ''';
  }
  return args.first;
}

Future<String?> _getVersion(String pubspecPath, String packageName) async {
  final yamlContent = await File(pubspecPath).readAsString();
  var doc = loadYaml(yamlContent);

  final version = doc['packages']?[packageName]?['version'];
  return version;
}

String _getPackageLocation(String packageName, String ver) {
  if (Platform.isLinux || Platform.isMacOS) {
    return _getNixPackageLocation(packageName, ver);
  }
  if (Platform.isWindows) {
    return _getWindowsPackageLocation(packageName, ver);
  }
  throw UnimplementedError('Operating System not supported.');
}

String _getNixPackageLocation(String packageName, String ver) {
  final home = Platform.environment['HOME'];
  if (home == null) {
    throw '\$HOME environment variable is missing.';
  }

  final pkgPath =
      path.join(home, '.pub-cache/hosted/pub.dartlang.org/$packageName-$ver');
  return pkgPath;
}

String _getWindowsPackageLocation(String packageName, String ver) {
  final home = Platform.environment['LOCALAPPDATA'];
  if (home == null) {
    throw '%LOCALAPPDATA% environment variable is missing.';
  }
  final pkgPath = path.join(
      home, 'Pub\\Cache\\hosted\\pub.dartlang.org\\$packageName-$ver');
  return pkgPath;
}

Future<String> _getPackageVersion(String cwd, String packageName) async {
  final pubspecLockPath = path.join(cwd, 'pubspec.lock');
  final pubspecLockFile = File(pubspecLockPath);
  if (!await pubspecLockFile.exists()) {
    throw 'There is no pubspec.lock file in this directory.';
  }

  String? ver = await _getVersion(pubspecLockPath, packageName);
  if (ver == null) {
    throw 'No version of $packageName is installed. ($pubspecLockPath)';
  }

  return ver;
}

Future<String> _getLibSrcPath(
  String packageLocation,
  String packageName,
) async {
  {
    final src = path.join(packageLocation, 'go/$packageName.so');
    if (await File(src).exists()) {
      return src;
    }
  }
  {
    final src = path.join(packageLocation, 'lib/$packageName.so');
    if (await File(src).exists()) {
      return src;
    }
  }
  throw 'The package does not contain lib/$packageName and neither go/$packageName.so library.';
}
