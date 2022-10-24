import 'dart:io';

bool get usesWellKnownTypes {
  Map<String, String> envVars = Platform.environment;
  final ret = envVars['CONFIGURATION'] == 'wellknown';
  return ret;
}
