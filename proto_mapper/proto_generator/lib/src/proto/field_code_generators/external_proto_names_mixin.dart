import '../field_descriptor.dart';

mixin ExternalProtoNamesMixin {
  FieldDescriptor get fieldDescriptor;

  Iterable<String>? _externalProtoNames;

  Iterable<String> get externalProtoNames {
    _externalProtoNames ??= _getExternalProtoName(fieldDescriptor);
    return _externalProtoNames!;
  }

  Iterable<String> _getExternalProtoName(FieldDescriptor fieldDescriptor) {
    final fieldElementType = fieldDescriptor.itemType;
    final segments =
        fieldElementType.element!.source!.uri.pathSegments.toList();
    final lastSrc = segments.lastIndexOf('src');
    if (lastSrc != -1) segments.removeRange(0, lastSrc + 1);
    var fileName = segments[segments.length - 1];
    fileName = '${fileName.substring(0, fileName.length - 4)}proto';
    segments[segments.length - 1] = fileName;
    return [segments.join('/')];
  }
}
