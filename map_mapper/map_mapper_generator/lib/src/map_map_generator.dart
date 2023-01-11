import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:map_mapper_annotations/config.dart';
import 'package:map_mapper_annotations/map_mapper_annotations.dart';
import 'package:map_mapper_generator/src/map_mapped_reflected.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'extensions/constant_reader_date_time_representation_extension.dart';
import 'extensions/constant_reader_time_precision_extension.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

class MapMapGenerator extends GeneratorForAnnotation<MapMapped> {
  final Config config;

  MapMapGenerator(this.config);

  @override
  String? generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final readAnnotation = _hydrateAnnotation(
      annotation,
      config: config,
    );

    if (element is! InterfaceElement) return null;

    if (element is EnumElement) {
      return _renderEnumMapper(element);
    }

    var toMapFieldBuffer = StringBuffer();
    var fromMapFieldBuffer = StringBuffer();
    var constructorFieldBuffer = StringBuffer();
    var fieldNamesBuffer = StringBuffer();

    final classElement = element.asClassElement();
    var fieldDescriptors =
        _getFieldDescriptors(classElement, readAnnotation.mapMapped);
    var defaultsProviderClassName = _getDefaultsProvider(
      classElement,
      readAnnotation.mapMapped,
      fieldDescriptors,
    );
    var hasDefaultsProvider = defaultsProviderClassName != null;
    var declareKh = false;

    // let's get all the constructors which cover all non-nullable final fields
    final constructor = _getConstructor(classElement, fieldDescriptors);

