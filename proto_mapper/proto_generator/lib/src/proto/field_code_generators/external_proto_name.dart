import 'package:analyzer/dart/element/type.dart';

abstract class ExternalProtoNames {
  Iterable<String> get externalProtoNames;
}

Iterable<String> getExternalProtoNames(DartType itemType) {
  final segments = itemType.element!.source!.uri.pathSegments.toList();
  final lastSrc = segments.lastIndexOf('src');
  if (lastSrc != -1) segments.removeRange(0, lastSrc + 1);
  var fileName = segments[segments.length - 1];
  fileName = '${fileName.substring(0, fileName.length - 4)}proto';
  segments[segments.length - 1] = fileName;
  return [segments.join('/')];
}
