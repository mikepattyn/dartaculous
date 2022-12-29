import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator/src/common/constant_reader_extension.dart';
import 'package:proto_generator/src/proto/proto_reflected.dart';
import 'package:proto_generator/src/proto_mapper/interface_element_extension.dart';
import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';
import 'package:squarealfa_generators_common/squarealfa_generators_common.dart';
import 'package:recase/recase.dart';

import 'field_code_generator.dart';
import 'field_descriptor.dart';

part 'proto_mapper_generator.helpers.dart';

class ProtoMapperGenerator extends GeneratorForAnnotation<Proto> {
  final Config config;

  ProtoMapperGenerator(this.config);

  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final protoReflected = annotation.hydrateAnnotation();

    if (element is EnumElement) {
      return renderEnumMapper(element);
    }

    final classElement = element.asClassElement();
    RenderMapperBuffers renderParms =
        _createRenderBuffers(classElement, protoReflected);

    final mapper = _renderMapper(classElement, renderParms);
    return mapper;
  }

  RenderMapperBuffers _createRenderBuffers(
    ClassElement classElement,
    ProtoReflected protoReflected,
  ) {
    final proto = protoReflected.proto;
    final fieldDescriptors = classElement.getFieldDescriptors(
        annotation: protoReflected.proto, config: config);
    final fromFieldDescriptors = [...fieldDescriptors];

    final toProtoFieldBuffer = StringBuffer();
    final fromProtoFieldBuffer = StringBuffer();
    final constructorFieldBuffer = StringBuffer();

    // let's get all the constructors which cover all non-nullable final fields
    final constructor = _getConstructor(classElement, fieldDescriptors, proto);

    // generate the mapping for the constructor, consuming all
    // the fields that are set by the constructor
    _buildConstructorBuffer(
        constructor, fromFieldDescriptors, constructorFieldBuffer);

    // assign the remaining from proto field assignments
    // (that where not set by the constructor)
    for (var fieldDescriptor
        in fromFieldDescriptors.where((fd) => !fd.isFinal)) {
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        config: config,
      );
      var fromProtoMap = fieldCodeGenerator.fromProtoMap;
      fromProtoFieldBuffer
          .writeln('  ..${fieldDescriptor.displayName} = $fromProtoMap');
    }

    // assign the to proto field assignments
    for (var fieldDescriptor in fieldDescriptors) {
      final fieldCodeGenerator = FieldCodeGenerator.fromFieldDescriptor(
        fieldDescriptor: fieldDescriptor,
        config: config,
      );
      toProtoFieldBuffer.writeln(fieldCodeGenerator.toProtoMap);
    }

    final constructorName =
        constructor.name.isNotEmpty ? ".${constructor.name}" : constructor.name;

    // final toKnownSubClasses = _generateToKnownSubclassses(protoReflected);
    // final fromKnownSubClasses = _generateFromKnownSubclasses(protoReflected);

    final renderParms = RenderMapperBuffers(
      constructorName: constructorName,
      toProtoFieldBuffer: toProtoFieldBuffer.toString(),
      fromProtoFieldBuffer: fromProtoFieldBuffer.toString(),
      constructorFieldBuffer: constructorFieldBuffer.toString(),
      // toKnownSubclasses: toKnownSubClasses,
      // fromKnownSubclasses: fromKnownSubClasses,
    );
    return renderParms;
  }

  ConstructorElement _getConstructor(ClassElement classElement,
      Iterable<FieldDescriptor> fieldDescriptors, Proto mapProto) {
    final missingFields = <String>{};
    final constructors = classElement.getConstructorsMatchingFields(
      fieldDescriptors: fieldDescriptors,
      missingFields: missingFields,
    );
    // let's just pick the first of the valid constructors
    final constructor = constructors.isEmpty
        ? throw InvalidGenerationSourceError(
            'Cannot generate proto mapper for class ${classElement.name} because it is missing a constructor that covers all final properties.\n'
            '\tMissing fields: $missingFields')
        : constructors.first;
    return constructor;
  }

  void _buildConstructorBuffer(
      ConstructorElement constructor,
      List<FieldDescriptor> fromFieldDescriptors,
      StringBuffer constructorFieldBuffer) {
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
        fieldDescriptor: fieldDescriptor,
        config: config,
      );
      // INLINE
      final constructorMap = _getConstructorMap(
        constructorParameter,
        fieldDescriptor,
        fieldCodeGenerator,
      );
      constructorFieldBuffer.writeln(constructorMap);
    }
  }

  String _getConstructorMap(
    ParameterElement constructorParameter,
    FieldDescriptor fieldDescriptor,
    FieldCodeGenerator fieldCodeGenerator,
  ) {
    if (!constructorParameter.isNamed) {
      return '${fieldCodeGenerator.fromProtoMap},';
    }
    return '${fieldDescriptor.displayName}: ${fieldCodeGenerator.fromProtoMap}, ';
  }

  // String? _generateToKnownSubclassses(MapProtoReflected mapProtoReflected) {
  //   final kscs =
  //       getKnownSubclasses(mapProtoReflected.knownSubClasses, MapProto);
  //   if (kscs.isEmpty) return null;

  //   final ret = kscs.map((ksc) {
  //     final className = ksc.getDisplayString(withNullability: false);
  //     final camelClassName = className.camelCase;
  //     final expression = '''
  //     if (instance is $className) {
  //       uproto.$camelClassName = (const \$${className}ProtoMapper()).toProto(instance);
  //       return uproto;
  //     }
  //   ''';
  //     return expression;
  //   }).join('\n');
  //   return ret;
  // }

  String _renderMapper(
    ClassElement classElement,
    RenderMapperBuffers renderParms,
  ) {
    final className = classElement.name;
    final prefix = config.prefix;
    final toVar = renderParms.toKnownSubclasses == null ? 'proto' : 'uproto';
    final toSuperFieldsOf = _createSuperFieldsOf(classElement);
    final toReturn = classElement.isAbstract
        ? 'throw UnimplementedError();'
        : '''
            ${renderParms.toKnownSubclasses == null ? '' : 'final proto = uproto.${className.camelCase} = ${prefix}FieldsOf$className();'}

        ${renderParms.toProtoFieldBuffer}
        
        return $toVar;
    ''';

    final fromProto = renderParms.fromKnownSubclasses != null
        ? '''
           $className _\$${className}FromProto($prefix$className sInstance) {
             ${renderParms.fromKnownSubclasses}

          ${classElement.isAbstract ? '''
            throw UnimplementedError();
          ''' : '''
            final instance = sInstance.${className.camelCase};
            final ret = $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
          ${renderParms.fromProtoFieldBuffer};

            return ret;          
          '''}

           }
          '''
        : classElement.isAbstract
            ? '''
          $className _\$${className}FromProto($prefix$className instance) {
            throw UnimplementedError();
          }
          '''
            : '''
          $className _\$${className}FromProto($prefix$className instance) {
            return $className${renderParms.constructorName}(${renderParms.constructorFieldBuffer})
              ${renderParms.fromProtoFieldBuffer};
          }
     ''';

    return '''
  
      class \$${className}ProtoMapper implements ProtoMapper<$className, $prefix$className> {
        const \$${className}ProtoMapper();

        @override
        $className fromProto($prefix$className proto) => _\$${className}FromProto(proto);
  
        @override
        $prefix$className toProto($className entity) => _\$${className}ToProto(entity);
        
        $className fromJson(String json) =>
          _\$${className}FromProto($prefix$className.fromJson(json));
        String toJson($className entity) => _\$${className}ToProto(entity).writeToJson();

        String toBase64Proto($className entity) =>
          base64Encode(utf8.encode(entity.toProto().writeToJson()));

        $className fromBase64Proto(String base64Proto) =>
            $prefix$className.fromJson(utf8.decode(base64Decode(base64Proto)))
                .to$className();
      }
      
            

      $prefix$className _\$${className}ToProto($className instance) 
      {
        ${((classElement.isAbstract) && (renderParms.toKnownSubclasses ?? '').isEmpty) ? '' : 'var $toVar = $prefix$className();'}
        
        ${renderParms.toKnownSubclasses ?? ''}

        $toSuperFieldsOf

        $toReturn
      }

      $fromProto

      extension \$${className}ProtoExtension on $className {
        $prefix$className toProto() => _\$${className}ToProto(this);
        String toJson() => _\$${className}ToProto(this).writeToJson();
      
        static $className fromProto($prefix$className proto) => _\$${className}FromProto(proto);
        static $className fromJson(String json) => _\$${className}FromProto($prefix$className.fromJson(json));
      }
      
      
      extension \$$prefix${className}ProtoExtension on $prefix$className {
        $className to$className() => _\$${className}FromProto(this);
      }
     

  ''';
  }

  String renderEnumMapper(Element element) {
    final classElement = element.asInterfaceElement();
    final className = classElement.name;
    final prefix = config.prefix;
    return '''
      class \$${className}ProtoMapper implements ProtoMapper<$className, $prefix$className> {
        const \$${className}ProtoMapper();

        @override
        $className fromProto($prefix$className proto) => 
          $className.values[proto.value];
        
          
        @override
        $prefix$className toProto($className entity) => 
          $prefix$className.valueOf(entity.index)!;
      }    

      extension \$$prefix${className}ProtoExtension on $prefix$className {
  $className to$className() =>
      const \$${className}ProtoMapper().fromProto(this);
}

  ''';
  }

  // String? _generateFromKnownSubclasses(MapProtoReflected mapProtoReflected) {
  //   final kscs =
  //       getKnownSubclasses(mapProtoReflected.knownSubClasses, MapProto);
  //   if (kscs.isEmpty) return null;

  //   final ret = kscs.map((ksc) {
  //     final className = ksc.getDisplayString(withNullability: false);
  //     final camelClassName = className.camelCase;
  //     final expression = '''
  //     if (sInstance.has$className()) {
  //       return sInstance.$camelClassName.to$className();
  //     }
  //     ''';
  //     return expression;
  //   }).join('\n');
  //   return ret;
  // }
}

