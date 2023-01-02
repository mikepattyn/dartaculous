import 'package:analyzer/dart/element/element.dart';
import 'package:proto_annotations/proto_annotations.dart';

class ProtoServicesGeneratorBase {
  final String className;
  final InterfaceElement classElement;
  final Config config;
  final String serviceClassName;

  ProtoServicesGeneratorBase._({
    required this.config,
    required this.classElement,
    required this.className,
  }) : serviceClassName = className.endsWith('Base')
            ? className.substring(0, className.length - 4)
            : className.endsWith('Interface')
                ? className.substring(0, className.length - 'Interface'.length)
                : className;

  ProtoServicesGeneratorBase({
    required Config config,
    required InterfaceElement classElement,
  }) : this._(
          config: config,
          classElement: classElement,
          className: classElement.name,
        );

  String getParameterMessageName(String methodName) =>
      'G_${config.prefix}${serviceClassName}_${methodName}_Parameters';

  String getReturnMessageName(String methodName) =>
      'G_${config.prefix}${serviceClassName}_${methodName}_Return';
}