    // Set up constructor
    // final constructorFieldBuffer = StringBuffer();
    _buildConstructorBuffer(
      constructor,
      fieldDescriptors.toList(),
      constructorFieldBuffer,
      readAnnotation.mapMapped.useDefaultsProvider,
    );

    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor,
        hasDefaultsProvider,
      );
      declareKh |= fieldCodeGenerator.usesKh;

      var toMapMap = fieldCodeGenerator.toMapMap;
      toMapFieldBuffer.writeln(toMapMap);

      _writeFieldToFromMapFieldBuffer(
        constructor,
        fieldDescriptor,
        fieldCodeGenerator,
        fromMapFieldBuffer,
      );

      fieldNamesBuffer.writeln(fieldCodeGenerator.fieldNamesClassFieldName);
      fieldNamesBuffer.writeln(fieldCodeGenerator.fieldNamesClassGetter);
    }

    var ret = _renderMapper(
      classElement,
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

  void _writeFieldToFromMapFieldBuffer(
    ConstructorElement constructor,
    FieldDescriptor fieldDescriptor,
    FieldCodeGenerator fieldCodeGenerator,
    StringBuffer fromMapFieldBuffer,
  ) {
    // Skip the field in fromMap() if already set in the constructor, or if final
    final setInConstructor =
        _fieldAlreadySetInConstructor(constructor, fieldDescriptor);

    if (setInConstructor) return;

    if (!fieldDescriptor.isFinal) {
      var fromMapMap = fieldCodeGenerator.fromMapMap;
      fromMapFieldBuffer.writeln(fromMapMap);
      return;
    }

    // final fields that aren't yet set in the constructor, can still be late
    if (fieldDescriptor.isLate) {
      var fromMapMap = fieldCodeGenerator.fromMapMap;
      fromMapFieldBuffer.writeln(fromMapMap);
      return;
    }

    // or already an initialized map, list or set to which we can append
    if (fieldDescriptor.hasInitializer &&
        (fieldDescriptor.fieldElementType.isDartCoreMap ||
            fieldDescriptor.fieldElementType.isDartCoreList ||
            fieldDescriptor.fieldElementType.isDartCoreSet)) {
      final fromMapMap =
          fieldCodeGenerator.fromMapMap.replaceAll(' = ', '.addAll(');
      fromMapFieldBuffer.writeln('$fromMapMap)');
    }
  }

  ConstructorElement _getConstructor(
      ClassElement classElement, Iterable<FieldDescriptor> fieldDescriptors) {
    final missingFields = <String>{};
    final constructors = classElement.getConstructorsMatchingFields(
        fieldDescriptors: fieldDescriptors,
        allowMissingFields: true,
        missingFields: missingFields);
    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${classElement.name} because it is missing a constructor that covers all final properties.\n'
            '\tMissing fields: $missingFields')
        : constructors.first;
    return constructor;
  }

  bool _fieldAlreadySetInConstructor(
      ConstructorElement constructor, FieldDescriptor fieldDescriptor) {
    return constructor.parameters
        .where((p) => p.name == fieldDescriptor.name)
        .isNotEmpty;
  }

  String _renderMapper(
    ClassElement classElement, {
    required String? defaultsProviderClassName,
    required StringBuffer toMapFieldBuffer,
    required StringBuffer fromMapFieldBuffer,
    required StringBuffer constructorFieldBuffer,
    required String constructorName,
    required StringBuffer fieldNamesBuffer,
    required bool declareKh,
    required MapMappedReflected mapMappedReflected,
  }) {
    final className = classElement.name;

    final defaultsProviderDeclaration =
        ((defaultsProviderClassName ?? '') == '')
            ? ''
            : 'final defaultsProvider = $defaultsProviderClassName();';

    final kh = declareKh
        ? 'final \$kh = const ${mapMappedReflected.keyHandler}();'
        : '';
    final toSubClassMap = _getToSubClasses(mapMappedReflected);
    final typeMap = mapMappedReflected.knownSubClasses == null
        ? ''
        : '''map['\\\$type'] = '$className';''';

    final fromSubClassMap =
        _getFromSubClasses(classElement, mapMappedReflected, className);

    final fromMapMap = classElement.isAbstract
        ? '''
          throw UnimplementedError();'''
        : '''
          $kh        
          $defaultsProviderDeclaration
          
          return $className${constructorName.isNotEmpty ? '.$constructorName' : ''}($constructorFieldBuffer)
              $fromMapFieldBuffer; 
    ''';

    final fromMapBody = mapMappedReflected.knownSubClasses == null
        ? fromMapMap
        : fromSubClassMap;

    final lFromMapMethod =
        mapMappedReflected.knownSubClasses == null || classElement.isAbstract
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
    bool hasDefaultsProvider,
  ) {
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

  String _renderEnumMapper(EnumElement enumElement) {
    var name = enumElement.name;
    return '''
    class \$${name}MapMapper
    {
      const \$${name}MapMapper();
      $name fromMap(dynamic e) => $name.values[e];
      dynamic toMap($name e) => e.index;
    }
    ''';
  }

  static String? _getDefaultsProvider(
    InterfaceElement? classElement,
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

  String _getFromSubClasses(ClassElement classElement,
      MapMappedReflected reflected, String className) {
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
            ${classElement.isAbstract ? 'throw UnimplementedError();' : 'return _fromMap(map);'} 
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
  InterfaceElement classElement,
  MapMapped annotation,
) {
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
  required Config config,
}) {
  final annotatedDurationPrecision =
      reader.getTimePrecision('durationPrecision') ?? config.durationPrecision;

  final annotatedDateTimePrecision =
      reader.getDateTimeRepresentation('dateTimeRepresentation') ??
          config.dateTimeRepresentation;

  final kscReader = reader.read('knownSubClasses');
  final kscs = kscReader.isNull
      ? null
      : kscReader.listValue.map((ksc) {
          return ksc.toTypeValue()!;
        }).toList();

  final kht = _getKeyHandlerType(config, reader);

  var mm = MapMapped(
    includeFieldsByDefault:
        reader.read('includeFieldsByDefault').literalValue as bool,
    useDefaultsProvider:
        reader.read('useDefaultsProvider').literalValue as bool,
    durationPrecision: annotatedDurationPrecision,
    dateTimeRepresentation: annotatedDateTimePrecision,
    mapEnumToString: reader.read('mapEnumToString').literalValue as bool,
  );

  final ret = MapMappedReflected(
    mapMapped: mm,
    knownSubClasses: kscs,
    keyHandler: kht,
  );
  return ret;
}

String _getKeyHandlerType(Config config, ConstantReader reader) {
  final kht = reader.read('keyHandlerType');
  if (kht.isNull) {
    return config.keyHandlerType;
  }
  return kht.typeValue.getDisplayString(withNullability: false);
}
