import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_entity_annotations/squarealfa_entity_annotations.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';

/// Generates EntityPermissions classes for PODOs
///
/// Check the README.md for an overview.
class CrudPermissionsGenerator extends GeneratorForAnnotation<CrudPermissions> {
  CrudPermissionsGenerator();

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is EnumElement) return '';
    final classElement = element.asInterfaceElement();

    final className = classElement.name;
    final permName = '_${className.snakeCase}';

    final ret = '''


class \$${className}Permissions extends EntityPermissions {

  const \$${className}Permissions();

  @override
  String get create => 'create$permName';

  @override
  String get delete => 'delete$permName';

  @override
  String get read => 'read$permName';

  @override
  String get update => 'update$permName';
}
   
    ''';
    return ret;
  }
}
