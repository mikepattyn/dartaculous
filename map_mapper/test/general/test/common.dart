import 'dart:io';

bool get isMillisecondPrecision {
  Map<String, String> envVars = Platform.environment;
  final ret = envVars['CONFIGURATION'] == 'milliseconds';
  return ret;
}
