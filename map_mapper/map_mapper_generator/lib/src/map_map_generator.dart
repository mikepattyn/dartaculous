import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator/src/map_mapped_reflected.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

class MapMapGenerator extends GeneratorForAnnotation<MapMapped> {
  final BuilderOptions options;
  late final String _keyHandler;
  ClassElement? _classElement;
  String? _className;
  late TimePrecision _durationPrecision;
  late DateTimeRepresentation _dateTimeRepresentation;

  MapMapGenerator(this.options) {
    var config = options.config;

    _keyHandler = config['keyHandler'] as String? ?? 'DefaultKeyHandler';
    _durationPrecision = _getTimePrecision(
        config['durationPrecision'] as String? ?? 'microseconds');
    _dateTimeRepresentation = _getDateTimeRepresetation(
        config['dateTimeRepresentation'] as String? ??
            'microsecondsSinceEpoch');
  }

  @override
  String? generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final readAnnotation = _hydrateAnnotation(
      annotation,
      durationPrecision: _durationPrecision,
      dateTimeRepresentation: _dateTimeRepresentation,
    );

    if (element is! ClassElement) return null;
    _classElement = element;
    _className = element.name;

    if (_classElement!.kind == ElementKind.ENUM) {
      return _renderEnumMapper();
    }

    var toMapFieldBuffer = StringBuffer();
    var fromMapFieldBuffer = StringBuffer();
    var constructorFieldBuffer = StringBuffer();
    var fieldNamesBuffer = StringBuffer();

    var fieldDescriptors =
        _getFieldDescriptors(_classElement!, readAnnotation.mapMapped);
    var defaultsProviderClassName = _getDefaultsProvider(
      _classElement,
      readAnnotation.mapMapped,
      fieldDescriptors,
    );
    var hasDefaultsProvider = defaultsProviderClassName != null;
    var declareKh = false;