class RenderMapperBuffers {
  final String constructorName;
  final String toProtoFieldBuffer;
  final String fromProtoFieldBuffer;
  final String constructorFieldBuffer;
  final String? toKnownSubclasses;
  final String? fromKnownSubclasses;

  RenderMapperBuffers({
    required this.constructorName,
    required this.toProtoFieldBuffer,
    required this.fromProtoFieldBuffer,
    required this.constructorFieldBuffer,
    this.toKnownSubclasses,
    this.fromKnownSubclasses,
  });
}

String _createSuperFieldsOf(InterfaceElement classElement) {
  if (classElement is! ClassElement) return '';
  final superType = classElement.supertype;
  if (superType == null) return '';

  final tc = TypeChecker.fromRuntime(Proto);
  final annotation = tc.firstAnnotationOf(superType.element);
  if (annotation == null) return '';

  final superClassElement = superType.element.asClassElement();
  final className = superClassElement.name;

  final protoReflected = ConstantReader(annotation).hydrateAnnotation();
  final superRef =
      protoReflected.knownSubClasses.isEmpty ? '' : '.${className.snakeCase}';

  final superFieldsOf =
      '   proto.fieldsOfSuperClass = \$${className}ProtoMapper().toProto(instance)$superRef;\n';
  return superFieldsOf;
}
