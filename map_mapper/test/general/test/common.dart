import 'dart:io';

import 'package:yaml/yaml.dart';

bool? _isMillisecondPrecision;

Future<bool> get isMillisecondPrecision async {
  if (_isMillisecondPrecision != null) return _isMillisecondPrecision!;

  final r = _isMillisecondPrecision =
      (await _getFromBuildYaml() == 'millisecondsSinceEpoch');
  return r;
}

Future<String?> _getFromBuildYaml() async {
  final buildFile = File('build.yaml');
  final build = await buildFile.readAsString();
  var yml = loadYaml(build);
  if (yml == null) return '';
  final ret = (yml[r'targets']?[r'$default']?['builders']
          ?['map_mapper_generator:map_map_generator']?['options']
      ?['dateTimeRepresentation'] as String?);
  return ret;
}