    // let's get all the constructors which cover all non-nullable final fields
    final missingFields = <String>{};
    final constructors = _classElement!.getConstructorsMatchingFields(
        fieldDescriptors: fieldDescriptors,
        allowMissingFields: true,
        missingFields: missingFields);
    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${_classElement!.name} because it is missing a constructor that covers all final properties.\n'
            '\tMissing fields: $missingFields')
        : constructors.first;

    // Set up constructor
    // final constructorFieldBuffer = StringBuffer();
    _buildConstructorBuffer(constructor, fieldDescriptors.toList(),
        constructorFieldBuffer, readAnnotation.mapMapped.useDefaultsProvider);

    for (var fieldDescriptor in fieldDescriptors) {
      var fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
          fieldDescriptor, hasDefaultsProvider);
      declareKh = declareKh || fieldCodeGenerator.usesKh;

      var toMapMap = fieldCodeGenerator.toMapMap;
      toMapFieldBuffer.writeln(toMapMap);

      if (fieldDescriptor.isFinal) {
        // Skip final fields
      } else if (constructor.parameters.where((p) => p.name == fieldDescriptor.name).isNotEmpty) {
        // Skip fields that are already set in the constructor
      } else {
        var fromMapMap = fieldCodeGenerator.fromMapMap;
        fromMapFieldBuffer.writeln(fromMapMap);
      }

      fieldNamesBuffer.writeln(fieldCodeGenerator.fieldNamesClassFieldName);
      fieldNamesBuffer.writeln(fieldCodeGenerator.fieldNamesClassGetter);
    }

    var ret = _renderMapper(
      defaultsProviderClassName: defaultsProviderClassName,
      toMapFieldBuffer: toMapFieldBuffer,
      fromMapFieldBuffer: fromMapFieldBuffer,
      constructorFieldBuffer: constructorFieldBuffer,
      constructorName: constructor.name,
      fieldNamesBuffer: fieldNamesBuffer,
      declareKh: declareKh,
      mapMappedReflected: readAnnotation,
    );

    return ret;
  }

  String _renderMapper({
    required String? defaultsProviderClassName,
    required StringBuffer toMapFieldBuffer,
    required StringBuffer fromMapFieldBuffer,
    required StringBuffer constructorFieldBuffer,
    required String constructorName,
    required StringBuffer fieldNamesBuffer,
    required bool declareKh,
    required MapMappedReflected mapMappedReflected,
  }) {
    final className = _className!;

    final defaultsProviderDeclaration =
        ((defaultsProviderClassName ?? '') == '')
            ? ''
            : 'final defaultsProvider = $defaultsProviderClassName();';

    final kh = declareKh ? 'final \$kh = const $_keyHandler();' : '';
    final toSubClassMap = _getToSubClasses(mapMappedReflected);
    final typeMap = mapMappedReflected.knownSubClasses == null
        ? ''
        : '''map['\\\$type'] = '$className';''';

    final fromSubClassMap = _getFromSubClasses(mapMappedReflected, className);

    final fromMapMap = _classElement?.isAbstract ?? false ? '''
          throw UnimplementedError();''' : '''
          $kh        
          $defaultsProviderDeclaration
          
          return $className${constructorName.isNotEmpty ? '.$constructorName' : ''}($constructorFieldBuffer)
              $fromMapFieldBuffer; 
    ''';

    final fromMapBody = mapMappedReflected.knownSubClasses == null
        ? fromMapMap
        : fromSubClassMap;

    final lFromMapMethod =
        mapMappedReflected.knownSubClasses == null || _classElement!.isAbstract
            ? ''
            : '''
        $className _fromMap(Map<String, dynamic> map) { 
          $fromMapMap
        }
    
    ''';

    return '''

      class \$${className}MapMapper extends MapMapper<$className> {
        const \$${className}MapMapper();
        static const \$type = '$className';

        @override
        $className fromMap(Map<String, dynamic> map) { 
          $fromMapBody
        }

        $lFromMapMethod

        @override
        Map<String, dynamic> toMap($className instance) {

            $toSubClassMap
            
            $kh
            final map = <String, dynamic>{};
            
            $typeMap
            
            $toMapFieldBuffer  
              
            return map;
        }
      }


      extension \$${className}MapExtension on $className {
        Map<String, dynamic> toMap() => const \$${className}MapMapper().toMap(this);
        static $className fromMap(Map<String, dynamic> map) => const \$${className}MapMapper().fromMap(map);
      }
      
      extension \$Map${className}Extension on Map<String, dynamic> {
        $className to$className() => const \$${className}MapMapper().fromMap(this);
      }
  

      class \$${className}FieldNames {
        $kh
        final String fieldName;
        final String prefix;

        \$${className}FieldNames.sub(this.fieldName) 
          : prefix = '\$fieldName.';

      const \$${className}FieldNames()
        : fieldName = '',
          prefix = '';

        $fieldNamesBuffer

        @override
        String toString() => fieldName;
      }

  ''';
  }

  void _buildConstructorBuffer(
      ConstructorElement constructor,
      List<FieldDescriptor> fromFieldDescriptors,
      StringBuffer constructorFieldBuffer,
      bool hasDefaultsProvider) {
    for (var constructorParameter in constructor.parameters) {
      final fieldDescriptorList = fromFieldDescriptors
          .where((element) => element.name == constructorParameter.name);

      if (fieldDescriptorList.isEmpty) {
        // If not found, there's not much we can do...
        continue;
      }
      final fieldDescriptor = fieldDescriptorList.first;
      fromFieldDescriptors.remove(fieldDescriptor);

      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
          fieldDescriptor, hasDefaultsProvider);
      // INLINE
      final constructorMap = constructorParameter.isNamed
          ? fieldCodeGenerator.constructorMap
          : fieldCodeGenerator.constructorMap
              .substring(constructorParameter.nameLength + 1);
      constructorFieldBuffer.writeln(constructorMap);
    }
  }

  String _renderEnumMapper() {
    var className = _className;
    return '''
    class \$${className}MapMapper
    {
      const \$${className}MapMapper();
      $className fromMap(dynamic e) => $className.values[e];
      dynamic toMap($className e) => e.index;
    }
    ''';
  }

  static String? _getDefaultsProvider(
    ClassElement? classElement,
    MapMapped annotation,
    Iterable<FieldDescriptor> fieldDescriptors,
  ) {
    if (annotation.useDefaultsProvider == false) {
      return null;
    }
    if (!fieldDescriptors.any((element) => !element.isNullable)) {
      return null;
    }
    return '\$${classElement!.name}DefaultsProvider';
  }

  String _getFromSubClasses(MapMappedReflected reflected, String className) {
    final kscs = getKnownSubclasses(reflected.knownSubClasses, MapMapped);
    if (kscs.isEmpty) return '';

    final cases = kscs.map((ksc) {
      final typeName = ksc.getDisplayString(withNullability: false);
      return '''case \$${typeName}MapMapper.\$type:
        return (const \$${typeName}MapMapper()).fromMap(map);
      ''';
    }).join('\n');

    final ret = '''
        final type = map['\\\$type'] as String?;
        switch (type) {
          case null:
          case \$type:
            ${_classElement!.isAbstract ? 'throw UnimplementedError();' : 'return _fromMap(map);'} 
          $cases
          default:
            throw UnimplementedError();
        }
    ''';
    return ret;
  }

  static String _getToSubClasses(MapMappedReflected reflected) {
    final kscs = getKnownSubclasses(reflected.knownSubClasses, MapMapped);
    if (kscs.isEmpty) return '';

    final ret = kscs.map((ksc) {
      final typeName = ksc.getDisplayString(withNullability: false);
      final line = '''
    if (instance is $typeName) {
      return {'\\\$type': \$${typeName}MapMapper.\$type, ...const \$${typeName}MapMapper().toMap(instance),};
    }    
''';
      return line;
    }).join('\n');
    return ret;
  }
}

Iterable<FieldDescriptor> _getFieldDescriptors(
    ClassElement classElement, MapMapped annotation) {
  final fieldSet = classElement.getSortedFieldSet();
  final fieldDescriptors = fieldSet
      .map((fieldElement) => FieldDescriptor.fromFieldElement(
            fieldElement,
            annotation,
          ))
      .where((element) => element.isMapIncluded);
  return fieldDescriptors;
}

MapMappedReflected _hydrateAnnotation(
  ConstantReader reader, {
  required TimePrecision durationPrecision,
  required DateTimeRepresentation dateTimeRepresentation,
}) {
  final annotatedDurationPrecision =
      reader.getTimePrecision('durationPrecision') ?? durationPrecision;

  final annotatedDateTimePrecision =
      reader.getDateTimeRepresentation('dateTimeRepresentation') ??
          dateTimeRepresentation;

  final kscReader = reader.read('knownSubClasses');
  final kscs = kscReader.isNull
      ? null
      : kscReader.listValue.map((ksc) {
          return ksc.toTypeValue()!;
        }).toList();

  var mm = MapMapped(
    includeFieldsByDefault:
        reader.read('includeFieldsByDefault').literalValue as bool,
    useDefaultsProvider:
        reader.read('useDefaultsProvider').literalValue as bool,
    durationPrecision: annotatedDurationPrecision,
    dateTimeRepresentation: annotatedDateTimePrecision,
    mapEnumToString: reader.read('mapEnumToString').literalValue as bool,
  );
  final ret = MapMappedReflected(mm, kscs);
  return ret;
}

TimePrecision _getTimePrecision(String value) {
  final values = TimePrecision.values.where((tp) => tp.name == value);
  if (values.isEmpty) {
    throw UnimplementedError();
  }
  return values.first;
}

DateTimeRepresentation _getDateTimeRepresetation(String value) {
  final values = DateTimeRepresentation.values.where((tp) => tp.name == value);
  if (values.isEmpty) {
    throw UnimplementedError();
  }
  return values.first;
}
